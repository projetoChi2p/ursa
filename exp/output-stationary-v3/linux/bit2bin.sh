#!/usr/bin/env bash
# Convert Vivado .bit files to the .bit.bin the Linux FPGA manager loads
# (ursa_load_bitstream). Uses the bootgen of the Vivado/Vitis install in PATH.
# Each output is written next to its .bit.
#
#   ./bit2bin.sh                         every ../bitstreams/*_bram.bit
#   ./bit2bin.sh path/a.bit path/b.bit   just those
set -euo pipefail

command -v bootgen >/dev/null || {
    echo "bootgen not in PATH (source the Vivado/Vitis settings64.sh)" >&2; exit 1; }

here=$(cd "$(dirname "$0")" && pwd)
if [ $# -eq 0 ]; then
    shopt -s nullglob
    set -- "$here"/../bitstreams/*_bram.bit
    [ $# -gt 0 ] || { echo "no *_bram.bit in $here/../bitstreams" >&2; exit 1; }
fi

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

fail=0
for bit in "$@"; do
    bit=$(realpath "$bit")
    out="$bit.bin"
    name=$(basename "$bit" .bit)
    echo "all:{ $bit }" > "$tmp/$name.bif"
    if ! bootgen -image "$tmp/$name.bif" -arch zynq -process_bitstream bin -w on \
            > "$tmp/$name.log" 2>&1; then
        echo "FAIL $bit" >&2; cat "$tmp/$name.log" >&2; fail=1; continue
    fi
    # Sanity: the sync word AA995566 appears byte-swapped (66 55 99 AA) near the start.
    if ! head -c 256 "$out" | od -An -tx1 | tr -d ' \n' | grep -q 665599aa; then
        echo "FAIL $out: no sync word" >&2; fail=1; continue
    fi
    printf 'OK   %s (%s bytes)\n' "$out" "$(stat -c %s "$out")"
done
exit $fail
