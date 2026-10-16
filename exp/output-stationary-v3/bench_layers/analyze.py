#!/usr/bin/env python3
"""Summarize a layers-mode CSV (05_run_board.py --mode layers) per network.

    python3 analyze.py results/times_layers_vanilla.csv --mhz 100

Prints, per (array size, network): MACs, URSA calls, GEMM time and GEMM time
with the runtime's transfers, throughput in GMAC/s and the fraction of the
array's peak (SA^2 MACs per cycle at --mhz).
"""
import argparse
import csv
from collections import OrderedDict


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("csv")
    ap.add_argument("--mhz", type=float, required=True, help="PL clock of the run")
    a = ap.parse_args()

    nets = OrderedDict()
    for r in csv.DictReader(open(a.csv)):
        if r.get("check") != "ok" or not r.get("us_gemm"):
            continue
        k = (int(r["sa_size"]), r["group"], r["net"])
        n = nets.setdefault(k, dict(layers=0, macs=0, calls=0, us_g=0, us_x=0))
        n["layers"] += 1
        n["macs"] += int(r["macs"])
        n["calls"] += int(r["calls"])
        n["us_g"] += int(r["us_gemm"])
        n["us_x"] += int(r["us_xfer"])

    print(f"{'SA':>3} {'group':6} {'net':38} {'GMAC':>7} {'calls':>7} "
          f"{'gemm ms':>9} {'GMAC/s':>7} {'%peak':>6} {'+xfer ms':>9} {'GMAC/s':>7}")
    for (sa, grp, net), n in nets.items():
        peak = sa * sa * a.mhz * 1e6
        g = n["macs"] / (n["us_g"] * 1e-6) if n["us_g"] else 0
        x = n["macs"] / (n["us_x"] * 1e-6) if n["us_x"] else 0
        print(f"{sa:>3} {grp:6} {net:38} {n['macs']/1e9:7.3f} {n['calls']:7d} "
              f"{n['us_g']/1e3:9.1f} {g/1e9:7.2f} {100*g/peak:6.1f} "
              f"{n['us_x']/1e3:9.1f} {x/1e9:7.2f}")


if __name__ == "__main__":
    main()
