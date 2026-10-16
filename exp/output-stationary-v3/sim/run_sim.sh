#!/bin/bash
# Cycle-level simulation of the v3 HLS RTL with Icarus Verilog.
#
# Usage: ./run_sim.sh <ip_dir> [SA] [P] [Q] [M] [RDLAT] [WRLAT]
#   <ip_dir>: unpacked IP, e.g. ../ip_ursa/ursa_vanilla_8x8_acc20
#
# The HLS RTL uses `always @(*)` blocks that assign constants. Icarus does not
# evaluate them at time 0, so the copy below turns them into always_comb
# (-g2012). The original files are not touched.
set -e
command -v iverilog >/dev/null || { echo "iverilog not found (sudo apt install iverilog)"; exit 1; }
IP=${1:?usage: run_sim.sh <ip_dir> [SA P Q M RDLAT WRLAT]}
SA=${2:-8}; P=${3:-16}; Q=${4:-32}; M=${5:-144}; RDL=${6:-1}; WRL=${7:-1}
HERE=$(cd "$(dirname "$0")" && pwd)
WORK=${HERE}/work_${SA}
rm -rf "${WORK}"; mkdir -p "${WORK}/rtl"

cp "${IP}"/hdl/verilog/* "${WORK}/rtl/"
sed -i 's/always @ (\*) begin/always_comb begin/' "${WORK}"/rtl/*.v
# The DATAFLOW top includes HLS's simulation-only deadlock detector, which is
# not shipped in the IP. It only monitors; drop the include.
sed -i 's|^\(\s*\)`include "\(.*_hls_deadlock_detector.vh\)"|\1// removed for iverilog: \2|' "${WORK}"/rtl/*.v

# Check the AXI-Lite offsets the testbench assumes.
grep -hE "^ *ADDR_(ADDR_A0|ADDR_B0|ADDR_C0|A0_P|B0_Q|M)_DATA_0 *=" "${WORK}"/rtl/*_s_axi.v || true

iverilog -g2012 -o "${WORK}/sim.vvp" \
    -DSA=${SA} -DP=${P} -DQ=${Q} -DM=${M} -DRDLAT=${RDL} -DWRLAT=${WRL} \
    -I"${WORK}/rtl" "${HERE}/tb_v3.v" "${HERE}/axi_mem.v" "${WORK}"/rtl/*.v
cd "${WORK}" && vvp -n sim.vvp
