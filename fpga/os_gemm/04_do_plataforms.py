#!/usr/bin/env python3
#===============================================================================
# 03b_do_platforms.py
#
# Creates the Vitis platforms that 04_do_vitis.sh builds against, one per
# memory layout, from the XSAs written by 03_do_bitstreams.sh.
#
# One platform per layout is enough: the platform fixes the address map and
# the BSP, and those do not change with array size. The XSA of the 8x8 build
# is used by default. Mitigated designs keep the accelerator at the same base
# address as their vanilla twin, so they need no platform of their own.
#
# The platforms land where 04 looks for them:
#   vitis_component/platform-ursa-<VARIANT>-<layout>/export/*/*.xpfm
#
# BSP: standalone on ps7_cortexa9_0, with XILTIMER_tick_timer = None, which
# is the only non-default setting in the platforms built by hand in the IDE.
#
#   source /opt/Xilinx/Vitis/2023.2/settings64.sh
#   vitis -s 03b_do_platforms.py                     # all three layouts
#   LAYOUTS=bram vitis -s 03b_do_platforms.py        # one layout
#   FORCE=1 vitis -s 03b_do_platforms.py             # rebuild existing ones
#
# Run it from this folder. An existing platform is skipped unless FORCE=1.
#===============================================================================

import glob
import os
import shutil
import sys

import vitis

try:
    ROOT_DIR = os.path.dirname(os.path.realpath(__file__))
except NameError:
    ROOT_DIR = os.getcwd()

VARIANT  = os.environ.get("VARIANT", "vanilla")
SA_SIZE  = os.environ.get("SA_SIZE", "2")
ACC_BITS = os.environ.get("ACC_BITS", "20")
LAYOUTS  = os.environ.get("LAYOUTS", "bram hybrid ocm").split()
FORCE    = os.environ.get("FORCE", "0") == "1"

CPU     = "ps7_cortexa9_0"
OS_NAME = "standalone"
DOMAIN  = f"{OS_NAME}_{CPU}"

VITIS_DIR = os.path.join(ROOT_DIR, "vitis_component")
XSA_DIR   = os.path.join(ROOT_DIR, "bitstreams")


def create_platform(client, name, xsa):
    # 2023.2 names the XSA argument "hw"; later releases renamed it
    # "hw_design". Try the new name first so the script survives an upgrade.
    kw = dict(name=name, os=OS_NAME, cpu=CPU, domain_name=DOMAIN)
    try:
        return client.create_platform_component(hw_design=xsa, **kw)
    except TypeError:
        return client.create_platform_component(hw=xsa, **kw)


def set_tick_timer_none(platform):
    try:
        domain = platform.get_domain(name=DOMAIN)
        domain.set_config(option="lib", param="XILTIMER_tick_timer",
                          value="None", lib_name="xiltimer")
    except Exception as e:
        print(f"  WARNING: could not set XILTIMER_tick_timer: {e}")


def read_tick_timer(pdir):
    # Read back from the generated bsp.yaml instead of trusting the API call.
    path = os.path.join(pdir, CPU, DOMAIN, "bsp", "bsp.yaml")
    if not os.path.isfile(path):
        return "no_bsp"
    inside = False
    with open(path) as f:
        for line in f:
            if "XILTIMER_tick_timer:" in line:
                inside = True
            elif inside and line.strip().startswith("value:"):
                return line.split(":", 1)[1].strip().strip("'\"")
    return "not_found"


def main():
    if not os.path.isdir(XSA_DIR):
        print(f"ERROR: {XSA_DIR} not found. Run 03_do_bitstreams.sh first,")
        print("       and run this script from its own folder.")
        sys.exit(1)

    client = vitis.create_client()
    client.set_workspace(path=VITIS_DIR)

    results = []
    for layout in LAYOUTS:
        name = f"platform-ursa-{VARIANT}-{layout}"
        pdir = os.path.join(VITIS_DIR, name)
        xsa  = os.path.join(
            XSA_DIR, f"ursa_{VARIANT}_{SA_SIZE}x{SA_SIZE}_acc{ACC_BITS}_{layout}.xsa")

        print(f"\n### {name}  <-  {os.path.relpath(xsa, ROOT_DIR)}")

        if not os.path.isfile(xsa):
            results.append((name, "no_xsa", "-"))
            continue

        if os.path.isdir(pdir):
            if not FORCE:
                results.append((name, "skipped", read_tick_timer(pdir)))
                continue
            try:
                client.delete_component(name=name)
            except Exception:
                pass
            shutil.rmtree(pdir, ignore_errors=True)

        try:
            platform = create_platform(client, name, xsa)
            set_tick_timer_none(platform)
            platform.build()
        except Exception as e:
            print(f"  ERROR: {e}")
            results.append((name, "error", "-"))
            continue

        xpfm = glob.glob(os.path.join(pdir, "export", "*", "*.xpfm"))
        status = "ok" if xpfm else "no_xpfm"
        results.append((name, status, read_tick_timer(pdir)))

    vitis.dispose()

    print("\n" + "=" * 70)
    print(f"{'platform':<34}{'status':<10}tick_timer")
    for name, status, tick in results:
        print(f"{name:<34}{status:<10}{tick}")

    failed = [r for r in results if r[1] not in ("ok", "skipped")]
    sys.exit(1 if failed else 0)


main()