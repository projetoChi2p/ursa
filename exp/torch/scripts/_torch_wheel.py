#!/usr/bin/env python3
"""Unpacks the target's torch wheel (headers + libraries) and prints, as
KEY=VALUE lines, what compiling an extension for it needs.

The wheel cannot be imported on the build machine (another architecture), so
everything is read from its files:
  TORCH_VERSION        torch/version.py
  PY_TAG, PLATFORM     the wheel's Tag (cp310, linux_armv7l)
  EXT_SUFFIX           from the name of torch/_C.<suffix>
  CXX11_ABI            1 if libc10.so's std::string symbols are std::__cxx11 ones
  PYBIND11_*           from libtorch_python.so's "__pybind11_internals_v4_<compiler><stdlib><abi>__"

    scripts/_torch_wheel.py WHEEL OUTDIR     (OUTDIR/torch/{include,lib} afterwards)
"""

import os
import re
import sys
import zipfile


def main():
    wheel, out = sys.argv[1], sys.argv[2]
    stamp = os.path.join(out, ".complete")
    with zipfile.ZipFile(wheel) as z:
        names = z.namelist()
        if not os.path.exists(stamp):
            wanted = [n for n in names if n.startswith(("torch/include/", "torch/lib/")) or n == "torch/version.py"]
            z.extractall(out, wanted)
            with open(stamp, "w") as f:
                f.write(os.path.basename(wheel) + "\n")
        tag = next(l.split(": ", 1)[1].strip() for l in z.read(
            next(n for n in names if n.endswith(".dist-info/WHEEL"))).decode().splitlines() if l.startswith("Tag: "))
    py_tag, _, platform = tag.split("-")
    ext = next(n for n in names if re.fullmatch(r"torch/_C\.cpython-[^/]+\.so", n))
    version = re.search(r"__version__\s*=\s*'([^']+)'", open(os.path.join(out, "torch", "version.py")).read()).group(1)

    lib = os.path.join(out, "torch", "lib")
    c10 = open(os.path.join(lib, "libc10.so"), "rb").read()
    abi = 1 if b"St7__cxx1112basic_string" in c10 else 0
    m = re.search(rb"__pybind11_internals_v\d+_([a-z]+?)(_libstdcpp|_libcpp|_msvc)?(_cxxabi\d+)?__",
                  open(os.path.join(lib, "libtorch_python.so"), "rb").read())
    values = {
        "TORCH_VERSION": version,
        "PY_TAG": py_tag,
        "PLATFORM": platform,
        "EXT_SUFFIX": ext[len("torch/_C"):],
        "CXX11_ABI": abi,
        "PYBIND11_COMPILER_TYPE": "_" + m.group(1).decode() if m else "",
        "PYBIND11_STDLIB": (m.group(2) or b"").decode() if m else "",
        "PYBIND11_BUILD_ABI": (m.group(3) or b"").decode() if m else "",
        "TORCH_INCLUDE": os.path.join(out, "torch", "include"),
        "TORCH_LIB": lib,
    }
    for k, v in values.items():
        print(f"{k}={v}")


if __name__ == "__main__":
    main()
