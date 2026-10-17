#!/usr/bin/env bash
# Package the URSA Linux driver for one array size, and optionally send it to
# the board.
#
#   ./make_pynq.sh SA [user@host[:dir]]
#
#   SA         2, 4, 8 or 16
#   VARIANT    env, bitstream variant (default vanilla; e.g. vanilla-f123)
#
# Produces dist/ursa_sa<SA>/ and dist/ursa_sa<SA>.tar.gz:
#   include/   mxm.h ursa_linux.h
#   lib/       libmxm.so.1.0.0 (+ symlinks), cross-built here
#   bin/       test_mxm, cross-built here
#   bitstream/ <design>.bit.bin (converted with bootgen if missing)
#   src/       driver sources + Makefile, to rebuild on the board with `make`
#   run_test.sh
# With a destination, the tarball is copied with scp and unpacked there
# (default dir: the remote home).
set -euo pipefail

usage() { echo "usage: $0 {2|4|8|16} [user@host[:dir]]" >&2; exit 1; }
[ $# -ge 1 ] && [ $# -le 2 ] || usage
SA=$1
case "$SA" in 2|4|8|16) ;; *) usage ;; esac
DEST=${2:-}
VARIANT=${VARIANT:-vanilla}

here=$(cd "$(dirname "$0")" && pwd)
root=$(cd "$here/.." && pwd)
layout="$root/vitis_component/mxm-ursa/src/ursa_v3_layout.h"

# Clock the design was built for: _fNNN in the variant, 100 MHz without it.
if [[ "$VARIANT" =~ -f([0-9]+)$ ]]; then MHZ=${BASH_REMATCH[1]}; else MHZ=100; fi

design="ursa_${VARIANT}_${SA}x${SA}_acc20_bram"
bit="$root/bitstreams/$design.bit"
binf="$bit.bin"

# ── bitstream ───────────────────────────────────────────────────────────────
if [ ! -f "$binf" ] || { [ -f "$bit" ] && [ "$bit" -nt "$binf" ]; }; then
    [ -f "$bit" ] || { echo "missing $bit" >&2; exit 1; }
    "$here/bit2bin.sh" "$bit"
fi

# ── cross build ─────────────────────────────────────────────────────────────
make -s -C "$here" lib test_mxm SA="$SA"

# ── package ─────────────────────────────────────────────────────────────────
name="ursa_sa$SA"
pkg="$here/dist/$name"
rm -rf "$pkg" "$pkg.tar.gz"
mkdir -p "$pkg"/{include,lib,bin,bitstream,src}

cp "$here"/mxm.h "$here"/ursa_linux.h               "$pkg/include/"
cp -P "$here/build/sa$SA"/libmxm.so*                "$pkg/lib/"
cp "$here/test_mxm"                                 "$pkg/bin/"
cp "$binf"                                          "$pkg/bitstream/"
cp "$here"/{ursa_linux.c,ursa_linux.h,mxm_ursa.c,mxm.h,test_mxm.c} "$layout" "$pkg/src/"

# Board Makefile: native compiler, this SA, layout header alongside.
sed -e "s|^SA      ?= .*|SA      ?= $SA|" \
    -e "s|^CROSS   ?= .*|CROSS   ?=|" \
    -e "s|^LAYOUT  := .*|LAYOUT  := .|" \
    -e "/^bin:/,/^\$/d" \
    "$here/Makefile" > "$pkg/src/Makefile"

cat > "$pkg/run_test.sh" <<EOF
#!/bin/sh
# Load the bitstream, set FCLK0 to $MHZ MHz and run the self-test.
# Uses the prebuilt lib/ and bin/; after rebuilding in src/ (make), run
#   LIB=src/build/sa$SA BIN=src/test_mxm ./run_test.sh
cd "\$(dirname "\$0")"
LIB=\${LIB:-lib}
BIN=\${BIN:-bin/test_mxm}
exec sudo LD_LIBRARY_PATH="\$LIB" "\$BIN" "bitstream/$(basename "$binf")" $MHZ
EOF
chmod +x "$pkg/run_test.sh"

cat > "$pkg/README.txt" <<EOF
URSA v3 driver, ${SA}x${SA} array, bitstream $design ($MHZ MHz).
Common API: include/mxm.h, link with -Llib -lmxm.

  ./run_test.sh                     load bitstream, set clock, self-test
  cd src && make                    rebuild lib and test on the board
  gcc app.c -Iinclude -Llib -lmxm   build an application
  sudo LD_LIBRARY_PATH=lib ./app
EOF

tar -C "$here/dist" -czf "$pkg.tar.gz" "$name"
echo "package: $pkg.tar.gz"
(cd "$here/dist" && find "$name" | sort | sed 's/^/  /')

# ── send ────────────────────────────────────────────────────────────────────
if [ -n "$DEST" ]; then
    host=${DEST%%:*}
    dir=.
    [[ "$DEST" == *:* ]] && dir=${DEST#*:}
    [ -n "$dir" ] || dir=.
    ssh "$host" "mkdir -p '$dir'"
    scp "$pkg.tar.gz" "$host:$dir/"
    ssh "$host" "cd '$dir' && rm -rf '$name' && tar xzf '$name.tar.gz' && rm '$name.tar.gz'"
    echo "on $host: $dir/$name   (run: $dir/$name/run_test.sh)"
fi
