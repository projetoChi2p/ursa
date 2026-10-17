"""ResNet-18 (CIFAR variant) on URSA, checked bit for bit against a CPU run.

    sudo -E python3 examples/resnet18.py                                    # random weights, random images
    sudo -E python3 examples/resnet18.py --checkpoint distilled.pt --data cifar100 --data-dir DIR
    sudo -E python3 examples/resnet18.py --float-checkpoint teacher.pt --data cifar100 --data-dir DIR

The network is distil's resnet18 (~/Documents/dac/distil/models.py): 3x3 stride-1
stem without max pool, BasicBlocks with each BatchNorm right after its conv,
average-pool head; 21 convolutions + 1 linear layer. The definition is copied
here, with the same module names, so that distil's checkpoints load without
distil (or torchvision) on the board:

  --checkpoint PATH        a distil int8 state dict (<run_dir>/int8/teacher_int8.pt,
                           or a distilled.pt): loaded as is (weights, biases, act_scale)
  --float-checkpoint PATH  a distil fp32 state dict (<run_dir>/teacher.pt): BatchNorm is
                           folded, then the activation scales are calibrated on --calib
                           batches of the training split (or random images)
  neither                  random weights and BatchNorm statistics, calibrated on random images

--data cifar10 / cifar100 reads the "python version" of the dataset
(cifar-10-batches-py / cifar-100-python under --data-dir, as torchvision
downloads it); without --data, random images are used.

Every batch also runs on the CPU with exact int64 products: URSA's outputs must
be identical (the products are exact on both; only the fp32 epilogue is shared).
--layers prints each layer's GEMM (P x K x Q per image), the largest value its
input sends to URSA's unsigned side, and how many URSA calls the 20-bit
accumulator guard splits its reduction into (per GEMM, for the first test batch).
"""

import argparse
import contextlib
import os
import pickle
import time

import torch
from torch import nn

import ursa_torch
from ursa_torch import kernels

CIFAR = {
    "cifar10": ("cifar-10-batches-py", (0.4914, 0.4822, 0.4465), (0.2470, 0.2435, 0.2616), 10),
    "cifar100": ("cifar-100-python", (0.5071, 0.4865, 0.4409), (0.2673, 0.2564, 0.2762), 100),
}


# ---- the network (distil's models.resnet18) --------------------------------------------------


class StagedModel(nn.Module):
    def __init__(self, stages):
        super().__init__()
        self.stages = nn.ModuleDict(stages)

    def forward(self, x):
        for stage in self.stages.values():
            x = stage(x)
        return x


def conv_bn(c_in, c_out):
    return nn.Sequential(nn.Conv2d(c_in, c_out, 3, padding=1, bias=False), nn.BatchNorm2d(c_out), nn.ReLU())


class BasicBlock(nn.Module):
    def __init__(self, c_in, c_out, stride=1):
        super().__init__()
        self.body = nn.Sequential(
            nn.Conv2d(c_in, c_out, 3, stride=stride, padding=1, bias=False), nn.BatchNorm2d(c_out), nn.ReLU(),
            nn.Conv2d(c_out, c_out, 3, padding=1, bias=False), nn.BatchNorm2d(c_out),
        )
        self.shortcut = nn.Identity()
        if stride != 1 or c_in != c_out:
            self.shortcut = nn.Sequential(nn.Conv2d(c_in, c_out, 1, stride=stride, bias=False), nn.BatchNorm2d(c_out))
        self.relu = nn.ReLU()

    def forward(self, x):
        return self.relu(self.body(x) + self.shortcut(x))


def resnet18(num_classes):
    stages = {"stem": conv_bn(3, 64)}
    c_in = 64
    for i, (c_out, stride) in enumerate([(64, 1), (128, 2), (256, 2), (512, 2)], 1):
        for j in range(2):
            stages[f"layer{i}_{j}"] = BasicBlock(c_in, c_out, stride if j == 0 else 1)
            c_in = c_out
    stages["head"] = nn.Sequential(nn.AdaptiveAvgPool2d(1), nn.Flatten(), nn.Linear(c_in, num_classes))
    return StagedModel(stages)


# ---- data ------------------------------------------------------------------------------------


def cifar(name, data_dir, split):
    """(images normalized as distil does, labels) from the python pickles."""
    folder, mean, std, _ = CIFAR[name]
    root = os.path.join(data_dir, folder)
    files = (["test_batch"] if split == "test" else [f"data_batch_{i}" for i in range(1, 6)]) \
        if name == "cifar10" else [split]
    xs, ys = [], []
    for f in files:
        path = os.path.join(root, f)
        if not os.path.exists(path):
            raise SystemExit(f"{path} not found: --data-dir must hold {folder}/ (torchvision's download)")
        with open(path, "rb") as fh:
            d = pickle.load(fh, encoding="bytes")
        xs.append(torch.as_tensor(d[b"data"]).view(-1, 3, 32, 32))
        ys.append(torch.as_tensor(d[b"labels" if name == "cifar10" else b"fine_labels"]))
    x = xs[0] if len(xs) == 1 else torch.cat(xs)
    x = (x.float() / 255 - torch.tensor(mean).view(1, 3, 1, 1)) / torch.tensor(std).view(1, 3, 1, 1)
    return x, torch.cat(ys)


def batches(x, y, batch_size, n):
    n = len(x) if n <= 0 else min(n, len(x))
    for i in range(0, n, batch_size):
        yield x[i:min(i + batch_size, n)], (None if y is None else y[i:min(i + batch_size, n)])


# ---- CPU reference ---------------------------------------------------------------------------


class _ExactCPU:
    """torch.ops.ursa with exact int64 products on the CPU (same semantics, no accelerator)."""

    @staticmethod
    def linear(x, w):
        return (x.long() @ w.long().t()).int()

    @staticmethod
    def conv2d(x, w, stride, padding):
        y = nn.functional.conv2d(x.double(), w.double(), stride=tuple(stride), padding=tuple(padding))
        return y.round().int()  # exact: |sum| < 2^53

    @staticmethod
    def bmm(a, b):
        return torch.bmm(a.long(), b.long()).int()


@contextlib.contextmanager
def on_cpu():
    saved, kernels._ursa = kernels._ursa, _ExactCPU
    try:
        yield
    finally:
        kernels._ursa = saved


def layer_table(model, x):
    """Each layer's GEMM per image and its URSA calls (reduction chunks) for the inputs of x."""
    rows, shapes = [], {}

    def hook(m, inp, out):
        q = kernels.fake_quant(inp[0], m.act_scale)
        bmax = int(q.max()) + (0 if q.min() >= 0 else 128)  # B side: zero point 0 after ReLU, else 128
        shapes[m] = (out.shape, bmax)

    handles = [m.register_forward_hook(hook) for m in model.modules()
               if isinstance(m, (ursa_torch.QConv2d, ursa_torch.QLinear))]
    with torch.no_grad(), on_cpu():
        model(x)
    for h in handles:
        h.remove()
    for name, m in model.named_modules():
        if m not in shapes:
            continue
        w8 = kernels.to_int8(m._qweight()[0]).reshape(m.weight.shape[0], -1)
        P, K = w8.shape
        out, bmax = shapes[m]
        Q = out[2] * out[3] if len(out) == 4 else 1
        rows.append((name, P, K, Q, bmax, len(torch.ops.ursa.plan(w8, bmax)) - 1))
    print(f"\n{'layer':<34}{'P':>6}{'K':>7}{'Q':>7}{'MMAC':>9}{'B max':>7}{'calls':>7}")
    for name, P, K, Q, bmax, n in rows:
        print(f"{name:<34}{P:>6}{K:>7}{Q:>7}{P * K * Q / 1e6:>9.2f}{bmax:>7}{n:>7}")
    print(f"{'total':<34}{'':>20}{sum(r[1] * r[2] * r[3] for r in rows) / 1e6:>9.2f}{'':>7}"
          f"{sum(r[5] for r in rows):>7}\n")


# ---- main ------------------------------------------------------------------------------------


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--checkpoint", help="distil int8 state dict")
    ap.add_argument("--float-checkpoint", help="distil fp32 state dict (calibrated here)")
    ap.add_argument("--data", choices=sorted(CIFAR), help="evaluate on this test set (else random images)")
    ap.add_argument("--data-dir", default="data")
    ap.add_argument("--classes", type=int, help="output classes (default: from --data, else 100)")
    ap.add_argument("--n", type=int, default=200, help="test images (0 = all)")
    ap.add_argument("--batch-size", type=int, default=16)
    ap.add_argument("--calib", type=int, default=8, help="calibration batches (float checkpoint / random weights)")
    ap.add_argument("--layers", action="store_true", help="print the per-layer GEMMs")
    ap.add_argument("--no-check", action="store_true", help="skip the CPU reference run")
    args = ap.parse_args()
    if args.checkpoint and args.float_checkpoint:
        ap.error("--checkpoint and --float-checkpoint are exclusive")

    torch.manual_seed(0)
    classes = args.classes or (CIFAR[args.data][3] if args.data else 100)
    if args.data:
        x_test, y_test = cifar(args.data, args.data_dir, "test")
    else:
        x_test, y_test = torch.randn(max(args.n, args.batch_size), 3, 32, 32), None

    if args.checkpoint:  # distil int8: the converted network has the same state dict
        model = ursa_torch.convert(resnet18(classes))
        model.load_state_dict(torch.load(args.checkpoint, map_location="cpu"))
        source = args.checkpoint
    else:
        model = resnet18(classes)
        if args.float_checkpoint:
            model.load_state_dict(torch.load(args.float_checkpoint, map_location="cpu"))
            source = args.float_checkpoint
        else:  # random BatchNorm statistics, so that folding is not the identity
            for m in model.modules():
                if isinstance(m, nn.BatchNorm2d):
                    m.running_mean.uniform_(-0.1, 0.1)
                    m.running_var.uniform_(0.5, 1.5)
                    m.weight.data.uniform_(0.5, 1.5)
            source = "random weights"
        model = ursa_torch.convert(model.eval())
        if args.float_checkpoint and args.data:
            x_cal = cifar(args.data, args.data_dir, "train")[0]
            x_cal = x_cal[torch.randperm(len(x_cal))[:args.calib * args.batch_size]]
        else:
            x_cal = torch.randn(args.calib * args.batch_size, 3, 32, 32)
        ursa_torch.calibrate(model, (b for b, _ in batches(x_cal, None, args.batch_size, 0)), n_batches=args.calib)
    ursa_torch.freeze(model)

    print(f"{ursa_torch.info()['backend']}\nResNet-18, {classes} classes, {source}")
    if args.layers:
        layer_table(model, x_test[:args.batch_size])

    t_ursa = t_cpu = 0.0
    n = correct = agree = 0
    max_diff = 0.0
    with torch.no_grad():
        for x, y in batches(x_test, y_test, args.batch_size, args.n):
            t0 = time.perf_counter()
            out = model(x)
            t_ursa += time.perf_counter() - t0
            if not args.no_check:
                t0 = time.perf_counter()
                with on_cpu():
                    ref = model(x)
                t_cpu += time.perf_counter() - t0
                max_diff = max(max_diff, (out - ref).abs().max().item())
                agree += (out.argmax(1) == ref.argmax(1)).sum().item()
            if y is not None:
                correct += (out.argmax(1) == y).sum().item()
            n += len(x)
            print(f"\r{n} images", end="", flush=True)
    print()
    if y_test is not None:
        print(f"URSA top-1           {correct / n:.4f}")
    print(f"URSA                 {n / t_ursa:8.2f} img/s")
    if not args.no_check:
        print(f"CPU (exact int64)    {n / t_cpu:8.2f} img/s")
        print(f"agreement with CPU   {agree / n:.4f}, max |logit difference| {max_diff:.3g}")
        if max_diff != 0.0:
            print("  (nonzero: URSA's integer products differ from the exact ones -- check the bitstream / libmxm)")


if __name__ == "__main__":
    main()
