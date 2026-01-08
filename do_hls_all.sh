#!/bin/bash

THIS_SCRIPT=${BASH_SOURCE[0]}
THIS_SCRIPT_FULLNAME=$(realpath "$THIS_SCRIPT")\
THIS_SCRIPT=$(basename "${THIS_SCRIPT_FULLNAME}")
ROOT_DIR=$(dirname "$THIS_SCRIPT_FULLNAME")

export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

unset LC_CTYPE
unset LC_NUMERIC
unset LC_TIME
unset LC_COLLATE
unset LC_MONETARY
unset LC_MESSAGES
unset LC_PAPER
unset LC_NAME
unset LC_ADDRESS
unset LC_TELEPHONE
unset LC_MEASUREMENT
unset LC_IDENTIFICATION
unset LC_ALL

VIVADO_VERSION=2023.2

if [ -z "$XILINX_VIVADO" ]; then
    if [ -f /opt/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh ]; then
        echo Calling Vivado ${VIVADO_VERSION} settings64.sh
        source /opt/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh
    elif [ -f /tools/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh ]; then
        echo Calling Vivado ${VIVADO_VERSION} settings64.sh
        source /tools/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh
    elif [ -f /home/tools/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh ]; then
        echo Calling Vivado ${VIVADO_VERSION} settings64.sh
        source /home/tools/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh
    else
        echo Could not find Vivado installation.
        exit -1
    fi
fi

if [ -z "$XILINX_VIVADO" ]; then
    echo Could not find Vivado installation.
    exit -1
fi

SND_ALERT=$(find /usr/share/ -iname '*.wav' | head -1)

warn_and_exit() {
    RC=$1
    MSG=$2
    echo Result ${RC}.
    mail -s "Result ${RC} ${MSG}" $(whoami) < /dev/null

    if [[ "$HOSTNAME" == "oli" ]]; then
        while true; do
            if [ ! -z "$SND_ALERT" ]; then
                play $SND_ALERT
            fi
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

#SA_SIZE
ARRAY_SZ=(6)

for sz in ${ARRAY_SZ[*]} ; do
        config_name="ursa_${sz}x${sz}"

        if [ -f ${IP_REPO_PATH}/ursa_${config_name}.zip ]; then
            echo "*** IP ${config_name} found. Skip. ***"
        else
            echo "Build ${config_name}."

        cd ${ROOT_DIR}
        rm -rf ${ROOT_DIR}/${HLS_WS_DIR}
        mkdir -p ${ROOT_DIR}/${HLS_WS_DIR}/ursa
        cp ${ROOT_DIR}/do_hls_config.cfg.in ${ROOT_DIR}/${HLS_WS_DIR}/ursa/hls_config.cfg

        sed -i "s#__ROOT_DIR__#${ROOT_DIR}#g"                   ${HLS_WS_DIR}/ursa/hls_config.cfg
        sed -i "s#__CONFIG_NAME__#${config_name}#g"             ${HLS_WS_DIR}/ursa/hls_config.cfg
        sed -i "s#__IP_VERSION__#${IP_VERSION}#g"               ${HLS_WS_DIR}/ursa/hls_config.cfg
        sed -i "s#__SZ__#${sz}#g"                               ${HLS_WS_DIR}/ursa/hls_config.cfg

        cd ${ROOT_DIR}/${HLS_WS_DIR}

        vitis-run --mode hls --csim --config ${ROOT_DIR}/${HLS_WS_DIR}/ursa/hls_config.cfg --work_dir ${ROOT_DIR}/${HLS_WS_DIR}/ursa
        RC=$?
        echo " "
        echo " "
        if [ ${RC} -eq 0 ]; then
            echo C Simulation ${config_name} completed.
        else
            echo C Simulation ${config_name} failed. Result ${RC}.
            warn_and_exit ${RC} "C Simulation ${config_name}"
            continue
        fi

        v++ -c --mode hls --config ${ROOT_DIR}/${HLS_WS_DIR}/ursa/hls_config.cfg --work_dir ${ROOT_DIR}/${HLS_WS_DIR}/ursa
        RC=$?
        echo " "
        echo " "
        if [ ${RC} -eq 0 ]; then
            echo C Synthesis ${config_name} completed.
        else
            echo C Synthesis ${config_name} failed. Result ${RC}.
            warn_and_exit ${RC} "C Synthesis ${config_name}"
            continue
        fi

        # Copia o IP .zip gerado
        cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/${TOP_FUNCTION}.zip ${IP_REPO_PATH}/${config_name}.zip
        RC=$?
        echo " "
        echo " "
        if [ ${RC} -eq 0 ]; then
            echo Package copy ${config_name} completed.
        else
            echo Package copy ${config_name} failed. Result ${RC}.
            warn_and_exit ${RC} "Package copy ${config_name}"
            continue
        fi

        # Copia o relatório da síntese
        cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/reports/hls_compile.rpt ${IP_REPO_PATH}/${config_name}_compile.rpt
        RC=$?
        echo " "
        echo " "
        if [ ${RC} -eq 0 ]; then
            echo Report copy ${config_name} completed.
        else
            echo Report copy ${config_name} failed. Result ${RC}.
            warn_and_exit ${RC} "Report copy ${config_name}"
            continue
        fi

        # Copia o relatório em HTML da síntese com guidance
        cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/reports/v++_compile_ursa_guidance.html ${IP_REPO_PATH}/${config_name}_v++_compile_guidance.html
  
        RC=$?
        echo " "
        echo " "
        if [ ${RC} -eq 0 ]; then
            echo HTML Report copy ${config_name} completed.
        else
            echo HTML Report copy ${config_name} failed. Result ${RC}.
            warn_and_exit ${RC} "HTML Report copy ${config_name}"
            continue
        fi

        # Para utilizar no vivado:
        # Cria pasta destino do IP, removendo se já existir
        IP_DEST_DIR=${IP_REPO_PATH}/${config_name}
        if [ -d "${IP_DEST_DIR}" ]; then
            echo "Removing old folder ${IP_DEST_DIR}"
            rm -rf "${IP_DEST_DIR}"
        fi
        mkdir -p "${IP_DEST_DIR}"

        # Copia o IP .zip gerado
        cp ${ROOT_DIR}/${HLS_WS_DIR}/ursa/${TOP_FUNCTION}.zip ${IP_DEST_DIR}/${config_name}.zip

        # Extrai o conteúdo do ZIP dentro da pasta
        unzip -o ${IP_DEST_DIR}/${config_name}.zip -d ${IP_DEST_DIR}


    fi
done