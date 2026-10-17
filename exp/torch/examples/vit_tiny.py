"""A tiny ViT (conv patch embedding + nn.TransformerEncoder) on URSA, two ways.

    sudo -E python examples/vit_tiny.py [--weights vit.pt]

1. convert + calibrate: the patch-embedding conv, every Linear and both
   attention products run as calibrated int8 layers (QConv2d, QLinear,
   QMultiheadAttention). LayerNorm, GELU and softmax stay in fp32 on the CPU.
2. swap: the unmodified float model under ursa_torch.enabled(), quantized on
   the fly (dynamic per-tensor scales).

Both are compared with the fp32 model. Random weights unless --weights gives a
state dict of this architecture.
"""

import argparse
import copy
import time

import torch
from torch import nn

import ursa_torch


class TinyViT(nn.Module):
    def __init__(self, image=32, patch=4, dim=64, depth=4, heads=4, mlp=128, classes=10):
        super().__init__()
        self.embed = nn.Conv2d(3, dim, patch, stride=patch, padding=0)
        self.cls = nn.Parameter(torch.zeros(1, 1, dim))
        self.pos = nn.Parameter(0.02 * torch.randn(1, (image // patch) ** 2 + 1, dim))
        layer = nn.TransformerEncoderLayer(dim, heads, mlp, dropout=0.0, activation="gelu",
                                           batch_first=True, norm_first=True)
        self.encoder = nn.TransformerEncoder(layer, depth, enable_nested_tensor=False)
        self.norm = nn.LayerNorm(dim)
        self.head = nn.Linear(dim, classes)

    def forward(self, x):
        t = self.embed(x).flatten(2).transpose(1, 2)
        t = torch.cat([self.cls.expand(len(t), -1, -1), t], 1) + self.pos
        return self.head(self.norm(self.encoder(t))[:, 0])


def timed(fn, x):
    t0 = time.perf_counter()
    with torch.no_grad():
        y = fn(x)
    return y, time.perf_counter() - t0


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--weights")
    parser.add_argument("--batch", type=int, default=8)
    args = parser.parse_args()

    torch.manual_seed(0)
    model = TinyViT().eval()
    if args.weights:
        model.load_state_dict(torch.load(args.weights, map_location="cpu"))
    calib = [torch.randn(args.batch, 3, 32, 32) for _ in range(8)]
    x = torch.randn(args.batch, 3, 32, 32)

    print(ursa_torch.info()["backend"])
    ref, t_ref = timed(model, x)

    qmodel = ursa_torch.convert(copy.deepcopy(model))
    ursa_torch.calibrate(qmodel, calib)
    ursa_torch.freeze(qmodel)
    out, t_q = timed(qmodel, x)

    with ursa_torch.enabled():
        dyn, t_dyn = timed(model, x)

    def report(name, y, t):
        rel = ((y - ref).norm() / ref.norm()).item()
        agree = (y.argmax(1) == ref.argmax(1)).float().mean().item()
        print(f"{name:<22} rel. error {rel:.4f}  argmax agreement {agree:.3f}  {t * 1e3:8.1f} ms")

    print(f"{'fp32 (CPU)':<22} {'':>34}  {t_ref * 1e3:8.1f} ms")
    report("convert + calibrate", out, t_q)
    report("swap (dynamic)", dyn, t_dyn)


if __name__ == "__main__":
    main()
