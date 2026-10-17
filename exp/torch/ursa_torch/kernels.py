"""Int8 kernels on URSA, with the semantics of distil's qops.

Quantization is the one of ~/Documents/dac/distil/qops.py: symmetric int8 in
[-QMAX, QMAX], weights per output channel (weight_scale), activations per
tensor; the integer products accumulate exactly in int32 and are dequantized
in fp32 (y = acc * s_x * s_w + bias). Inputs are integer-valued float tensors
(fake_quant) or int8 tensors; outputs are float32.

The forward runs on URSA (torch.ops.ursa.*). The backward is distil's exact
fp32 straight-through one, so distillation / QAT can train through the
hardware. Float math here goes through torch.ops.aten so that it is never
intercepted by swap.enable().
"""

import math

import torch

from . import _C  # noqa: F401  (registers torch.ops.ursa)

QMAX = 127
P_SCALE = 1.0 / QMAX  # attention probabilities in [0, 1] -> [0, 127]

_aten = torch.ops.aten
_ursa = torch.ops.ursa


def fake_quant(x, scale):
    """Integer values in [-QMAX, QMAX] as float, with a straight-through gradient for the rounding."""
    v = (x / scale).clamp(-QMAX, QMAX)
    return v + (v.round() - v).detach()


def weight_scale(w):
    return w.detach().abs().amax(dim=tuple(range(1, w.dim()))).clamp_min(1e-12) / QMAX


def tensor_scale(x):
    """Dynamic per-tensor scale (absmax), for operands without a calibrated one."""
    return x.detach().abs().amax().float().clamp_min(1e-12) / QMAX


def to_int8(v):
    """Integer-valued float tensor (or int8 tensor) -> int8."""
    if v.dtype == torch.int8:
        return v
    return v.detach().round().clamp(-128, 127).to(torch.int8)


def _as(t, ref):
    return t.to(ref.dtype) if t.dtype != ref.dtype else t


# ---- autograd functions ----------------------------------------------------------------


class _Linear(torch.autograd.Function):
    @staticmethod
    def forward(ctx, qx, qw):
        ctx.save_for_backward(qx, qw)
        return _ursa.linear(to_int8(qx), to_int8(qw)).float()

    @staticmethod
    def backward(ctx, grad):
        qx, qw = ctx.saved_tensors
        gx = gw = None
        if ctx.needs_input_grad[0]:
            gx = _aten.matmul(grad, _as(qw, grad))
        if ctx.needs_input_grad[1]:
            g2 = grad.reshape(-1, grad.shape[-1])
            gw = _aten.mm(g2.t(), _as(qx, grad).reshape(-1, qx.shape[-1]))
        return gx, gw


class _Conv2d(torch.autograd.Function):
    @staticmethod
    def forward(ctx, qx, qw, stride, padding):
        ctx.save_for_backward(qx, qw)
        ctx.conf = stride, padding
        return _ursa.conv2d(to_int8(qx), to_int8(qw), list(stride), list(padding)).float()

    @staticmethod
    def backward(ctx, grad):
        qx, qw = ctx.saved_tensors
        stride, padding = ctx.conf
        gx = gw = None
        if ctx.needs_input_grad[0]:
            gx = torch.nn.grad.conv2d_input(qx.shape, _as(qw, grad), grad, stride, padding)
        if ctx.needs_input_grad[1]:
            gw = torch.nn.grad.conv2d_weight(_as(qx, grad), qw.shape, grad, stride, padding)
        return gx, gw, None, None


class _Bmm(torch.autograd.Function):
    @staticmethod
    def forward(ctx, qa, qb):
        ctx.save_for_backward(qa, qb)
        return _ursa.bmm(to_int8(qa), to_int8(qb)).float()

    @staticmethod
    def backward(ctx, grad):
        qa, qb = ctx.saved_tensors
        ga = gb = None
        if ctx.needs_input_grad[0]:
            ga = _aten.bmm(grad, _as(qb, grad).transpose(1, 2))
        if ctx.needs_input_grad[1]:
            gb = _aten.bmm(_as(qa, grad).transpose(1, 2), grad)
        return ga, gb


# ---- integer kernels (integer-valued inputs, exact float32 products out) ---------------


def _pair(v):
    return (int(v), int(v)) if isinstance(v, int) else tuple(int(e) for e in v)


def int_linear(qx, qw):
    """qx [*, K] @ qw [O, K]^T (nn.Linear without bias)."""
    return _Linear.apply(qx, qw)


def int_conv2d(qx, qw, stride, padding):
    """F.conv2d(qx, qw, None, stride, padding), groups = dilation = 1."""
    return _Conv2d.apply(qx, qw, _pair(stride), _pair(padding))


def int_bmm(qa, qb):
    """qa [B, P, K] @ qb [B, K, Q]."""
    return _Bmm.apply(qa, qb)


def int_matmul(qa, qb):
    """torch.matmul of two integer-valued tensors of at least 2 dims (batch dims broadcast)."""
    if qa.dim() < 2 or qb.dim() < 2:
        raise ValueError("ursa: int_matmul needs operands of at least 2 dims")
    if qb.dim() == 2:  # [..., P, K] @ [K, Q]: one GEMM over the stacked rows
        y = int_bmm(qa.reshape(1, -1, qa.shape[-1]), qb.unsqueeze(0))
        return y.reshape(*qa.shape[:-1], qb.shape[-1])
    batch = torch.broadcast_shapes(qa.shape[:-2], qb.shape[:-2])
    a3 = qa.expand(*batch, *qa.shape[-2:]).reshape(-1, *qa.shape[-2:])
    b3 = qb.expand(*batch, *qb.shape[-2:]).reshape(-1, *qb.shape[-2:])
    return int_bmm(a3, b3).reshape(*batch, qa.shape[-2], qb.shape[-1])


def int_mm(x, w):
    """distil's qops.emulated_matmul: x (M, K) @ w (O, K)^T for integer-valued tensors, float32 out."""
    return _ursa.linear(to_int8(x), to_int8(w)).float()


# ---- attention -------------------------------------------------------------------------


def additive_mask(attn_mask, is_causal, L, S, dtype=torch.float32):
    """sdpa's attn_mask / is_causal as an additive float mask (None when there is none).
    A boolean mask follows sdpa: True = take part in attention."""
    mask = None
    if is_causal:
        keep = torch.ones(L, S, dtype=torch.bool).tril()
        mask = torch.zeros(L, S, dtype=dtype).masked_fill(~keep, float("-inf"))
    if attn_mask is not None:
        m = (torch.zeros(attn_mask.shape, dtype=dtype).masked_fill(~attn_mask, float("-inf"))
             if attn_mask.dtype == torch.bool else attn_mask.to(dtype))
        mask = m if mask is None else mask + m
    return mask


def attention(q, k, v, q_scale=None, k_scale=None, v_scale=None, mask=None, scale=None):
    """softmax(q k^T * scale + mask) v for q [..., L, E], k [..., S, E], v [..., S, Ev].

    q, k and v are quantized per tensor with the given scales (dynamic absmax
    ones when None), and the probabilities with the fixed scale 1/127: they
    are >= 0, so they take URSA's B side with zero point 0. Both products run
    on URSA; the mask and the softmax run in fp32 on the CPU. mask is additive.
    Returns (output, probabilities)."""
    q, k, v = q.float(), k.float(), v.float()
    q_scale = tensor_scale(q) if q_scale is None else q_scale
    k_scale = tensor_scale(k) if k_scale is None else k_scale
    v_scale = tensor_scale(v) if v_scale is None else v_scale
    scale = 1.0 / math.sqrt(q.shape[-1]) if scale is None else scale
    logits = int_matmul(fake_quant(q, q_scale), fake_quant(k, k_scale).transpose(-2, -1))
    logits = logits * (q_scale * k_scale * scale)
    if mask is not None:
        logits = logits + mask
    p = torch.softmax(logits, dim=-1)
    out = int_matmul(fake_quant(p, P_SCALE), fake_quant(v, v_scale)) * (P_SCALE * v_scale)
    return out, p


def float_attention(q, k, v, mask=None, scale=None):
    """The fp32 reference of attention() (calibration runs it)."""
    scale = 1.0 / math.sqrt(q.shape[-1]) if scale is None else scale
    logits = _aten.matmul(q, k.transpose(-2, -1)) * scale
    if mask is not None:
        logits = logits + mask
    p = torch.softmax(logits, dim=-1)
    return _aten.matmul(p, v), p
