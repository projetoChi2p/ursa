"""Runs the distil pipeline's int8 layers (~/Documents/dac/distil/qops.py) on URSA.

    from ursa_torch import distil
    distil.install()                 # imports qops from $DISTIL_HOME (default ~/Documents/dac/distil)
    model = models.load(cfg, path)   # distil's own code, unchanged
    model(x)                         # QConv2d / QLinear multiply on URSA

install() replaces qops.int_conv2d, qops.int_linear and qops.emulated_matmul,
whatever approx mode is selected. URSA's products are exact (int32), so a
model gives the outputs of distil's accurate mode (up to fp32 summation
order); the backward stays distil's straight-through one.

Alternatively, ursa_torch.nn.convert(model) turns qops modules into
ursa_torch modules with the same state, without patching distil.
"""

import contextlib
import importlib
import os
import sys

from . import kernels

DEFAULT_HOME = os.path.expanduser("~/Documents/dac/distil")
_saved = {}


def import_qops():
    """distil's qops module (from DISTIL_HOME, imported once)."""
    if "qops" in sys.modules:
        return sys.modules["qops"]
    home = os.environ.get("DISTIL_HOME", DEFAULT_HOME)
    if not os.path.isfile(os.path.join(home, "qops.py")):
        raise ImportError(f"ursa_torch.distil: qops.py not found in {home} (set DISTIL_HOME)")
    if home not in sys.path:
        sys.path.insert(0, home)
    return importlib.import_module("qops")


def _int_conv2d(qx, qw, stride, padding):
    return kernels.int_conv2d(qx, qw, stride, padding)


def _int_linear(qx, qw):
    return kernels.int_linear(qx, qw)


_PATCHES = {"int_conv2d": _int_conv2d, "int_linear": _int_linear, "emulated_matmul": kernels.int_mm}


def install(qops=None):
    """Routes qops' integer products to URSA (idempotent). Returns the qops module."""
    qops = qops or import_qops()
    if id(qops) not in _saved:
        _saved[id(qops)] = (qops, {name: getattr(qops, name) for name in _PATCHES})
        for name, fn in _PATCHES.items():
            setattr(qops, name, fn)
    return qops


def uninstall(qops=None):
    """Restores qops (every patched module when qops is None)."""
    keys = [id(qops)] if qops is not None else list(_saved)
    for key in keys:
        if key in _saved:
            module, originals = _saved.pop(key)
            for name, fn in originals.items():
                setattr(module, name, fn)


def is_installed(qops=None):
    return id(qops or import_qops()) in _saved


@contextlib.contextmanager
def installed(qops=None):
    qops = qops or import_qops()
    was = is_installed(qops)
    install(qops)
    try:
        yield qops
    finally:
        if not was:
            uninstall(qops)
