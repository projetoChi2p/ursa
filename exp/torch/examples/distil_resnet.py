"""Evaluate a distil int8 checkpoint (ResNet9/18/50) on URSA.

    sudo -E python examples/distil_resnet.py --config config.yaml [--checkpoint PATH] [--n 500]

Paths are distil's: --config and relative paths in it are resolved from
DISTIL_HOME (default ~/Documents/dac/distil). The checkpoint defaults to the
distilled model, else the int8 teacher. The network is loaded with distil's
own models.load, its qops layers are converted to ursa_torch modules (same
state, weights frozen to int8), and the top-1 on URSA is reported next to the
CPU run of distil's accurate mode, with the agreement between both.
"""

import argparse
import os
import sys
import time

DISTIL = os.environ.get("DISTIL_HOME", os.path.expanduser("~/Documents/dac/distil"))
os.environ.setdefault("TORCH_APPROX_INT8_GEMM", "0")       # distil's accurate mode on the CPU
os.environ.setdefault("TORCH_APPROX_INT8_GEMM_FLOAT", "0")
sys.path.insert(0, DISTIL)

import torch  # noqa: E402

import ursa_torch  # noqa: E402


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--config", default="config.yaml")
    parser.add_argument("--set", nargs="*", action="extend", default=[], metavar="KEY=VALUE")
    parser.add_argument("--checkpoint", help="int8 state dict (default: distilled, else teacher_int8)")
    parser.add_argument("--n", type=int, default=500, help="test images (0 = all)")
    parser.add_argument("--batch-size", type=int, default=50)
    parser.add_argument("--no-reference", action="store_true", help="skip the CPU accurate-mode run")
    args = parser.parse_args()

    os.chdir(DISTIL)
    import approx
    import config
    import data
    import models

    cfg = config.load(args.config, args.set + ["device=cpu", "num_workers=0"])
    if not cfg["quant"]["enabled"]:
        raise SystemExit("URSA runs int8 networks: use a config with quant.enabled = true")
    P = config.paths(cfg)
    path = args.checkpoint or next((p for p in (P.distill / "distilled.pt", P.model) if p.exists()), None)
    if path is None:
        raise SystemExit(f"no int8 checkpoint under {P.root} (run distil's quantize phase, or pass --checkpoint)")
    print(f"{ursa_torch.info()['backend']}\ncheckpoint: {path}")

    test = data.dataset(cfg, "test")
    if args.n:
        test = data.head(test, args.n)
    loader = data.loader(cfg, test, args.batch_size, shuffle=False)

    reference = models.load(cfg, path).eval()
    model = ursa_torch.freeze(ursa_torch.convert(models.load(cfg, path)))

    labels, ursa_pred, ref_pred, t_ursa, t_ref = [], [], [], 0.0, 0.0
    with torch.no_grad():
        for i, (x, y) in enumerate(loader):
            t0 = time.perf_counter()
            ursa_pred.append(model(x).argmax(1))
            t_ursa += time.perf_counter() - t0
            if not args.no_reference:
                t0 = time.perf_counter()
                with approx.ops(approx.ACCURATE):
                    ref_pred.append(reference(x).argmax(1))
                t_ref += time.perf_counter() - t0
            labels.append(y)
            print(f"\r{sum(len(l) for l in labels)}/{len(test)}", end="", flush=True)
    print()
    labels, ursa_pred = torch.cat(labels), torch.cat(ursa_pred)
    n = len(labels)
    print(f"URSA        top-1 {(ursa_pred == labels).float().mean():.4f}  ({n / t_ursa:.2f} img/s)")
    if ref_pred:
        ref_pred = torch.cat(ref_pred)
        print(f"CPU (exact) top-1 {(ref_pred == labels).float().mean():.4f}  ({n / t_ref:.2f} img/s)")
        print(f"agreement   {(ursa_pred == ref_pred).float().mean():.4f}")


if __name__ == "__main__":
    main()
