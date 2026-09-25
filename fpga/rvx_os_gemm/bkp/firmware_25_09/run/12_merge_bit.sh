#! /usr/bin/env bash
# -----------------------------------------------------------------------------
# Injeta o firmware (.elf) nas BRAMs de um bitstream ja implementado.
# Uso recorrente, a cada alteracao do firmware.
#
#   ./12_merge_bit.sh                  # usa o ELF e o bitstream padrao
#   ./12_merge_bit.sh <elf>            # ELF especifico
#   ./12_merge_bit.sh <elf> <bit>      # ELF e bitstream especificos
#
# Pode ser chamado de qualquer diretorio. Caminhos relativos passados como
# argumento sao resolvidos a partir de onde voce chamou o script.
#
# Depende de build/bram.mmi, gerado por 10_report_bram.tcl + 11_yaml2mmi_128k.py
# a partir da implementacao atual. Se a implementacao for refeita e o placement
# das BRAMs mudar, o MMI precisa ser regerado.
# -----------------------------------------------------------------------------

set -e  # sai no primeiro erro

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

# Resolve um caminho relativo a partir do diretorio de chamada
resolve_path() {
    local p="$1"
    if [[ "$p" = /* ]]; then
        echo "$p"
    else
        echo "${CALL_DIR}/${p}"
    fi
}

# -----------------------------------------------------------------------------
# Entradas
# -----------------------------------------------------------------------------
BIT_NAME=rvx_zynq
PROC_PATH=design/steel_128k   # precisa bater com o InstPath do .mmi

DEFAULT_ELF="${ROOT_DIR}/../../driver/ursa_cnn/build/driver-ursa.elf"
DEFAULT_BIT="${ROOT_DIR}/../../vivado_proj/build/rvx-ursa/rvx-ursa.runs/impl_1/${BIT_NAME}.bit"

if [ -n "${1:-}" ]; then
    ELF_FILE=$(resolve_path "$1")
else
    ELF_FILE="${DEFAULT_ELF}"
    echo "Nenhum ELF informado, usando o padrao."
fi

if [ -n "${2:-}" ]; then
    BIT_INPUT=$(resolve_path "$2")
else
    BIT_INPUT="${DEFAULT_BIT}"
fi

MMI_FILE="${ROOT_DIR}/build/bram.mmi"

# -----------------------------------------------------------------------------
# Checagens
# -----------------------------------------------------------------------------
if [ ! -f "$ELF_FILE" ]; then
    echo "ERRO: nao encontrei o ELF: $ELF_FILE"
    echo "      compile o firmware ou passe o caminho como primeiro argumento."
    exit 1
fi

if [ ! -f "$BIT_INPUT" ]; then
    echo "ERRO: nao encontrei o bitstream: $BIT_INPUT"
    echo "      rode a implementacao ou passe o .bit como segundo argumento."
    exit 1
fi

if [ ! -f "$MMI_FILE" ]; then
    echo "ERRO: nao encontrei o MMI: $MMI_FILE"
    echo "      gere com 10_report_bram.tcl e 11_yaml2mmi_128k.py."
    exit 1
fi

ELF_FILE=$(realpath "${ELF_FILE}")
BIT_INPUT=$(realpath "${BIT_INPUT}")
MMI_FILE=$(realpath "${MMI_FILE}")

# -----------------------------------------------------------------------------
# Ambiente Xilinx
# -----------------------------------------------------------------------------
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

if ! command -v updatemem > /dev/null 2>&1; then
    echo "ERRO: nao encontrei o updatemem. Rode o settings64.sh da sua instalacao."
    exit 1
fi

# -----------------------------------------------------------------------------
# Saida
# -----------------------------------------------------------------------------
ELF_NAME=$(basename "${ELF_FILE}")
APP_NAME="${ELF_NAME%.*}"

OUT_DIR="${ROOT_DIR}/build"
mkdir -p "${OUT_DIR}"
BIT_OUTPUT="${OUT_DIR}/${BIT_NAME}_${APP_NAME}.bit"

MMI_PART=$(grep -o 'Val="[^"]*"' "${MMI_FILE}" | head -1 | cut -d'"' -f2)

echo "Bitstream de entrada: $BIT_INPUT"
echo "MMI:                  $MMI_FILE  (part ${MMI_PART})"
echo "Aplicacao:            $ELF_FILE"
echo "Saida:                $BIT_OUTPUT"

# -----------------------------------------------------------------------------
# Merge
# -----------------------------------------------------------------------------
cd "${OUT_DIR}"   # logs do updatemem ficam em build/

rm -f "${BIT_OUTPUT}"

echo "Processando ${ELF_NAME}..."

updatemem -force \
          -bit  "${BIT_INPUT}" \
          -meminfo "${MMI_FILE}" \
          -data "${ELF_FILE}" \
          -proc "${PROC_PATH}" \
          -out  "${BIT_OUTPUT}"

if [ ! -f "${BIT_OUTPUT}" ]; then
    echo "ERRO: updatemem nao gerou ${BIT_OUTPUT}"
    exit 1
fi

rm -f updatemem*.log updatemem*.jou

echo ""
echo "${THIS_SCRIPT}: DONE"
echo "Bitstream com firmware: ${BIT_OUTPUT}"