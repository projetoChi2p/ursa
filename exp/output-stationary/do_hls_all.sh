#!/bin/bash

THIS_SCRIPT=${BASH_SOURCE[0]}
THIS_SCRIPT_FULLNAME=$(realpath "$THIS_SCRIPT")
THIS_SCRIPT=$(basename "${THIS_SCRIPT_FULLNAME}")
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

SND_ALERT=$(find /usr/share/ -iname '*.wav' 2>/dev/null | head -1)

warn_and_exit() {
    RC=$1
    MSG=$2
    echo "Result ${RC}."
    mail -s "Result ${RC} ${MSG}" $(whoami) < /dev/null 2>/dev/null

    if [[ "$HOSTNAME" == "oli" ]]; then
        while true; do
            [ -n "$SND_ALERT" ] && play $SND_ALERT
            sleep 5
        done
    fi
    exit ${RC}
}

cd ${ROOT_DIR}

IP_REPO_PATH=$(realpath ${ROOT_DIR}/ip_ursa)
mkdir -p ${IP_REPO_PATH}

HLS_WS_DIR=build_hls.ws
IP_VERSION=0.1
TOP_FUNCTION=mxm_execute_ursa

# ─── Sweep ────────────────────────────────────────────────────────────────
# Only sizes that divide the benchmark dimensions are useful: every case in
# the suite has P and Q a power of two, and the shell tiles by integer
# division, so 6, 10, 12 and 14 would run no cases at all.
ARRAY_SZ=(2 4 8 16)

# Accumulator widths to synthesize. 20 is the design point used for the TNS
# results; 32 is there to measure the area cost of a wider accumulator.
ACC_BITS_LIST=(20)

# Design variant. Vanilla is the plain array, with no fault-tolerance
# mechanism. Later rounds will add the hardened variants.
VARIANT=vanilla

SUMMARY=${IP_REPO_PATH}/summary.csv
echo "config,variant,sa_size,acc_bits,status" > ${SUMMARY}

for sz in ${ARRAY_SZ[*]}; do
for acc in ${ACC_BITS_LIST[*]}; do

    # The name carries every parameter that changes the hardware, so two
    # builds can never be confused for one another later. A, B and C widths
    # are fixed in settings.h, so they do not appear here.
    config_name="ursa_${VARIANT}_${sz}x${sz}_acc${acc}"

    if [ -f ${IP_REPO_PATH}/${config_name}.zip ]; then
        echo "*** IP ${config_name} found. Skip. ***"
        echo "${config_name},${VARIANT},${sz},${acc},skipped" >> ${SUMMARY}
        continue
    fi

    echo ""
    echo "=================================================================="
    echo " Build ${config_name}"
    echo "=================================================================="

    cd ${ROOT_DIR}
    rm -rf ${ROOT_DIR}/${HLS_WS_DIR}
    mkdir -p ${ROOT_DIR}/${HLS_WS_DIR}/ursa
    cp ${ROOT_DIR}/do_hls_config.cfg.in ${ROOT_DIR}/${HLS_WS_DIR}/ursa/hls_config.cfg

    CFG=${HLS_WS_DIR}/ursa/hls_config.cfg
    sed -i "s#__ROOT_DIR__#${ROOT_DIR}#g"       ${CFG}
    sed -i "s#__CONFIG_NAME__#${config_name}#g" ${CFG}
    sed -i "s#__IP_VERSION__#${IP_VERSION}#g"   ${CFG}
    sed -i "s#__VARIANT__#${VARIANT}#g"         ${CFG}
    sed -i "s#__SZ__#${sz}#g"                   ${CFG}
    sed -i "s#__ACC__#${acc}#g"                 ${CFG}

    cd ${ROOT_DIR}/${HLS_WS_DIR}

    vitis-run --mode hls --csim --config ${ROOT_DIR}/${CFG} \
              --work_dir ${ROOT_DIR}/${HLS_WS_DIR}/ursa
    RC=$?
    if [ ${RC} -eq 0 ]; then
        echo "C Simulation ${config_name} completed."
    else
        echo "C Simulation ${config_name} failed. Result ${RC}."
        echo "${config_name},${VARIANT},${sz},${acc},csim_failed" >> ${SUMMARY}
        warn_and_exit ${RC} "C Simulation ${config_name}"
    fi

    v++ -c --mode hls --config ${ROOT_DIR}/${CFG} \
        --work_dir ${ROOT_DIR}/${HLS_WS_DIR}/ursa
    RC=$?
    if [ ${RC} -eq 0 ]; then
        echo "C Synthesis ${config_name} completed."
    else
        echo "C Synthesis ${config_name} failed. Result ${RC}."
        echo "${config_name},${VARIANT},${sz},${acc},synth_failed" >> ${SUMMARY}
        warn_and_exit ${RC} "C Synthesis ${config_name}"
    fi

    cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/${TOP_FUNCTION}.zip \
       ${IP_REPO_PATH}/${config_name}.zip || warn_and_exit $? "Package copy ${config_name}"

    cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/reports/hls_compile.rpt \
       ${IP_REPO_PATH}/${config_name}_compile.rpt || warn_and_exit $? "Report copy ${config_name}"

    cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/reports/v++_compile_ursa_guidance.html \
       ${IP_REPO_PATH}/${config_name}_v++_compile_guidance.html

    # Unpacked copy, for Vivado to pick up as an IP repository.
    IP_DEST_DIR=${IP_REPO_PATH}/${config_name}
    rm -rf "${IP_DEST_DIR}"
    mkdir -p "${IP_DEST_DIR}"
    cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/${TOP_FUNCTION}.zip ${IP_DEST_DIR}/${config_name}.zip
    unzip -o -q ${IP_DEST_DIR}/${config_name}.zip -d ${IP_DEST_DIR}

    echo "${config_name},${VARIANT},${sz},${acc},ok" >> ${SUMMARY}

done
done

echo ""
echo "=================================================================="
echo " Done. Summary in ${SUMMARY}"
echo "=================================================================="
cat ${SUMMARY}