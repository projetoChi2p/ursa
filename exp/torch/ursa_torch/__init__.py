"""PyTorch int8 backend for the URSA v3 systolic array (libmxm).

    import ursa_torch

    model = ursa_torch.nn.convert(float_model)   # Conv2d/Linear/MultiheadAttention -> URSA modules
    ursa_torch.calibrate(model, train_loader)    # per-tensor activation scales
    ursa_torch.nn.freeze(model)                  # cache the int8 weights
    with torch.no_grad():
        y = model(x)

    with ursa_torch.enabled():                   # or: swap the ops of an unconverted float model
        y = float_model(x)

    from ursa_torch import distil; distil.install()   # run distil's qops layers on URSA

Layers:
  * csrc/          C++ operators torch.ops.ursa.* over libmxm (exact int8 x int8 -> int32:
                   B-side zero point and 20-bit accumulator guard)
  * _meta.py       fake/meta implementations (shapes, dtype checks)
  * kernels.py     distil's quantization (fake_quant, weight_scale) and the URSA kernels with
                   straight-through backward; attention
  * nn.py          QConv2d / QLinear / QMatmul / QMultiheadAttention, convert(), freeze()
  * calibrate.py   activation-scale calibration
  * swap.py        enable()/disable(): swap torch ops for URSA ones, dynamic quantization
  * distil.py      install()/uninstall(): patch distil's qops

The accelerator is opened on first use with the bitstream already loaded
(URSA_BITSTREAM / URSA_CLK_MHZ load / set one instead). The array size is the
one of the libmxm.so.1 found at run time (see info()).
"""

import torch  # noqa: F401  (first: _C resolves libc10 / libtorch from the loaded torch)

from . import _C
from . import _meta  # noqa: F401  (registers fake implementations)
from . import kernels, nn
from .calibrate import calibrate
from .kernels import QMAX, fake_quant, weight_scale
from .nn import QConv2d, QLinear, QMatmul, QMultiheadAttention, convert, freeze, unfreeze
from .swap import UrsaUnsupportedError, disable, enable, enabled, is_enabled

ACC_BITS = _C.ACC_BITS


def info():
    """The libmxm the extension runs on."""
    return {"backend": _C.backend(), "sa_size": _C.sa_size(), "acc_bits": _C.ACC_BITS}


def open():  # noqa: A001  (mirrors mxm_init)
    """Opens the accelerator now (it is otherwise opened on first use)."""
    _C.open()


def close():
    """Releases the accelerator (mxm_destroy)."""
    _C.close()


def is_open():
    return _C.is_open()


__all__ = [
    "ACC_BITS", "QMAX", "QConv2d", "QLinear", "QMatmul", "QMultiheadAttention", "UrsaUnsupportedError",
    "calibrate", "close", "convert", "disable", "enable", "enabled", "fake_quant", "freeze", "info",
    "is_enabled", "is_open", "kernels", "nn", "open", "unfreeze", "weight_scale",
]
