#!/usr/bin/env python3
"""Builds a minimal armhf sysroot of an Ubuntu release from its .deb packages.

The extension must link against the board's C and C++ runtime, not the newer
ones of the cross toolchain's own sysroot (Vitis 2024.2: glibc 2.39, libstdc++
6.0.32; Ubuntu 22.04, i.e. PYNQ 3.x: glibc 2.35, libstdc++ 6.0.30). This
downloads just what compiling and linking need -- glibc headers and libraries,
the kernel headers, libstdc++ / libgcc_s, the Python headers -- from
ports.ubuntu.com and unpacks them (dpkg-deb) into the sysroot.

    scripts/_fetch_sysroot.py --release jammy --python 3.10 --out .cache/sysroot-jammy-armhf
"""

import argparse
import lzma
import os
import subprocess
import sys
import urllib.request

MIRROR = "http://ports.ubuntu.com/ubuntu-ports"
ARCH = "armhf"
TRIPLET = "arm-linux-gnueabihf"


def packages(py):
    return ["libc6", "libc6-dev", "linux-libc-dev", "libcrypt-dev", "libstdc++6", "libgcc-s1",
            f"libpython{py}-dev", f"libpython{py}", f"libpython{py}-stdlib"]


def fetch(url):
    with urllib.request.urlopen(url, timeout=60) as r:
        return r.read()


def index(release):
    """{package: (Filename, Version)}; -updates and -security override the release."""
    found = {}
    for suite in (release, f"{release}-security", f"{release}-updates"):
        for comp in ("main", "universe"):
            url = f"{MIRROR}/dists/{suite}/{comp}/binary-{ARCH}/Packages.xz"
            try:
                text = lzma.decompress(fetch(url)).decode("utf-8", "replace")
            except Exception as e:  # noqa: BLE001  (a missing component is fine)
                print(f"  (skipping {url}: {e})", file=sys.stderr)
                continue
            for block in text.split("\n\n"):
                fields = dict(line.split(": ", 1) for line in block.splitlines() if ": " in line and not line.startswith(" "))
                if "Package" in fields and "Filename" in fields:
                    found[fields["Package"]] = (fields["Filename"], fields.get("Version", ""))
    return found


def fixups(root):
    """Development symlinks the runtime packages lack (the -dev packages of gcc are not fetched)."""
    lib = os.path.join(root, "usr", "lib", TRIPLET)
    for real_dir in (os.path.join(root, "lib", TRIPLET), lib):
        for so, link in (("libstdc++.so.6", "libstdc++.so"), ("libgcc_s.so.1", "libgcc_s.so")):
            if os.path.exists(os.path.join(real_dir, so)) and not os.path.lexists(os.path.join(lib, link)):
                os.symlink(os.path.relpath(os.path.join(real_dir, so), lib), os.path.join(lib, link))
    # absolute symlinks inside the sysroot -> relative ones
    for d, _, files in os.walk(root):
        for f in files:
            p = os.path.join(d, f)
            if os.path.islink(p) and os.readlink(p).startswith("/"):
                target = os.path.join(root, os.readlink(p).lstrip("/"))
                os.remove(p)
                os.symlink(os.path.relpath(target, d), p)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--release", default="jammy")
    ap.add_argument("--python", default="3.10")
    ap.add_argument("--out", required=True)
    a = ap.parse_args()

    stamp = os.path.join(a.out, ".complete")
    if os.path.exists(stamp):
        print(f"  {a.out} already present")
        return
    print(f"  indexing Ubuntu {a.release} {ARCH} ...")
    idx = index(a.release)
    debs = os.path.join(a.out + ".debs")
    os.makedirs(debs, exist_ok=True)
    os.makedirs(a.out, exist_ok=True)
    for pkg in packages(a.python):
        if pkg not in idx:
            sys.exit(f"_fetch_sysroot.py: {pkg} not found in Ubuntu {a.release} {ARCH}")
        filename, version = idx[pkg]
        path = os.path.join(debs, os.path.basename(filename))
        if not os.path.exists(path):
            print(f"  {pkg} {version}")
            data = fetch(f"{MIRROR}/{filename}")
            with open(path + ".part", "wb") as f:
                f.write(data)
            os.replace(path + ".part", path)
        subprocess.run(["dpkg-deb", "-x", path, a.out], check=True)
    fixups(a.out)
    with open(stamp, "w") as f:
        f.write(f"Ubuntu {a.release} {ARCH}, python {a.python}\n")
    print(f"  sysroot in {a.out}")


if __name__ == "__main__":
    main()
