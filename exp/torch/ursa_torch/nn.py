"""Int8 modules on URSA, interchangeable with distil's qops modules.

QConv2d / QLinear have the parameters, buffers and forward formula of
distil's (weight, bias in fp32, act_scale buffer), so a distil int8
checkpoint loads into them as is. QMatmul and QMultiheadAttention extend the
same scheme to activation x activation products, for attention.

    model = ursa_torch.nn.convert(float_model)          # or a distil int8 model
    ursa_torch.calibrate(model, train_batches)          # skip for a distil checkpoint
    ursa_torch.nn.freeze(model)                         # inference: int8 weights cached
    with torch.no_grad():
        y = model(x)

While a module's `observer` is set (calibration), it runs in fp32 and
reports each tensor it would quantize as observer(buffer_name, tensor).
"""

import torch
from torch import nn

from . import kernels
from .kernels import QMAX, fake_quant, to_int8, weight_scale

_aten = torch.ops.aten


class _QWeight(nn.Module):
    """Per-output-channel weight quantization, cached by freeze()."""

    def _qweight(self):
        if self._frozen is not None:
            return self._frozen
        s_w = weight_scale(self.weight)
        return fake_quant(self.weight, s_w.view(-1, *([1] * (self.weight.dim() - 1)))), s_w

    def freeze(self):
        with torch.no_grad():
            self._frozen = None
            qw, s_w = self._qweight()
            self._frozen = to_int8(qw), s_w.clone()

    def unfreeze(self):
        self._frozen = None

    def _load_from_state_dict(self, *args, **kwargs):
        self._frozen = None  # new weights: a cached quantization would be stale
        super()._load_from_state_dict(*args, **kwargs)


class QConv2d(_QWeight):
    def __init__(self, c_in, c_out, kernel_size, stride, padding):
        super().__init__()
        kernel_size, stride, padding = (kernels._pair(v) for v in (kernel_size, stride, padding))
        self.weight = nn.Parameter(torch.empty(c_out, c_in, *kernel_size))
        self.bias = nn.Parameter(torch.zeros(c_out))
        self.register_buffer("act_scale", torch.ones(()))
        self.stride, self.padding = stride, padding
        self.observer = None
        self._frozen = None

    @classmethod
    def from_float(cls, conv, bn=None):
        if conv.groups != 1 or tuple(conv.dilation) != (1, 1) or not isinstance(conv.padding, tuple) \
                or conv.padding_mode != "zeros":
            raise ValueError(f"ursa: {conv}: only groups=1, dilation=1, explicit zero padding are supported")
        q = cls(conv.in_channels, conv.out_channels, conv.kernel_size, conv.stride, conv.padding)
        w = conv.weight.detach().clone()
        b = conv.bias.detach().clone() if conv.bias is not None else torch.zeros(conv.out_channels)
        if bn is not None:  # fold: bn(conv(x)) = conv'(x) with w' = w * g / s, b' = beta + (b - mean) * g / s
            k = bn.weight.detach() / torch.sqrt(bn.running_var + bn.eps)
            w = w * k.view(-1, 1, 1, 1)
            b = bn.bias.detach() + (b - bn.running_mean) * k
        q.weight.data.copy_(w)
        q.bias.data.copy_(b)
        return q

    @classmethod
    def from_qops(cls, m):
        """distil's qops.QConv2d -> QConv2d (same state)."""
        o, c, kh, kw = m.weight.shape
        q = cls(c, o, (kh, kw), m.stride, m.padding)
        q.load_state_dict(m.state_dict())
        return q

    def forward(self, x):
        if self.observer is not None:
            self.observer("act_scale", x)
            return _aten.conv2d(x, self.weight, self.bias, self.stride, self.padding)
        qw, s_w = self._qweight()
        y = kernels.int_conv2d(fake_quant(x, self.act_scale), qw, self.stride, self.padding)
        return y * (self.act_scale * s_w).view(1, -1, 1, 1) + self.bias.view(1, -1, 1, 1)

    def extra_repr(self):
        o, c, kh, kw = self.weight.shape
        return f"{c}, {o}, kernel_size=({kh}, {kw}), stride={self.stride}, padding={self.padding}"


class QLinear(_QWeight):
    def __init__(self, f_in, f_out):
        super().__init__()
        self.weight = nn.Parameter(torch.empty(f_out, f_in))
        self.bias = nn.Parameter(torch.zeros(f_out))
        self.register_buffer("act_scale", torch.ones(()))
        self.observer = None
        self._frozen = None

    @classmethod
    def from_float(cls, linear):
        q = cls(linear.in_features, linear.out_features)
        q.weight.data.copy_(linear.weight.detach())
        if linear.bias is not None:
            q.bias.data.copy_(linear.bias.detach())
        return q

    @classmethod
    def from_qops(cls, m):
        """distil's qops.QLinear -> QLinear (same state)."""
        q = cls(m.weight.shape[1], m.weight.shape[0])
        q.load_state_dict(m.state_dict())
        return q

    @classmethod
    def from_weights(cls, weight, bias=None):
        q = cls(weight.shape[1], weight.shape[0])
        q.weight.data.copy_(weight.detach())
        if bias is not None:
            q.bias.data.copy_(bias.detach())
        return q

    def forward(self, x):
        if self.observer is not None:
            self.observer("act_scale", x)
            return _aten.linear(x, self.weight, self.bias)
        qw, s_w = self._qweight()
        y = kernels.int_linear(fake_quant(x, self.act_scale), qw)
        return y * (self.act_scale * s_w) + self.bias

    def extra_repr(self):
        return f"in_features={self.weight.shape[1]}, out_features={self.weight.shape[0]}"


class QMatmul(nn.Module):
    """a @ b (torch.matmul) of two activations, each quantized per tensor."""

    def __init__(self):
        super().__init__()
        self.register_buffer("a_scale", torch.ones(()))
        self.register_buffer("b_scale", torch.ones(()))
        self.observer = None

    def forward(self, a, b):
        if self.observer is not None:
            self.observer("a_scale", a)
            self.observer("b_scale", b)
            return _aten.matmul(a, b)
        y = kernels.int_matmul(fake_quant(a, self.a_scale), fake_quant(b, self.b_scale))
        return y * (self.a_scale * self.b_scale)


def _float_mask(mask):
    """nn.MultiheadAttention mask -> additive float mask (boolean True = do NOT attend)."""
    if mask.dtype == torch.bool:
        return torch.zeros(mask.shape, dtype=torch.float32).masked_fill(mask, float("-inf"))
    return mask.float()


class QMultiheadAttention(nn.Module):
    """nn.MultiheadAttention (inference) with the projections and both
    attention products on URSA. q, k and v are quantized with calibrated
    per-tensor scales, the softmax probabilities with 1/127; the mask and the
    softmax run in fp32 on the CPU.

    The fused fast path of nn.TransformerEncoderLayer is never taken
    (_qkv_same_embed_dim is False), so encoder layers call this module."""

    _qkv_same_embed_dim = False  # keeps nn.Transformer* off their fused fast path
    in_proj_bias = None

    def __init__(self, embed_dim, num_heads, kdim=None, vdim=None, batch_first=False):
        super().__init__()
        if embed_dim % num_heads:
            raise ValueError("embed_dim must be divisible by num_heads")
        self.embed_dim, self.num_heads = embed_dim, num_heads
        self.head_dim = embed_dim // num_heads
        self.batch_first = batch_first
        self.q_proj = QLinear(embed_dim, embed_dim)
        self.k_proj = QLinear(kdim or embed_dim, embed_dim)
        self.v_proj = QLinear(vdim or embed_dim, embed_dim)
        self.out_proj = QLinear(embed_dim, embed_dim)
        self.register_buffer("q_scale", torch.ones(()))
        self.register_buffer("k_scale", torch.ones(()))
        self.register_buffer("v_scale", torch.ones(()))
        self.observer = None

    @classmethod
    def from_float(cls, mha):
        if mha.bias_k is not None or mha.bias_v is not None or mha.add_zero_attn:
            raise ValueError("ursa: MultiheadAttention with bias_k / bias_v / add_zero_attn is not supported")
        E = mha.embed_dim
        q = cls(E, mha.num_heads, mha.kdim, mha.vdim, mha.batch_first)
        if mha._qkv_same_embed_dim:
            ws = mha.in_proj_weight.detach().chunk(3)
        else:
            ws = (mha.q_proj_weight.detach(), mha.k_proj_weight.detach(), mha.v_proj_weight.detach())
        bs = mha.in_proj_bias.detach().chunk(3) if mha.in_proj_bias is not None else (None,) * 3
        for proj, w, b in zip((q.q_proj, q.k_proj, q.v_proj), ws, bs):
            proj.weight.data.copy_(w)
            if b is not None:
                proj.bias.data.copy_(b)
        q.out_proj.weight.data.copy_(mha.out_proj.weight.detach())
        if mha.out_proj.bias is not None:
            q.out_proj.bias.data.copy_(mha.out_proj.bias.detach())
        return q

    def _heads(self, t):  # [N, L, E] -> [N, H, L, d]
        n, l, _ = t.shape
        return t.view(n, l, self.num_heads, self.head_dim).transpose(1, 2)

    def forward(self, query, key, value, key_padding_mask=None, need_weights=True, attn_mask=None,
                average_attn_weights=True, is_causal=False):
        unbatched = query.dim() == 2
        if unbatched:
            query, key, value = query.unsqueeze(1), key.unsqueeze(1), value.unsqueeze(1)
            if key_padding_mask is not None:
                key_padding_mask = key_padding_mask.unsqueeze(0)
        if not self.batch_first or unbatched:  # [L, N, E] -> [N, L, E]
            query, key, value = query.transpose(0, 1), key.transpose(0, 1), value.transpose(0, 1)
        n, L, _ = query.shape
        S = key.shape[1]

        # nn.MultiheadAttention masks: boolean True = do NOT attend; float = additive.
        mask = None
        if attn_mask is not None:
            mask = _float_mask(attn_mask)
            mask = mask.view(n, self.num_heads, L, S) if mask.dim() == 3 else mask
        elif is_causal:
            mask = kernels.additive_mask(None, True, L, S)
        if key_padding_mask is not None:
            kpm = _float_mask(key_padding_mask).view(n, 1, 1, S)
            mask = kpm if mask is None else mask + kpm

        q = self._heads(self.q_proj(query))
        k = self._heads(self.k_proj(key))
        v = self._heads(self.v_proj(value))
        if self.observer is not None:
            for name, t in (("q_scale", q), ("k_scale", k), ("v_scale", v)):
                self.observer(name, t)
            out, p = kernels.float_attention(q, k, v, mask)
        else:
            out, p = kernels.attention(q, k, v, self.q_scale, self.k_scale, self.v_scale, mask)
        out = self.out_proj(out.transpose(1, 2).reshape(n, L, self.embed_dim))

        if not self.batch_first or unbatched:
            out = out.transpose(0, 1)
        if unbatched:
            out = out.squeeze(1)
        weights = None
        if need_weights:
            weights = p.mean(dim=1) if average_attn_weights else p
            if unbatched:
                weights = weights.squeeze(0)
        return out, weights

    def extra_repr(self):
        return f"embed_dim={self.embed_dim}, num_heads={self.num_heads}, batch_first={self.batch_first}"


QUANTIZED = (QConv2d, QLinear, QMatmul, QMultiheadAttention)
_SCALES = {QConv2d: ("act_scale",), QLinear: ("act_scale",), QMatmul: ("a_scale", "b_scale"),
           QMultiheadAttention: ("q_scale", "k_scale", "v_scale")}


def _is_qops(m, name):
    """A distil qops module (duck-typed: distil is not imported here)."""
    return type(m).__name__ == name and not isinstance(m, QUANTIZED) and hasattr(m, "act_scale")


def convert(m):
    """Float model (or distil int8 model) -> URSA modules, recursively:
    Conv2d (+ the BatchNorm2d right after it in a Sequential) -> QConv2d,
    Linear -> QLinear, MultiheadAttention -> QMultiheadAttention, and distil's
    qops.QConv2d / QLinear -> QConv2d / QLinear with their state. Everything
    else (ReLU, pooling, LayerNorm, GELU, softmax, residual adds) stays in fp32
    on the CPU."""
    if isinstance(m, QUANTIZED):
        return m
    if _is_qops(m, "QConv2d"):
        return QConv2d.from_qops(m)
    if _is_qops(m, "QLinear"):
        return QLinear.from_qops(m)
    if isinstance(m, nn.Sequential):
        layers, out, i = list(m), [], 0
        while i < len(layers):
            if isinstance(layers[i], nn.Conv2d) and i + 1 < len(layers) and isinstance(layers[i + 1], nn.BatchNorm2d):
                out.append(QConv2d.from_float(layers[i], layers[i + 1]))
                i += 2
            else:
                out.append(convert(layers[i]))
                i += 1
        return nn.Sequential(*out)
    if isinstance(m, nn.MultiheadAttention):
        return QMultiheadAttention.from_float(m)
    if isinstance(m, nn.Conv2d):
        return QConv2d.from_float(m)
    if isinstance(m, nn.Linear):
        return QLinear.from_float(m)
    if isinstance(m, nn.modules.batchnorm._BatchNorm):
        raise ValueError("BatchNorm that does not follow a conv cannot be folded")
    if isinstance(m, nn.TransformerEncoder):
        m.use_nested_tensor = False  # the nested-tensor path bypasses the layers' modules
    for name, child in list(m.named_children()):
        setattr(m, name, convert(child))
    return m


def freeze(model):
    """Inference: quantize every weight once (int8 + scales cached). Returns the model, in eval mode."""
    for m in model.modules():
        if isinstance(m, _QWeight):
            m.freeze()
    return model.eval()


def unfreeze(model):
    for m in model.modules():
        if isinstance(m, _QWeight):
            m.unfreeze()
    return model
