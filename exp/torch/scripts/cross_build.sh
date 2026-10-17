#!/usr/bin/env bash
# cross_build.sh -- build ursa_torch for the board (Zynq-7000, armv7 hard-float)
# entirely on this PC, with the Vitis aarch32 Linux toolchain, and package it as
# a wheel. Nothing is compiled on the board: it only installs the wheel.
#
#   scripts/cross_build.sh                         -> dist/ursa_torch-*-linux_armv7l.whl
#   scripts/cross_build.sh --install xilinx@pynq   also copy it there and pip install it
#
# What it builds against:
#   * torch: the board's torch wheel (default: the maxisoft/pytorch-arm 1.13 armv7
#     wheel), downloaded once into .cache/; its headers and libraries are used and
#     its C++ / pybind11 ABI is read from its binaries.
#   * the C/C++ runtime: an Ubuntu armhf sysroot fetched from ports.ubuntu.com
#     (default jammy = Ubuntu 22.04, the PYNQ 3.x base). The toolchain's own
#     sysroot is NOT used: its glibc 2.39 / libstdc++ 6.0.32 are newer than the
#     board's, and a binary linked against them fails to load there. After
#     linking, every GLIBC_/GLIBCXX_/CXXABI_ symbol version the extension needs
#     is checked against the sysroot.
#   * libmxm: ../output-stationary-v3/linux/build/sa<SA>/libmxm.so (cross-built
#     with the same toolchain if missing). Any libmxm.so.1 works at run time.
#
# Options:
#   --torch-wheel PATH|URL  the board's torch wheel (default: $TORCH_WHEEL_URL below)
#   --release NAME          Ubuntu release of the board's OS (default jammy)
#   --sysroot DIR           use this armhf sysroot instead (e.g. copied from the board)
#   --sa N                  libmxm array size to link against (default 8)
#   --cross-compile PFX     toolchain prefix (default: $CROSS_COMPILE, else Vitis'
#                           gnu/aarch32/lin/gcc-arm-linux-gnueabi, else PATH)
#   --install USER@HOST     scp the wheel to the board and pip install it there
#   --pip CMD               pip on the board (default: python3 -m pip)
#   --jobs N                parallel compile jobs (default: all CPUs)

set -euo pipefail

TORCH_WHEEL_URL="https://github.com/maxisoft/pytorch-arm/releases/download/v1.0.0/torch-1.13.0a0+git7c98e70-cp310-cp310-linux_armv7l.whl"
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CACHE="$REPO/.cache"
LINUX="$(cd "$REPO/../output-stationary-v3/linux" && pwd)"
TORCH_WHEEL="$TORCH_WHEEL_URL"
RELEASE=jammy
SYSROOT=""
SA=8
PREFIX="${CROSS_COMPILE:-}"
INSTALL=""
PIP="python3 -m pip"
JOBS="$(nproc)"

while [ $# -gt 0 ]; do
    case "$1" in
        --torch-wheel) TORCH_WHEEL="$2"; shift 2 ;;
        --release) RELEASE="$2"; shift 2 ;;
        --sysroot) SYSROOT="$(cd "$2" && pwd)"; shift 2 ;;
        --sa) SA="$2"; shift 2 ;;
        --cross-compile) PREFIX="$2"; shift 2 ;;
        --install) INSTALL="$2"; shift 2 ;;
        --pip) PIP="$2"; shift 2 ;;
        --jobs) JOBS="$2"; shift 2 ;;
        -h|--help) sed -n '2,36p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
        *) echo "cross_build.sh: unknown option $1 (see --help)" >&2; exit 2 ;;
    esac
done

step() { printf '\n==> %s\n' "$*"; }
die() { printf '\ncross_build.sh: %s\n' "$*" >&2; exit 1; }
load_env() {  # KEY=VALUE lines -> shell variables
    while IFS='=' read -r k v; do
        [[ "$k" =~ ^[A-Z0-9_]+$ ]] && printf -v "$k" '%s' "$v"
    done
}

# ---- toolchain -----------------------------------------------------------------------------

if [ -z "$PREFIX" ]; then
    for d in "${XILINX_VITIS:-/nonexistent}" /tools/xil/Vitis/* /tools/Xilinx/Vitis/* /opt/Xilinx/Vitis/*; do
        c="$d/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-"
        [ -x "${c}g++" ] && PREFIX="$c"  # the last match: the newest version
    done
    if [ -z "$PREFIX" ] && command -v arm-linux-gnueabihf-g++ >/dev/null; then PREFIX=arm-linux-gnueabihf-; fi
fi
CXX="${PREFIX}g++"
READELF="${PREFIX}readelf"
command -v "$CXX" >/dev/null || die "no ARM Linux cross compiler found (install Vitis, or pass --cross-compile PREFIX)"
case "$("$CXX" -dumpmachine)" in
    arm*linux*) ;;
    *) die "$CXX targets $("$CXX" -dumpmachine); an arm Linux (gnueabihf) compiler is needed" ;;
esac
# The Vitis compiler defaults to armv5t: target the Zynq's Cortex-A9 explicitly
# (hard-float, as the Ubuntu armhf userland and the torch wheel).
TARGET=(-mcpu=cortex-a9 -mfpu=neon -mfloat-abi=hard -mthumb)
echo "toolchain: $CXX ($("$CXX" -dumpfullversion))"

# ---- torch wheel -----------------------------------------------------------------------------

mkdir -p "$CACHE"
if [[ "$TORCH_WHEEL" =~ ^https?:// ]]; then
    WHL="$CACHE/$(basename "${TORCH_WHEEL%%\?*}")"
    WHL="${WHL//%2B/+}"
    if [ ! -f "$WHL" ]; then
        step "Downloading $TORCH_WHEEL"
        curl -fL --retry 3 -o "$WHL.part" "$TORCH_WHEEL" && mv "$WHL.part" "$WHL"
    fi
else
    WHL="$(cd "$(dirname "$TORCH_WHEEL")" && pwd)/$(basename "$TORCH_WHEEL")"
    [ -f "$WHL" ] || die "no torch wheel at $TORCH_WHEEL"
fi
step "Reading $(basename "$WHL")"
TORCH_DIR="$CACHE/torch-$(basename "$WHL" .whl)"
load_env < <(python3 "$REPO/scripts/_torch_wheel.py" "$WHL" "$TORCH_DIR")
echo "  torch $TORCH_VERSION, $PY_TAG, $PLATFORM, C++11 ABI $CXX11_ABI, pybind11 $PYBIND11_COMPILER_TYPE$PYBIND11_STDLIB$PYBIND11_BUILD_ABI"
IFS=. read -r TMAJ TMIN _ <<< "$TORCH_VERSION"
if [ "$TMAJ" -lt 1 ] || { [ "$TMAJ" -eq 1 ] && [ "$TMIN" -lt 13 ]; }; then die "ursa_torch needs torch >= 1.13"; fi
case "$PLATFORM" in *armv7*) ;; *) die "the wheel is for $PLATFORM, not armv7" ;; esac
PYVER="${PY_TAG#cp}"; PYVER="${PYVER:0:1}.${PYVER:1}"
if [ "$TMAJ" -gt 2 ] || { [ "$TMAJ" -eq 2 ] && [ "$TMIN" -ge 10 ]; }; then STD=c++20; else STD=c++17; fi

# ---- sysroot ---------------------------------------------------------------------------------

if [ -z "$SYSROOT" ]; then
    SYSROOT="$CACHE/sysroot-$RELEASE-armhf"
    step "Ubuntu $RELEASE armhf sysroot (python $PYVER)"
    python3 "$REPO/scripts/_fetch_sysroot.py" --release "$RELEASE" --python "$PYVER" --out "$SYSROOT"
fi
MULTI="arm-linux-gnueabihf"
PY_INC="$SYSROOT/usr/include/python$PYVER"
[ -f "$PY_INC/Python.h" ] || die "no Python.h in $PY_INC (the sysroot needs libpython$PYVER-dev)"
[ -f "$SYSROOT/usr/lib/$MULTI/libc.so" ] || die "no usr/lib/$MULTI/libc.so in $SYSROOT (the sysroot needs libc6-dev)"

# ---- libmxm ----------------------------------------------------------------------------------

MXM_DIR="$LINUX/build/sa$SA"
if [ ! -f "$MXM_DIR/libmxm.so" ]; then
    step "Cross-building libmxm (SA=$SA)"
    make -C "$LINUX" lib SA="$SA" CROSS="$PREFIX" CC="${PREFIX}gcc" CFLAGS="-O2 ${TARGET[*]}"
fi
case "$("$READELF" -h "$MXM_DIR/libmxm.so" | awk '/Machine:/ {print $2}')" in
    ARM) ;; *) die "$MXM_DIR/libmxm.so is not an ARM library (a sim build?)" ;;
esac

# ---- compile ---------------------------------------------------------------------------------

BUILD="$CACHE/cross-build"
rm -rf "$BUILD"
mkdir -p "$BUILD"

# The toolchain's C++ headers: with --sysroot pointing at Ubuntu's files the
# compiler would look for them there. libstdc++'s #include_next then finds the C
# library's headers in the sysroot, including Debian's multiarch directory,
# which a compiler configured for another triplet (arm-xilinx-linux) does not search.
mapfile -t CXX_INC < <("$CXX" -E -x c++ - -v </dev/null 2>&1 |
    sed -n '/search starts here:/,/End of search/p' | grep '/c++/' | sed 's/^ *//')
[ "${#CXX_INC[@]}" -gt 0 ] || die "could not find $CXX's C++ headers"

CXXFLAGS=(-O2 -fPIC -DNDEBUG -std="$STD" "${TARGET[@]}" --sysroot="$SYSROOT" -nostdinc++
          -Wall -Wno-unused-function -Wno-psabi
          -DTORCH_API_INCLUDE_EXTENSION_H -DTORCH_EXTENSION_NAME=_C -D_GLIBCXX_USE_CXX11_ABI="$CXX11_ABI")
for d in "${CXX_INC[@]}"; do CXXFLAGS+=(-isystem "$d"); done
CXXFLAGS+=(-isystem "$SYSROOT/usr/include/$MULTI")
[ -n "$PYBIND11_COMPILER_TYPE" ] && CXXFLAGS+=("-DPYBIND11_COMPILER_TYPE=\"$PYBIND11_COMPILER_TYPE\"")
[ -n "$PYBIND11_STDLIB" ] && CXXFLAGS+=("-DPYBIND11_STDLIB=\"$PYBIND11_STDLIB\"")
[ -n "$PYBIND11_BUILD_ABI" ] && CXXFLAGS+=("-DPYBIND11_BUILD_ABI=\"$PYBIND11_BUILD_ABI\"")
CXXFLAGS+=(-isystem "$TORCH_INCLUDE" -isystem "$TORCH_INCLUDE/torch/csrc/api/include" -isystem "$PY_INC"
           -I"$REPO/csrc" -I"$LINUX")

step "Compiling ($STD, $JOBS job(s))"
export CXX BUILD REPO
printf '%s\n' "$REPO/csrc/backend.cpp" "$REPO/csrc/ops.cpp" | xargs -P "$JOBS" -I{} sh -c '
    src="$1"; shift
    echo "  CXX ${src#$REPO/}"
    "$CXX" "$@" -c "$src" -o "$BUILD/$(basename "${src%.cpp}").o"' _ {} "${CXXFLAGS[@]}" \
    || die "compilation failed (see above)"

# ---- link ------------------------------------------------------------------------------------

SO="$BUILD/_C$EXT_SUFFIX"
# gcc's own runtime (crtbeginS.o, libgcc.a) lives in the toolchain's sysroot,
# which --sysroot replaces: point at it, after the Ubuntu directories so that
# libstdc++ / libgcc_s still come from the board's userland.
GCC_RT="$(dirname "$("$CXX" "${TARGET[@]}" -print-libgcc-file-name)")"
[ -f "$GCC_RT/crtbeginS.o" ] || die "no crtbeginS.o next to $("$CXX" -print-libgcc-file-name)"
LDFLAGS=(-shared "${TARGET[@]}" --sysroot="$SYSROOT"
         -B"$SYSROOT/usr/lib/$MULTI" -L"$SYSROOT/usr/lib/$MULTI" -L"$SYSROOT/lib/$MULTI" -B"$GCC_RT/"
         -Wl,-rpath-link,"$SYSROOT/lib/$MULTI" -Wl,-rpath-link,"$SYSROOT/usr/lib/$MULTI"
         -Wl,--exclude-libs,ALL)
LIBS=(-L"$TORCH_LIB" -lc10 -ltorch -ltorch_cpu -ltorch_python -L"$MXM_DIR" -lmxm)

step "Linking"
# Check link: with libpython and --no-undefined, every symbol must resolve
# (catches a torch / C++ ABI mismatch now instead of an ImportError on the board).
LIBPY="$(ls "$SYSROOT/usr/lib/$MULTI"/libpython"$PYVER".so* 2>/dev/null | head -1)"
if [ -n "$LIBPY" ]; then
    "$CXX" "${LDFLAGS[@]}" -o "$BUILD/check.so" "$BUILD"/*.o "${LIBS[@]}" "$LIBPY" \
        -Wl,--no-undefined -Wl,--allow-shlib-undefined \
        || die "undefined symbols (see above): the torch headers and libraries do not match"
    rm -f "$BUILD/check.so"
else
    echo "  (no libpython$PYVER in the sysroot: skipping the --no-undefined check)"
fi
"$CXX" "${LDFLAGS[@]}" -Wl,--allow-shlib-undefined -o "$SO" "$BUILD"/*.o "${LIBS[@]}" \
    || die "linking failed (see above)"

# ---- check what the board must provide ---------------------------------------------------------

step "Checking symbol versions against the sysroot"
mapfile -t NEEDED < <("$READELF" -V "$SO" | sed -n '/Version needs section/,$p' |
    grep -oE 'Name: (GLIBC|GLIBCXX|CXXABI|GCC)_[0-9A-Z_.]+' | awk '{print $2}' | sort -uV)
PROVIDERS=()
for lib in libc.so.6 libm.so.6 libstdc++.so.6 libgcc_s.so.1 libpthread.so.0 libdl.so.2 librt.so.1 ld-linux-armhf.so.3; do
    for d in "$SYSROOT/lib/$MULTI" "$SYSROOT/usr/lib/$MULTI"; do
        [ -e "$d/$lib" ] && PROVIDERS+=("$d/$lib") && break
    done
done
PROVIDED="$("$READELF" -V "${PROVIDERS[@]}" | grep -oE 'Name: [A-Z_]+_[0-9A-Z_.]+' | awk '{print $2}' | sort -u)"
missing=()
for v in "${NEEDED[@]}"; do grep -qxF "$v" <<< "$PROVIDED" || missing+=("$v"); done
echo "  needs: $(printf '%s ' "${NEEDED[@]}")"
[ "${#missing[@]}" -eq 0 ] || die "the board's runtime lacks ${missing[*]}: the extension would not load there"
echo "  NEEDED libraries: $("$READELF" -d "$SO" | sed -n 's/.*Shared library: \[\(.*\)\]/\1/p' | tr '\n' ' ')"
"$READELF" -A "$SO" | grep -q 'Tag_ABI_VFP_args: VFP registers' || die "$SO is not hard-float"

# ---- wheel -------------------------------------------------------------------------------------

step "Packaging"
INFO="built $(date -u +%Y-%m-%dT%H:%M:%SZ) on $(hostname) with $("$CXX" -dumpmachine) $("$CXX" -dumpfullversion)
torch $TORCH_VERSION ($(basename "$WHL")), sysroot $(cat "$SYSROOT/.complete" 2>/dev/null || echo "$SYSROOT")
linked against $MXM_DIR/libmxm.so"
WHEEL_OUT="$(python3 "$REPO/scripts/_make_wheel.py" --repo "$REPO" --so "$SO" --ext-suffix "$EXT_SUFFIX" \
    --py-tag "$PY_TAG" --platform "$PLATFORM" --build-info "$INFO" --out "$REPO/dist")"
echo "  $WHEEL_OUT"

if [ -n "$INSTALL" ]; then
    step "Installing on $INSTALL"
    scp -q "$WHEEL_OUT" "$INSTALL:/tmp/"
    # shellcheck disable=SC2029
    ssh "$INSTALL" "$PIP install --no-deps --force-reinstall /tmp/$(basename "$WHEEL_OUT")"
fi

cat <<EOF

On the board (torch $TORCH_VERSION installed, libmxm.so.1 in the library path, bitstream loaded):
    $PIP install --no-deps $(basename "$WHEEL_OUT")
    sudo -E python3 -c "import torch, ursa_torch; print(ursa_torch.info())"
EOF
