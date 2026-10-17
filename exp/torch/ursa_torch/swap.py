"""The initializer: swaps PyTorch's float ops for int8 ones on URSA.

    import ursa_torch
    with ursa_torch.enabled():       # or enable() / disable()
        y = model(x)                 # an unmodified float model

For float models that were not converted with ursa_torch.nn.convert. Each
operand is quantized on the fly with distil's scheme -- weights per output
channel, activations per tensor -- but with dynamic absmax scales instead of
calibrated ones; the int32 result is dequantized to the input dtype. Converted
models (nn.convert + calibrate) are more accurate and do not need this.

enable() replaces (nn.Linear, nn.Conv2d, nn.MultiheadAttention and the
nn.Transformer layers go through them):

    torch.nn.functional.linear / conv2d / scaled_dot_product_attention
    torch.mm / torch.bmm / torch.baddbmm / torch.matmul
    Tensor.__matmul__ / Tensor.matmul

While enabled, PyTorch's fused MHA / Transformer fast paths are off, so
nn.MultiheadAttention takes the functional path (its projections are
F.linear; its products are sdpa, or bmm / baddbmm). On torch < 2.0, which
has neither torch.backends.mha nor F.scaled_dot_product_attention, the fast
paths are turned off by making torch.overrides.has_torch_function report
True while enabled (only nn.MultiheadAttention and nn.Transformer* look it
up there). Integer tensors and tensors on
other devices go to the original op. Calls URSA cannot express (grouped or
dilated convs, attention dropout, ...) run the original op with a one-time
warning, or raise UrsaUnsupportedError with strict=True.
"""

import contextlib
import warnings

import torch
import torch.nn.functional as F

from . import kernels
from .kernels import fake_quant, tensor_scale, weight_scale

_originals = {}
_fastpath = [None]
_warned = set()
_strict = [False]


class UrsaUnsupportedError(NotImplementedError):
    pass


def _ready(*tensors):
    ts = [t for t in tensors if isinstance(t, torch.Tensor)]
    return all(t.is_floating_point() and t.device.type == "cpu" for t in ts)


def _unsupported(op, reason, fallback, *args, **kwargs):
    if _strict[0]:
        raise UrsaUnsupportedError(f"ursa: {op}: {reason}")
    if (op, reason) not in _warned:
        _warned.add((op, reason))
        warnings.warn(f"ursa: {op}: {reason}; running the original PyTorch op", stacklevel=3)
    return fallback(*args, **kwargs)


def _q(t):
    s = tensor_scale(t)
    return fake_quant(t.float(), s), s


# ---- torch.nn.functional ------------------------------------------------------------------


def _linear(input, weight, bias=None):
    orig = _originals[(F, "linear")]
    if input.dim() == 0 or weight.dim() != 2 or not _ready(input, weight, bias):
        return orig(input, weight, bias)
    qx, s_x = _q(input)
    s_w = weight_scale(weight.float())
    y = kernels.int_linear(qx, fake_quant(weight.float(), s_w.view(-1, 1))) * (s_x * s_w)
    if bias is not None:
        y = y + bias.float()
    return y.to(input.dtype)


def _pair(v):
    return (v, v) if isinstance(v, int) else tuple(v)


def _conv2d(input, weight, bias=None, stride=1, padding=0, dilation=1, groups=1):
    orig = _originals[(F, "conv2d")]
    args = (input, weight, bias, stride, padding, dilation, groups)
    if weight.dim() != 4 or input.dim() not in (3, 4) or not _ready(input, weight, bias):
        return orig(*args)
    if groups != 1:
        return _unsupported("conv2d", "groups != 1", orig, *args)
    if _pair(dilation) != (1, 1):
        return _unsupported("conv2d", "dilation != 1", orig, *args)
    kh, kw = weight.shape[-2:]
    if padding == "valid":
        padding = (0, 0)
    elif padding == "same":
        if _pair(stride) != (1, 1) or kh % 2 == 0 or kw % 2 == 0:
            return _unsupported("conv2d", "asymmetric 'same' padding", orig, *args)
        padding = (kh // 2, kw // 2)
    unbatched = input.dim() == 3
    x = input.unsqueeze(0) if unbatched else input
    qx, s_x = _q(x)
    s_w = weight_scale(weight.float())
    y = kernels.int_conv2d(qx, fake_quant(weight.float(), s_w.view(-1, 1, 1, 1)), _pair(stride), _pair(padding))
    y = y * (s_x * s_w).view(1, -1, 1, 1)
    if bias is not None:
        y = y + bias.float().view(1, -1, 1, 1)
    return (y.squeeze(0) if unbatched else y).to(input.dtype)


def _sdpa(query, key, value, attn_mask=None, dropout_p=0.0, is_causal=False, scale=None, enable_gqa=False):
    orig = _originals[(F, "scaled_dot_product_attention")]
    args = (query, key, value, attn_mask, dropout_p, is_causal)
    kwargs = {"scale": scale, "enable_gqa": enable_gqa}
    if query.dim() < 2 or not _ready(query, key, value):
        return orig(*args, **kwargs)
    if dropout_p != 0.0:
        return _unsupported("scaled_dot_product_attention", "dropout", orig, *args, **kwargs)
    if enable_gqa and query.dim() > 2 and key.shape[-3] != query.shape[-3]:
        return _unsupported("scaled_dot_product_attention", "grouped-query attention", orig, *args, **kwargs)
    mask = kernels.additive_mask(attn_mask, is_causal, query.shape[-2], key.shape[-2])
    out, _ = kernels.attention(query, key, value, mask=mask, scale=scale)
    return out.to(query.dtype)


# ---- matmuls ------------------------------------------------------------------------------


def _matmul_impl(orig, a, b, **kwargs):
    if kwargs or not isinstance(b, torch.Tensor) or a.dim() < 2 or b.dim() < 2 or not _ready(a, b):
        return orig(a, b, **kwargs)
    try:
        torch.broadcast_shapes(a.shape[:-2], b.shape[:-2])
    except RuntimeError:
        return orig(a, b)  # PyTorch's own error
    qa, s_a = _q(a)
    qb, s_b = _q(b)
    return (kernels.int_matmul(qa, qb) * (s_a * s_b)).to(a.dtype)


def _matmul(input, other, **kwargs):
    return _matmul_impl(_originals[(torch, "matmul")], input, other, **kwargs)


def _mm(input, mat2, **kwargs):
    orig = _originals[(torch, "mm")]
    if input.dim() != 2 or mat2.dim() != 2:
        return orig(input, mat2, **kwargs)
    return _matmul_impl(orig, input, mat2, **kwargs)


def _bmm(input, mat2, **kwargs):
    orig = _originals[(torch, "bmm")]
    if input.dim() != 3 or mat2.dim() != 3:
        return orig(input, mat2, **kwargs)
    return _matmul_impl(orig, input, mat2, **kwargs)


def _baddbmm(input, batch1, batch2, *, beta=1, alpha=1, **kwargs):
    orig = _originals[(torch, "baddbmm")]
    if kwargs or batch1.dim() != 3 or batch2.dim() != 3 or not _ready(input, batch1, batch2):
        return orig(input, batch1, batch2, beta=beta, alpha=alpha, **kwargs)
    y = _matmul_impl(_originals[(torch, "bmm")], batch1, batch2)
    if alpha != 1:
        y = alpha * y
    if beta == 0:  # input is ignored, as in torch.baddbmm
        return y
    return y + (beta * input if beta != 1 else input)


def _tensor_matmul(self, other):
    return _matmul_impl(_originals[(torch.Tensor, "__matmul__")], self, other)


def _tensor_matmul_method(self, other):
    return _matmul_impl(_originals[(torch.Tensor, "matmul")], self, other)


def _has_torch_function(*args, **kwargs):  # torch < 2.0: see the module docstring
    return True


_PATCHES = [
    (F, "linear", _linear),
    (F, "conv2d", _conv2d),
    (F, "scaled_dot_product_attention", _sdpa),
    (torch, "mm", _mm),
    (torch, "bmm", _bmm),
    (torch, "baddbmm", _baddbmm),
    (torch, "matmul", _matmul),
    (torch.Tensor, "__matmul__", _tensor_matmul),
    (torch.Tensor, "matmul", _tensor_matmul_method),
]
_MHA_BACKEND = getattr(torch.backends, "mha", None)
if _MHA_BACKEND is None:
    _PATCHES.append((torch.overrides, "has_torch_function", _has_torch_function))
_PATCHES = [p for p in _PATCHES if hasattr(p[0], p[1])]  # F.scaled_dot_product_attention: torch >= 2.0


def is_enabled():
    return bool(_originals)


def enable(strict=False):
    """Swaps the original ops for the URSA ones (idempotent)."""
    _strict[0] = strict
    if _originals:
        return
    for owner, name, repl in _PATCHES:
        _originals[(owner, name)] = getattr(owner, name)
        setattr(owner, name, repl)
    if _MHA_BACKEND is not None:
        _fastpath[0] = _MHA_BACKEND.get_fastpath_enabled()
        _MHA_BACKEND.set_fastpath_enabled(False)


def disable():
    """Restores the original ops (idempotent)."""
    for (owner, name), orig in _originals.items():
        setattr(owner, name, orig)
    _originals.clear()
    if _fastpath[0] is not None:
        _MHA_BACKEND.set_fastpath_enabled(_fastpath[0])
        _fastpath[0] = None


@contextlib.contextmanager
def enabled(strict=False):
    was = is_enabled()
    enable(strict)
    try:
        yield
    finally:
        if not was:
            disable()
