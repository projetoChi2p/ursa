#! /usr/bin/env bash
# -----------------------------------------------------------------------------
# Programa a ZedBoard via JTAG (PL + ARM) usando XSDB.
#
#   ./03_program_online_jtag.sh                 # usa o bitstream padrao (saida do 12)
#   ./03_program_online_jtag.sh <bitstream.bit>
#
# Pode ser chamado de qualquer diretorio.
# -----------------------------------------------------------------------------

set -e

CALL_DIR=$(pwd)

THIS_SCRIPT=${BASH_SOURCE[0]}
THIS_SCRIPT_FULLNAME=$(realpath "$THIS_SCRIPT")
THIS_SCRIPT=$(basename "${THIS_SCRIPT_FULLNAME}")
ROOT_DIR=$(dirname "$THIS_SCRIPT_FULLNAME")

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    echo "${THIS_SCRIPT}: RUNNING $THIS_SCRIPT_FULLNAME"
else
    echo "Script sourced? Abort."
    return 1
fi

resolve_path() {
    local p="$1"
    if [[ "$p" = /* ]]; then echo "$p"; else echo "${CALL_DIR}/${p}"; fi
}

DEFAULT_BIT="${ROOT_DIR}/build/rvx_zynq_driver-ursa.bit"

if [ -n "${1:-}" ]; then
    BIT_FILE=$(resolve_path "$1")
else
    BIT_FILE="${DEFAULT_BIT}"
    echo "Nenhum bitstream informado, usando o padrao."
fi

if [ ! -f "$BIT_FILE" ]; then
    echo "ERRO: nao encontrei o bitstream: $BIT_FILE"
    exit 1
fi
BIT_FILE=$(realpath "$BIT_FILE")

if [ -z "${XILINX_VIVADO:-}" ]; then
    SETTINGS_CANDIDATES=(
        /opt/Xilinx/Vivado/2023.2/settings64.sh
        /tools/Xilinx/Vivado/2023.2/settings64.sh
        /opt/Xilinx/Vitis/2023.2/settings64.sh
        /tools/Xilinx/Vitis/2023.2/settings64.sh
    )
    for s in "${SETTINGS_CANDIDATES[@]}"; do
        if [ -f "$s" ]; then
            echo "Carregando ambiente: $s"
            # shellcheck disable=SC1090
            source "$s"
            break
        fi
    done
fi

if ! command -v xsdb > /dev/null 2>&1; then
    echo "ERRO: nao encontrei o xsdb. Rode o settings64.sh da sua instalacao."
    exit 1
fi

echo "Bitstream: $BIT_FILE"
echo "FPGA/ARM programming over JTAG using XSDB"

cd "${ROOT_DIR}"
TERM=ansi-generic xsdb "${ROOT_DIR}/03_program_online_jtag.tcl" "${BIT_FILE}"