#!/bin/bash
#===============================================================================
# do_bitstreams.sh
#
# Builds every bitstream this work needs.
#
# Two groups:
#
#   1. The vanilla matrix, one build per (array size, memory layout). This is
#      the characterization sweep behind the performance and area numbers, and
#      it is still a cartesian product.
#
#   2. The mitigated designs of the irradiation campaign. Mitigation is not
#      uniform across the other two axes, so these are listed one by one.
#
# Two things keep the second group short:
#
#   - One block design script serves every array size, because the IP
#     repository is what selects the geometry. ursa_vanilla_tmr_ocm.tcl covers
#     both the 4x4 and the 8x8 triplicated OCM designs.
#   - Scrubbing is a bitstream property, so scrub=both produces the unscrubbed
#     and the scrubbed bitstream from a single implementation.
#
# Assumes do_hls.sh has already produced the IP directories under ip_ursa, and
# that the block design scripts were exported from Vivado with write_bd_tcl.
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
XDC_DIR=${ROOT_DIR}/xdc
OUT_DIR=${ROOT_DIR}/bitstreams
BUILD_TCL=${TCL_DIR}/build_one.tcl

mkdir -p ${OUT_DIR}

# ─── Sweep ────────────────────────────────────────────────────────────────
#ARRAY_SZ=(2 4 8 16)
ARRAY_SZ=(8)

ACC_BITS_LIST=(20)
VARIANT=vanilla

# Memory layouts. Each name maps to the block design script exported from
# Vivado. The layouts differ only in where A, B and C live:
#   bram   : all three in PL block RAM
#   ocm    : all three in on-chip memory, through the ACP port
#   hybrid : A in block RAM, B and C in on-chip memory
#LAYOUTS=(bram ocm hybrid)
LAYOUTS=(bram)

# Parallel jobs for synthesis and implementation.
JOBS=${JOBS:-4}

# ─── Naming ───────────────────────────────────────────────────────────────
#
# Single source of truth for the build name, used both by the ONLY filter and
# by the main loop, so the two can never disagree.
build_name_of() {
    # $1 sa_size  $2 acc_bits  $3 layout  $4 mitig
    local n="ursa_${VARIANT}_${1}x${1}_acc${2}_${3}"
    [ "${4}" = "none" ] || n="${n}_${4}"
    echo "${n}"
}

# ─── Build table ──────────────────────────────────────────────────────────
#
# Fields, space separated:
#
#   sa_size  acc_bits  layout  mitig  bd_tcl  xdc|none  scrub(off|on|both)
#
# mitig is "none" for the unmitigated designs and becomes part of the build
# name otherwise, so a mitigated design never overwrites its vanilla twin.
BUILDS=()

# Group 1: the vanilla matrix. scrub=both costs one extra write_bitstream per
# build and gives every design a scrubbed twin, which is what campaign designs
# 15 and 5 need.
for sz in ${ARRAY_SZ[*]}; do
for acc in ${ACC_BITS_LIST[*]}; do
for layout in ${LAYOUTS[*]}; do
    BUILDS+=("${sz} ${acc} ${layout} none bd_${layout}.tcl none both")
done
done
done

# Group 2: the mitigated designs. The campaign IDs in the comments refer to
# Table 5.1 of the dissertation.
ACC=${ACC_BITS_LIST[0]}
BUILDS+=(
#  "4  ${ACC} ocm    tmr      bd_ocm_tmr.tcl         none on"  # 22
#  "8  ${ACC} ocm    tmr      bd_ocm_tmr.tcl         none on"  # 16
  "8  ${ACC} bram   tmr      bd_bram_tmr.tcl        none on"  # 14
#  "8  ${ACC} hybrid tmr      bd_hybrid_tmr.tcl      none on"  # 21
#  "8  ${ACC} hybrid tmr_edac bd_hybrid_tmr_edac.tcl none on"  # 17
#  "8  ${ACC} bram   tmr_edac bd_bram_tmr_edac.tcl   none on"  # 25 without floorplanning
)

# Pending block designs. Uncomment once they exist.
#BUILDS+=(
#  "8  ${ACC} bram edac         bd_bram_edac.tcl     none               off"  # 7
#  "8  ${ACC} bram tmr_edac_fp  bd_bram_tmr_edac.tcl pblocks_tmr_fp.xdc on"   # 25
#)

# Optional filter: build only the entries whose name matches this extended
# regular expression. Leave empty to build everything.
#   ONLY='bram_tmr$' ./03_do_bitstreams.sh
#   ONLY='tmr'       ./03_do_bitstreams.sh
ONLY=${ONLY:-}
if [ -n "${ONLY}" ]; then
    FILTERED=()
    for entry in "${BUILDS[@]}"; do
        read -r f_sz f_acc f_layout f_mitig _ <<< "${entry}"
        if build_name_of "${f_sz}" "${f_acc}" "${f_layout}" "${f_mitig}" \
           | grep -Eq "${ONLY}"; then
            FILTERED+=("${entry}")
        fi
    done
    BUILDS=("${FILTERED[@]}")
    echo "Filter ONLY='${ONLY}' selected ${#BUILDS[@]} build(s)."
fi

SUMMARY=${OUT_DIR}/summary.csv
if [ ! -f ${SUMMARY} ]; then
    echo "build,variant,sa_size,acc_bits,layout,mitig,scrub,status,wns_ns,whs_ns,lut,lut_pct,ff,ff_pct,dsp,dsp_pct,bram,bram_pct,essential_bits,total_cram_bits" > ${SUMMARY}
fi

TOTAL=${#BUILDS[@]}
COUNT=0
FAILED=0

if [ ${TOTAL} -eq 0 ]; then
    echo "Nothing to build."
    exit 0
fi

START_ALL=$(date +%s)

for entry in "${BUILDS[@]}"; do

    read -r sz acc layout mitig bd xdc scrub <<< "${entry}"

    COUNT=$((COUNT+1))

    ip_name="ursa_${VARIANT}_${sz}x${sz}_acc${acc}"
    build_name=$(build_name_of "${sz}" "${acc}" "${layout}" "${mitig}")

    ip_repo="${IP_REPO_PATH}/${ip_name}"
    bd_tcl="${TCL_DIR}/${bd}"

    if [ "${xdc}" = "none" ]; then
        xdc_path="none"
    else
        xdc_path="${XDC_DIR}/${xdc}"
    fi

    echo ""
    echo "########################################################################"
    echo "# [${COUNT}/${TOTAL}] ${build_name}  (mitig=${mitig}, scrub=${scrub})"
    echo "########################################################################"

    # A build is complete only when every bitstream it was asked for exists.
    need_plain=0; need_scrub=0
    case "${scrub}" in
        off)  need_plain=1 ;;
        on)   need_scrub=1 ;;
        both) need_plain=1; need_scrub=1 ;;
    esac
    have_all=1
    [ ${need_plain} -eq 1 ] && [ ! -f "${OUT_DIR}/${build_name}.bit" ]       && have_all=0
    [ ${need_scrub} -eq 1 ] && [ ! -f "${OUT_DIR}/${build_name}_scrub.bit" ] && have_all=0
    if [ ${have_all} -eq 1 ]; then
        echo "*** Bitstreams found. Skip. ***"
        continue
    fi

    row_prefix="${build_name},${VARIANT},${sz},${acc},${layout},${mitig},${scrub}"

    if [ ! -d "${ip_repo}" ]; then
        echo "ERROR: IP directory not found: ${ip_repo}"
        echo "       Run do_hls.sh first."
        echo "${row_prefix},no_ip,,,,,,,,,,,," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    if [ ! -f "${bd_tcl}" ]; then
        echo "ERROR: block design script not found: ${bd_tcl}"
        echo "       Export it from Vivado with write_bd_tcl."
        echo "${row_prefix},no_bd,,,,,,,,,,,," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    if [ "${xdc_path}" != "none" ] && [ ! -f "${xdc_path}" ]; then
        echo "ERROR: constraints file not found: ${xdc_path}"
        echo "${row_prefix},no_xdc,,,,,,,,,,,," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    START=$(date +%s)

    vivado -mode batch -nojournal -notrace \
           -log ${OUT_DIR}/${build_name}_vivado.log \
           -source ${BUILD_TCL} \
           -tclargs "${ip_repo}" "${bd_tcl}" "${OUT_DIR}" "${build_name}" \
                    "${JOBS}" "${xdc_path}" "${scrub}"
    RC=$?

    ELAPSED=$(( $(date +%s) - START ))

    if [ ${RC} -eq 0 ]; then
        SUMFILE=${OUT_DIR}/${build_name}_summary.txt
        # Exact key match. A prefix match would make "lut" also pick up the
        # "lut_pct" line and put a newline in the middle of the CSV row.
        field() {
            awk -F: -v k="$1" '{
                key=$1; gsub(/[ \t]/,"",key)
                if (key==k) { v=$2; gsub(/[ \t]/,"",v); print v }
            }' ${SUMFILE} 2>/dev/null
        }
        WNS=$(field wns_ns)
        WHS=$(field whs_ns)
        LUT=$(field lut)
        LUT_PCT=$(field lut_pct)
        FF=$(field ff)
        FF_PCT=$(field ff_pct)
        DSP=$(field dsp)
        DSP_PCT=$(field dsp_pct)
        BRAM=$(field bram)
        BRAM_PCT=$(field bram_pct)

        # Essential bits. write_bitstream prints the count to the log; the
        # pattern is matched by shape so a wording change fails visibly with an
        # empty field instead of silently recording the wrong number.
        #
        # With scrub=both the log carries two of these lines, one per
        # write_bitstream. Both describe the same implementation, so either
        # will do and the last one is taken.
        EB_LINE=$(grep -h "essential bits out of" \
                  ${OUT_DIR}/${build_name}_vivado.log 2>/dev/null | tail -1)
        EB=$(echo "${EB_LINE}"    | sed -n 's/.*has \([0-9]*\) essential bits.*/\1/p')
        EBTOT=$(echo "${EB_LINE}" | sed -n 's/.*out of \([0-9]*\) total.*/\1/p')
        if [ -z "${EB}" ]; then
            echo ">>> WARNING: essential bit count not found in the log."
        else
            # The count exists only in the write_bitstream output, so it is
            # appended here rather than written by build_one.tcl.
            {
                echo "essential  : ${EB}"
                echo "cram_total : ${EBTOT}"
                echo "essential_pct : $(awk -v a=${EB} -v b=${EBTOT} 'BEGIN{printf "%.2f", 100*a/b}')"
            } >> ${SUMFILE}
        fi

        echo "${row_prefix},ok,${WNS},${WHS},${LUT},${LUT_PCT},${FF},${FF_PCT},${DSP},${DSP_PCT},${BRAM},${BRAM_PCT},${EB},${EBTOT}" >> ${SUMMARY}
        echo ">>> ${build_name} OK in ${ELAPSED}s (WNS ${WNS} ns, ${EB} essential bits)"
        # The project directory holds no results we did not already copy out.
        rm -rf ${OUT_DIR}/${build_name}.proj
    else
        echo "${row_prefix},failed_rc${RC},,,,,,,,,,,," >> ${SUMMARY}
        echo ">>> ${build_name} FAILED (rc=${RC}) after ${ELAPSED}s"
        echo ">>> log: ${OUT_DIR}/${build_name}_vivado.log"
        FAILED=$((FAILED+1))
        # Kept on failure, so the run can be opened and inspected.
    fi

done

TOTAL_ELAPSED=$(( $(date +%s) - START_ALL ))

echo ""
echo "########################################################################"
echo "# Done in $((TOTAL_ELAPSED/60))m$((TOTAL_ELAPSED%60))s. ${FAILED} failed of ${TOTAL}."
echo "# Summary: ${SUMMARY}"
echo "########################################################################"
cat ${SUMMARY}