"""MLP: train in fp32 on the CPU, quantize, run on URSA.

    sudo -E python examples/mlp.py

Self-contained (synthetic data, no dataset download): a 3-layer MLP learns a
10-class problem in fp32, is converted to ursa_torch modules, calibrated on
training batches and evaluated on URSA next to the fp32 model.
"""

import copy
import time

import torch
from torch import nn

import ursa_torch


def make_data(n, generator, centers):
    labels = torch.randint(0, len(centers), (n,), generator=generator)
    x = centers[labels] + 0.9 * torch.randn(n, centers.shape[1], generator=generator)
    return torch.tanh(x), labels


def main():
    g = torch.Generator().manual_seed(0)
    centers = torch.randn(10, 64, generator=g)
    x_train, y_train = make_data(8000, g, centers)
    x_test, y_test = make_data(2000, g, centers)

    model = nn.Sequential(nn.Linear(64, 256), nn.ReLU(), nn.Linear(256, 128), nn.ReLU(), nn.Linear(128, 10))
    opt = torch.optim.Adam(model.parameters(), 1e-3)
    for epoch in range(10):
        for i in range(0, len(x_train), 128):
            loss = nn.functional.cross_entropy(model(x_train[i:i + 128]), y_train[i:i + 128])
            opt.zero_grad()
            loss.backward()
            opt.step()
    model.eval()

    qmodel = ursa_torch.convert(copy.deepcopy(model))
    ursa_torch.calibrate(qmodel, (x_train[i:i + 256] for i in range(0, 256 * 10, 256)))
    ursa_torch.freeze(qmodel)

    print(ursa_torch.info()["backend"])
    print(qmodel)
    with torch.no_grad():
        ref = model(x_test)
        t0 = time.perf_counter()
        out = qmodel(x_test)
        dt = time.perf_counter() - t0
    print(f"fp32 top-1 {(ref.argmax(1) == y_test).float().mean():.4f}")
    print(f"URSA top-1 {(out.argmax(1) == y_test).float().mean():.4f}  ({len(x_test) / dt:.0f} samples/s)")
    print(f"agreement {(out.argmax(1) == ref.argmax(1)).float().mean():.4f}, "
          f"logit rel. error {((out - ref).norm() / ref.norm()):.4f}")


if __name__ == "__main__":
    main()
