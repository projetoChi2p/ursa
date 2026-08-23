#!/bin/bash
#===============================================================================
# do_bitstreams.sh
#
# Sweeps the build matrix: one bitstream per (array size, memory layout).
# With 4 sizes and 3 layouts that is 12 bitstreams.
#
# Assumes do_hls.sh has already produced the IP directories under ip_ursa,
# and that the three block design scripts were exported from Vivado with
# write_bd_tcl.
#===============================================================================

THIS_SCRIPT_FULLNAME=$(realpath "${BASH_SOURCE[0]}")
ROOT_DIR=$(dirname "$THIS_SCRIPT_FULLNAME")

export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

unset LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
unset LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
unset LC_IDENTIFICATION LC_ALL

VIVADO_VERSION=2023.2

if [ -z "$XILINX_VIVADO" ]; then
    for p in /opt/Xilinx /tools/Xilinx /home/tools/Xilinx; do
        if [ -f ${p}/Vivado/${VIVADO_VERSION}/settings64.sh ]; then
            echo "Calling Vivado ${VIVADO_VERSION} settings64.sh"
            source ${p}/Vivado/${VIVADO_VERSION}/settings64.sh
            break
        fi
    done
fi

if [ -z "$XILINX_VIVADO" ]; then
    echo "Could not find Vivado installation."
    exit 1
fi

cd ${ROOT_DIR}

IP_REPO_PATH=$(realpath ${ROOT_DIR}/ip_ursa)
TCL_DIR=$(realpath ${ROOT_DIR}/tcl)
OUT_DIR=${ROOT_DIR}/bitstreams
BUILD_TCL=${TCL_DIR}/build_one.tcl

mkdir -p ${OUT_DIR}

# ─── Sweep ────────────────────────────────────────────────────────────────
ARRAY_SZ=(2 4 8 16)
# ARRAY_SZ=(8)

ACC_BITS_LIST=(20)
VARIANT=vanilla

# Memory layouts. Each name maps to the block design script exported from
# Vivado. The layouts differ only in where A, B and C live:
#   bram   : all three in PL block RAM
#   ocm    : all three in on-chip memory, through the ACP port
#   hybrid : A in block RAM, B and C in on-chip memory
LAYOUTS=(bram ocm hybrid)
# LAYOUTS=(bram)

# Parallel jobs for synthesis and implementation.
JOBS=${JOBS:-4}

SUMMARY=${OUT_DIR}/summary.csv
if [ ! -f ${SUMMARY} ]; then
    echo "build,variant,sa_size,acc_bits,layout,status,wns_ns" > ${SUMMARY}
fi

TOTAL=$(( ${#ARRAY_SZ[@]} * ${#ACC_BITS_LIST[@]} * ${#LAYOUTS[@]} ))
COUNT=0
FAILED=0

START_ALL=$(date +%s)

for sz in ${ARRAY_SZ[*]}; do
for acc in ${ACC_BITS_LIST[*]}; do
for layout in ${LAYOUTS[*]}; do

    COUNT=$((COUNT+1))

    ip_name="ursa_${VARIANT}_${sz}x${sz}_acc${acc}"
    build_name="${ip_name}_${layout}"
    ip_repo="${IP_REPO_PATH}/${ip_name}"
    bd_tcl="${TCL_DIR}/bd_${layout}.tcl"

    echo ""
    echo "########################################################################"
    echo "# [${COUNT}/${TOTAL}] ${build_name}"
    echo "########################################################################"

    if [ -f "${OUT_DIR}/${build_name}.bit" ]; then
        echo "*** Bitstream found. Skip. ***"
        continue
    fi

    if [ ! -d "${ip_repo}" ]; then
        echo "ERROR: IP directory not found: ${ip_repo}"
        echo "       Run do_hls.sh first."
        echo "${build_name},${VARIANT},${sz},${acc},${layout},no_ip," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    if [ ! -f "${bd_tcl}" ]; then
        echo "ERROR: block design script not found: ${bd_tcl}"
        echo "       Export it from Vivado with write_bd_tcl."
        echo "${build_name},${VARIANT},${sz},${acc},${layout},no_bd," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    START=$(date +%s)

    vivado -mode batch -nojournal -notrace \
           -log ${OUT_DIR}/${build_name}_vivado.log \
           -source ${BUILD_TCL} \
           -tclargs "${ip_repo}" "${bd_tcl}" "${OUT_DIR}" "${build_name}" "${JOBS}"
    RC=$?

    ELAPSED=$(( $(date +%s) - START ))

    if [ ${RC} -eq 0 ]; then
        WNS=$(grep "^wns_ns" ${OUT_DIR}/${build_name}_summary.txt 2>/dev/null | awk '{print $3}')
        echo "${build_name},${VARIANT},${sz},${acc},${layout},ok,${WNS}" >> ${SUMMARY}
        echo ">>> ${build_name} OK in ${ELAPSED}s (WNS ${WNS} ns)"
        # The project directory holds no results we did not already copy out.
        rm -rf ${OUT_DIR}/${build_name}.proj
    else
        echo "${build_name},${VARIANT},${sz},${acc},${layout},failed_rc${RC}," >> ${SUMMARY}
        echo ">>> ${build_name} FAILED (rc=${RC}) after ${ELAPSED}s"
        echo ">>> log: ${OUT_DIR}/${build_name}_vivado.log"
        FAILED=$((FAILED+1))
        # Kept on failure, so the run can be opened and inspected.
    fi

done
done
done

TOTAL_ELAPSED=$(( $(date +%s) - START_ALL ))

echo ""
echo "########################################################################"
echo "# Done in $((TOTAL_ELAPSED/60))m$((TOTAL_ELAPSED%60))s. ${FAILED} failed of ${TOTAL}."
echo "# Summary: ${SUMMARY}"
echo "########################################################################"
cat ${SUMMARY}