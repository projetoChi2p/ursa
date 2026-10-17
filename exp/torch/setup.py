"""Build the URSA PyTorch backend.

    pip install --no-build-isolation -e .

The extension links against libmxm (mxm.h / libmxm.so.1, the URSA v3 Linux
driver in ../output-stationary-v3/linux). By default it uses the installed
one (/usr/local/include, /usr/local/lib), i.e. on the board after
`make install` there. libmxm.so.1 is interchangeable at run time: another
array size (or the software model) can be selected with LD_LIBRARY_PATH,
without rebuilding.

Environment:
  MXM_HOME         prefix holding include/mxm.h and lib/libmxm.so (default /usr/local),
                   or a libmxm build directory (build/sa8, build/sim-sa8: libmxm.so
                   there, mxm.h taken from MXM_INCLUDE_DIR)
  MXM_INCLUDE_DIR  directory holding mxm.h (default $MXM_HOME/include, or the
                   linux/ directory of this repository for a build directory)
  MXM_LIB_DIR      directory holding libmxm.so (default $MXM_HOME/lib, or $MXM_HOME)

On a development host, build the software model first and point the build at it:
    make -C ../output-stationary-v3/linux sim SA=8
    MXM_HOME=../output-stationary-v3/linux/build/sim-sa8 pip install --no-build-isolation -e .
"""

import os
import sys

from setuptools import setup

try:
    import torch
except ImportError:
    raise SystemExit("setup.py: PyTorch (>= 1.13) must be installed first; build with "
                     "`pip install --no-build-isolation -e .` so the build sees it")

_torch_version = tuple(int(v) for v in torch.__version__.split("+")[0].split(".")[:2])
if _torch_version < (1, 13):
    raise SystemExit(f"setup.py: ursa_torch needs torch >= 1.13, found {torch.__version__} "
                     f"(python: {sys.executable})")

from torch.utils.cpp_extension import BuildExtension, CppExtension  # noqa: E402

# Each C++ compile job of a torch extension needs roughly 1-1.5 GB of memory;
# a Zynq board has far less. Unless MAX_JOBS is set, fit the jobs in memory.
if "MAX_JOBS" not in os.environ:
    try:
        with open("/proc/meminfo") as f:
            avail_kb = next(int(l.split()[1]) for l in f if l.startswith("MemAvailable:"))
        os.environ["MAX_JOBS"] = str(max(1, min(os.cpu_count() or 1, int(avail_kb / (1.5 * 1024 * 1024)))))
    except (OSError, StopIteration, ValueError):
        pass

ROOT = os.path.dirname(os.path.abspath(__file__))
LINUX_DIR = os.path.normpath(os.path.join(ROOT, "..", "output-stationary-v3", "linux"))

MXM_HOME = os.path.abspath(os.environ.get("MXM_HOME", "/usr/local"))
_is_build_dir = os.path.isfile(os.path.join(MXM_HOME, "libmxm.so"))
MXM_INCLUDE_DIR = os.path.abspath(os.environ.get(
    "MXM_INCLUDE_DIR", LINUX_DIR if _is_build_dir else os.path.join(MXM_HOME, "include")))
MXM_LIB_DIR = os.path.abspath(os.environ.get(
    "MXM_LIB_DIR", MXM_HOME if _is_build_dir else os.path.join(MXM_HOME, "lib")))

if not os.path.isfile(os.path.join(MXM_INCLUDE_DIR, "mxm.h")):
    raise SystemExit(f"setup.py: mxm.h not found in {MXM_INCLUDE_DIR} (set MXM_HOME or MXM_INCLUDE_DIR)")
if not os.path.exists(os.path.join(MXM_LIB_DIR, "libmxm.so")):
    raise SystemExit(f"setup.py: libmxm.so not found in {MXM_LIB_DIR} (set MXM_HOME or MXM_LIB_DIR)")
print(f"setup.py: mxm.h from {MXM_INCLUDE_DIR}, libmxm.so from {MXM_LIB_DIR}")

ext = CppExtension(
    name="ursa_torch._C",
    sources=["csrc/backend.cpp", "csrc/ops.cpp"],
    include_dirs=[os.path.join(ROOT, "csrc"), MXM_INCLUDE_DIR],
    libraries=["mxm"],
    library_dirs=[MXM_LIB_DIR],
    extra_compile_args={"cxx": ["-O2"]},
    extra_link_args=[f"-Wl,-rpath,{MXM_LIB_DIR}"],
)

setup(
    name="ursa_torch",
    version="0.1.0",
    description="PyTorch int8 backend for the URSA v3 systolic array (libmxm)",
    packages=["ursa_torch"],
    ext_modules=[ext],
    cmdclass={"build_ext": BuildExtension},
    python_requires=">=3.8",
)
