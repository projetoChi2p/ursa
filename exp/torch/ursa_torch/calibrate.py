"""Activation-scale calibration (distil's quantize.calibrate, extended to every quantized tensor).

Each scale is the mean over a few batches of the given percentile of |x|,
divided by QMAX. The model runs in fp32 while calibrating (no URSA calls).
"""

import torch

from .kernels import QMAX
from .nn import _SCALES, QUANTIZED


def _quantile(x, percentile):
    v = x.detach().abs().flatten().float()
    if v.numel() > 1 << 24:  # torch.quantile's limit
        v = v[torch.randint(v.numel(), (1 << 24,), device=v.device)]
    return torch.quantile(v, percentile / 100).item()


@torch.no_grad()
def calibrate(model, batches, n_batches=20, percentile=99.99):
    """Sets act_scale (and q/k/v, a/b scales) of every URSA module of model.

    batches: an iterable of inputs, or of (input, ...) tuples such as a DataLoader."""
    layers = [m for m in model.modules() if isinstance(m, QUANTIZED)]
    stats = {}

    def observer(m):
        def observe(name, x):
            stats.setdefault((m, name), []).append(_quantile(x, percentile))
        return observe

    for m in layers:
        m.observer = observer(m)
    was_training = model.training
    model.eval()
    try:
        seen = 0
        for batch in batches:
            if seen == n_batches:
                break
            x = batch[0] if isinstance(batch, (tuple, list)) else batch
            model(x)
            seen += 1
    finally:
        for m in layers:
            m.observer = None
        model.train(was_training)
    for m in layers:
        for name in _SCALES[type(m)]:
            v = stats.get((m, name))
            if v:  # a module the batches never reached keeps its scale
                getattr(m, name).fill_(max(sum(v) / len(v), 1e-8) / QMAX)
    return model
