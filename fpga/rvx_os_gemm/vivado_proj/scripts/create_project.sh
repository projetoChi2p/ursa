#! /usr/bin/env bash
# -----------------------------------------------------------------------------
# Recria o projeto Vivado do SoC RVX + URSA (ZedBoard) a partir do repositorio.
#
# Uso:
#   ./01_create_project.sh           # so cria o projeto
#   ./01_create_project.sh --run     # cria, sintetiza e gera bitstream
#   ./01_create_project.sh --gui     # cria e abre a GUI ao final
# -----------------------------------------------------------------------------

set -e  # sai no primeiro erro
set -u  # variavel nao definida e erro

THIS_SCRIPT_FULLNAME=$(realpath "${BASH_SOURCE[0]}")
THIS_SCRIPT=$(basename "${THIS_SCRIPT_FULLNAME}")
SCRIPT_DIR=$(dirname "${THIS_SCRIPT_FULLNAME}")
ROOT_DIR=$(realpath "${SCRIPT_DIR}/..")

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    echo "Script sourced? Abort."
    return 1
fi

echo "${THIS_SCRIPT}: RUNNING ${THIS_SCRIPT_FULLNAME}"
echo "Repositorio: ${ROOT_DIR}"

# -----------------------------------------------------------------------------
# Argumentos
# -----------------------------------------------------------------------------
TCL_ARGS=""
VIVADO_MODE="batch"

for arg in "$@"; do
    case "$arg" in
        --run) TCL_ARGS="${TCL_ARGS} --run" ;;
        --gui) VIVADO_MODE="gui" ;;
        -h|--help)
            echo "Uso: $0 [--run] [--gui]"
            echo "  --run   roda sintese e implementacao ate o bitstream"
            echo "  --gui   abre a GUI do Vivado ao final"
            exit 0
            ;;
        *)
            echo "Argumento desconhecido: $arg"
            exit 1
            ;;
    esac
done

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
            # settings64.sh usa variaveis nao definidas; relaxa o -u aqui
            set +u
            # shellcheck disable=SC1090
            source "$s"
            set -u
            break
        fi
    done
fi

if ! command -v vivado > /dev/null 2>&1; then
    echo "ERRO: nao encontrei o Vivado. Rode o settings64.sh da sua instalacao"
    echo "      ou acrescente o caminho em SETTINGS_CANDIDATES neste script."
    exit 1
fi

echo "Vivado: $(command -v vivado)"
vivado -version | head -1

# -----------------------------------------------------------------------------
# Checagens do repositorio
# -----------------------------------------------------------------------------
for d in rtl bd constraints ip_repo; do
    if [ ! -d "${ROOT_DIR}/${d}" ]; then
        echo "ERRO: falta o diretorio ${ROOT_DIR}/${d}"
        exit 1
    fi
done

if [ ! -f "${SCRIPT_DIR}/create_project.tcl" ]; then
    echo "ERRO: falta ${SCRIPT_DIR}/create_project.tcl"
    exit 1
fi

# -----------------------------------------------------------------------------
# Limpa build anterior
# -----------------------------------------------------------------------------
BUILD_DIR="${ROOT_DIR}/build"

if [ -d "${BUILD_DIR}" ]; then
    echo "Removendo build anterior: ${BUILD_DIR}"
    rm -rf "${BUILD_DIR}"
fi

mkdir -p "${BUILD_DIR}"

# -----------------------------------------------------------------------------
# Roda o Vivado (logs dentro de build/)
# -----------------------------------------------------------------------------
cd "${BUILD_DIR}"

echo "Criando o projeto..."

# shellcheck disable=SC2086
vivado -mode "${VIVADO_MODE}" \
       -source "${SCRIPT_DIR}/create_project.tcl" \
       -log "${BUILD_DIR}/vivado.log" \
       -journal "${BUILD_DIR}/vivado.jou" \
       -nolog -notrace \
       -tclargs ${TCL_ARGS}

echo ""
echo "${THIS_SCRIPT}: DONE"
echo "Projeto: ${BUILD_DIR}/rvx-ursa/rvx-ursa.xpr"