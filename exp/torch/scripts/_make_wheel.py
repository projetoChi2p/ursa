#!/usr/bin/env python3
"""Packages ursa_torch/*.py plus a prebuilt _C extension into a wheel.

Used by scripts/cross_build.sh (the extension is compiled and linked by hand,
not by setuptools), so neither setuptools nor torch is needed. Prints the
wheel's path.
"""

import argparse
import base64
import hashlib
import os
import re
import zipfile


def record_line(name, data):
    digest = base64.urlsafe_b64encode(hashlib.sha256(data).digest()).rstrip(b"=").decode()
    return f"{name},sha256={digest},{len(data)}"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo", required=True)
    ap.add_argument("--so", required=True, help="the built extension")
    ap.add_argument("--ext-suffix", required=True, help="e.g. .cpython-310-arm-linux-gnueabihf.so")
    ap.add_argument("--py-tag", required=True, help="e.g. cp310")
    ap.add_argument("--platform", required=True, help="e.g. linux_armv7l")
    ap.add_argument("--build-info", default="", help="text stored as ursa_torch/BUILD_INFO")
    ap.add_argument("--out", required=True)
    a = ap.parse_args()

    setup = open(os.path.join(a.repo, "setup.py")).read()
    version = re.search(r'version\s*=\s*"([^"]+)"', setup).group(1)
    tag = f"{a.py_tag}-{a.py_tag}-{a.platform}"
    dist_info = f"ursa_torch-{version}.dist-info"

    files = []
    pkg = os.path.join(a.repo, "ursa_torch")
    for name in sorted(os.listdir(pkg)):
        if name.endswith(".py"):
            with open(os.path.join(pkg, name), "rb") as f:
                files.append((f"ursa_torch/{name}", f.read()))
    with open(a.so, "rb") as f:
        files.append((f"ursa_torch/_C{a.ext_suffix}", f.read()))
    if a.build_info:
        files.append(("ursa_torch/BUILD_INFO", a.build_info.encode()))
    files.append((f"{dist_info}/METADATA", (
        "Metadata-Version: 2.1\n"
        "Name: ursa_torch\n"
        f"Version: {version}\n"
        "Summary: PyTorch int8 backend for the URSA v3 systolic array (cross-built)\n"
    ).encode()))
    files.append((f"{dist_info}/WHEEL", (
        "Wheel-Version: 1.0\n"
        "Generator: ursa_torch scripts/_make_wheel.py\n"
        "Root-Is-Purelib: false\n"
        f"Tag: {tag}\n"
    ).encode()))
    files.append((f"{dist_info}/top_level.txt", b"ursa_torch\n"))

    record = "\n".join(record_line(n, d) for n, d in files) + f"\n{dist_info}/RECORD,,\n"
    os.makedirs(a.out, exist_ok=True)
    path = os.path.join(a.out, f"ursa_torch-{version}-{tag}.whl")
    with zipfile.ZipFile(path, "w", zipfile.ZIP_DEFLATED) as z:
        for name, data in files:
            info = zipfile.ZipInfo(name, date_time=(2020, 1, 1, 0, 0, 0))
            info.external_attr = (0o755 if name.endswith(".so") else 0o644) << 16
            info.compress_type = zipfile.ZIP_DEFLATED
            z.writestr(info, data)
        z.writestr(f"{dist_info}/RECORD", record)
    print(path)


if __name__ == "__main__":
    main()
