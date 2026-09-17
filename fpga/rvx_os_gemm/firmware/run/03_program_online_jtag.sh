#! /usr/bin/env bash

set -e  # -e Exit immediately if a command exits with a non-zero status.

THIS_SCRIPT=${BASH_SOURCE[0]}
THIS_SCRIPT_FULLNAME=$(realpath "$THIS_SCRIPT")
THIS_SCRIPT=$(basename "${THIS_SCRIPT_FULLNAME}")
ROOT_DIR=$(dirname "$THIS_SCRIPT_FULLNAME")

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    echo "${THIS_SCRIPT}:RUNNING $THIS_SCRIPT_FULLNAME"
else
    echo "Script sourced? Abort."
    return -1
fi

cd "${ROOT_DIR}"

BIT_FILE=$1

if [ -z "$BIT_FILE" ]; then
    echo "Use $0 <bit_file.bit>"
    exit
fi

if [ -z "$XILINX_VIVADO" ]; then
      if [ -f /opt/Xilinx/Vivado/2018.3/settings64.sh ]; then
        echo Calling Vivado 2018.3 settings64.sh
        source /opt/Xilinx/Vivado/2018.3/settings64.sh
    elif [ -f /opt/Xilinx/Vivado/2023.2/settings64.sh ]; then
        echo Calling Vivado 2023.2 settings64.sh
        source /opt/Xilinx/Vivado/2023.2/settings64.sh    
    elif [ -f /tools/Xilinx/Vivado/2018.3/settings64.sh ]; then
        echo Calling Vivado 2018.3 settings64.sh
        source /tools/Xilinx/Vivado/2018.3/settings64.sh
    elif [ -f /tools/Xilinx/Vivado/2019.1/settings64.sh ]; then
        echo Calling Vivado 2019.1 settings64.sh
        source /tools/Xilinx/Vivado/2019.1/settings64.sh
    elif [ -f /opt/Xilinx/Vivado/2016.4/settings64.sh ]; then
        echo Calling Vivado 2016.4 settings64.sh
        source /opt/Xilinx/Vivado/2016.4/settings64.sh
    else
        echo Could not find Vivado installation.
        exit
    fi
fi

echo FPGA/ARM programming over JTAG using Vivado XSDB

TERM=ansi-generic xsdb 03_program_online_jtag.tcl $BIT_FILE
