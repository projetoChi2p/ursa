"""Fake (meta) implementations of the ursa:: operators.

They give PyTorch the output shapes and dtypes without touching the
accelerator (FakeTensor, torch.compile, torch.export) and enforce the same
int8 policy as the C++ kernels, so a float network fails while tracing too.
They need torch >= 2.1 (impl_abstract / register_fake); older versions (e.g.
the 1.13 armv7 wheel) skip the registration, which eager execution does not use.
"""

import torch

_lib = "ursa::"
_register_fake = getattr(torch.library, "register_fake", None) or getattr(torch.library, "impl_abstract", None)
REGISTERED = _register_fake is not None


def _check(cond, msg):
    if hasattr(torch, "_check"):
        torch._check(cond, msg)
    elif not cond:
        raise RuntimeError(msg())


def _check_int8(t, op, name):
    _check(
        t.dtype == torch.int8,
        lambda: f"ursa::{op}: URSA multiplies int8 operands; {name} is {t.dtype}. "
        "Quantize the network first (ursa_torch.nn.convert + calibrate).",
    )


def _register(name):
    if _register_fake is None:
        return lambda fn: fn
    return _register_fake(_lib + name)


@_register("mm")
def _(a, b):
    _check_int8(a, "mm", "a")
    _check_int8(b, "mm", "b")
    _check(a.dim() == 2 and b.dim() == 2, lambda: "ursa::mm: a and b must be 2-D")
    _check(a.shape[1] == b.shape[0], lambda: "ursa::mm: inner dimensions differ")
    return a.new_empty((a.shape[0], b.shape[1]), dtype=torch.int32)


@_register("bmm")
def _(a, b):
    _check_int8(a, "bmm", "a")
    _check_int8(b, "bmm", "b")
    _check(a.dim() == 3 and b.dim() == 3, lambda: "ursa::bmm: a and b must be 3-D")
    _check(a.shape[0] == b.shape[0], lambda: "ursa::bmm: batch sizes differ")
    _check(a.shape[2] == b.shape[1], lambda: "ursa::bmm: inner dimensions differ")
    return a.new_empty((a.shape[0], a.shape[1], b.shape[2]), dtype=torch.int32)


@_register("linear")
def _(input, weight):
    _check_int8(input, "linear", "input")
    _check_int8(weight, "linear", "weight")
    _check(input.dim() >= 1 and weight.dim() == 2, lambda: "ursa::linear: weight must be 2-D")
    _check(input.shape[-1] == weight.shape[1], lambda: "ursa::linear: feature sizes differ")
    return input.new_empty((*input.shape[:-1], weight.shape[0]), dtype=torch.int32)


@_register("conv2d")
def _(input, weight, stride=(1, 1), padding=(0, 0)):
    _check_int8(input, "conv2d", "input")
    _check_int8(weight, "conv2d", "weight")
    _check(input.dim() == 4 and weight.dim() == 4, lambda: "ursa::conv2d: input and weight must be 4-D")
    _check(input.shape[1] == weight.shape[1], lambda: "ursa::conv2d: channel counts differ (groups != 1)")
    n, _, h, w = input.shape
    o, _, kh, kw = weight.shape
    oh = (h + 2 * padding[0] - kh) // stride[0] + 1
    ow = (w + 2 * padding[1] - kw) // stride[1] + 1
    return input.new_empty((n, o, oh, ow), dtype=torch.int32)


@_register("mm_raw")
def _(a, b):
    _check_int8(a, "mm_raw", "a")
    _check(b.dtype == torch.uint8, lambda: "ursa::mm_raw: b must be uint8")
    _check(a.dim() == 2 and b.dim() == 2 and a.shape[1] == b.shape[0],
           lambda: "ursa::mm_raw: a [P, K] and b [K, Q] expected")
    return a.new_empty((a.shape[0], b.shape[1]), dtype=torch.int32)
