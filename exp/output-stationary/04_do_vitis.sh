#!/bin/bash
#===============================================================================
# do_vitis.sh
#
# Builds one ELF per (array size, memory layout), driving CMake directly
# instead of going through the Vitis IDE.
#
# Three platforms are enough for the whole sweep. The platform fixes the
# address map and the BSP, and those are identical across array sizes: only
# the bitstream changes with SA_SIZE, and that is programmed separately.
#
# The application sources are shared. Because the Vitis CMakeLists.txt picks
# up sources with aux_source_directory on its own directory, each build gets
# a directory of symlinks back to the shared tree rather than a copy.
#
# Requires: platforms already exported, and ursa.h guarded so that SA_SIZE
# and the layout can arrive as -D flags.
#===============================================================================

THIS_SCRIPT_FULLNAME=$(realpath "${BASH_SOURCE[0]}")
ROOT_DIR=$(dirname "$THIS_SCRIPT_FULLNAME")

export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
unset LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
unset LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
unset LC_IDENTIFICATION LC_ALL

VITIS_VERSION=2023.2

if [ -z "$XILINX_VITIS" ]; then
    for p in /opt/Xilinx /tools/Xilinx /home/tools/Xilinx; do
        if [ -f ${p}/Vitis/${VITIS_VERSION}/settings64.sh ]; then
            echo "Calling Vitis ${VITIS_VERSION} settings64.sh"
            source ${p}/Vitis/${VITIS_VERSION}/settings64.sh
            break
        fi
    done
fi

if [ -z "$XILINX_VITIS" ]; then
    echo "Could not find Vitis installation."
    exit 1
fi

# The CMake bundled with Vitis links against libidn.so.11, which recent Ubuntu
# releases no longer ship, so it fails to start. The system CMake builds this
# project fine; only the toolchain file has to come from the platform.
CMAKE_BIN=${CMAKE_BIN:-/usr/bin/cmake}
if [ ! -x "${CMAKE_BIN}" ]; then
    echo "ERROR: ${CMAKE_BIN} not found. Install cmake, or set CMAKE_BIN."
    exit 1
fi
echo "Using $(${CMAKE_BIN} --version | head -1) from ${CMAKE_BIN}"

cd ${ROOT_DIR}

VITIS_DIR=${ROOT_DIR}/vitis
SRC_DIR=${VITIS_DIR}/src          # shared application sources
OUT_DIR=${ROOT_DIR}/elfs
WORK_DIR=${ROOT_DIR}/build_vitis  # scratch, one subdirectory per build

mkdir -p ${OUT_DIR} ${WORK_DIR}

# ─── Sweep ────────────────────────────────────────────────────────────────
ARRAY_SZ=(2 4 8 16)
LAYOUTS=(bram ocm hybrid)
#ARRAY_SZ=(8)
#LAYOUTS=(bram)
VARIANT=vanilla

# Platform directory name per layout. Adjust if yours are named differently.
platform_dir() {
    echo "${VITIS_DIR}/platform-ursa-${VARIANT}-$1"
}

JOBS=${JOBS:-$(nproc)}

SUMMARY=${OUT_DIR}/summary.csv
echo "elf,variant,sa_size,layout,status,text,data,bss" > ${SUMMARY}

TOTAL=$(( ${#ARRAY_SZ[@]} * ${#LAYOUTS[@]} ))
COUNT=0
FAILED=0

# Files the stock CMakeLists.txt expects to sit next to the sources.
for f in CMakeLists.txt UserConfig.cmake Empty_applicationExample.cmake lscript.ld; do
    if [ ! -f "${SRC_DIR}/${f}" ]; then
        echo "ERROR: ${SRC_DIR}/${f} not found."
        echo "       The shared source directory needs the application sources"
        echo "       plus CMakeLists.txt, UserConfig.cmake,"
        echo "       Empty_applicationExample.cmake and lscript.ld."
        exit 1
    fi
done

for layout in ${LAYOUTS[*]}; do

    PLAT=$(platform_dir ${layout})
    XPFM=$(ls ${PLAT}/export/*/*.xpfm 2>/dev/null | head -1)

    if [ -z "${XPFM}" ]; then
        echo "ERROR: no platform found under ${PLAT}"
        for sz in ${ARRAY_SZ[*]}; do
            echo "bench_${VARIANT}_${sz}x${sz}_${layout},${VARIANT},${sz},${layout},no_platform,,," >> ${SUMMARY}
            FAILED=$((FAILED+1))
            COUNT=$((COUNT+1))
        done
        continue
    fi

    # Every path CMake needs hangs off the domain directory.
    DOMAIN=$(dirname ${XPFM})/sw/standalone_ps7_cortexa9_0
    TOOLCHAIN=${DOMAIN}/cortexa9_toolchain.cmake

    #export ESW_REPO=${DOMAIN}
    export ESW_REPO=${XILINX_VITIS}/data/embeddedsw

    if [ ! -f "${TOOLCHAIN}" ]; then
        echo "ERROR: toolchain file not found: ${TOOLCHAIN}"
        exit 1
    fi

for sz in ${ARRAY_SZ[*]}; do

    COUNT=$((COUNT+1))
    build_name="bench_${VARIANT}_${sz}x${sz}_${layout}"

    echo ""
    echo "########################################################################"
    echo "# [${COUNT}/${TOTAL}] ${build_name}"
    echo "########################################################################"

    if [ -f "${OUT_DIR}/${build_name}.elf" ]; then
        echo "*** ELF found. Skip. ***"
        SIZES=$(arm-none-eabi-size ${OUT_DIR}/${build_name}.elf 2>/dev/null | tail -1 | awk '{print $1","$2","$3}')
        echo "${build_name},${VARIANT},${sz},${layout},skipped,${SIZES}" >> ${SUMMARY}
        continue
        continue
    fi

    BUILD=${WORK_DIR}/${build_name}
    rm -rf ${BUILD}
    mkdir -p ${BUILD}/src

    # Symlink the shared sources in. aux_source_directory follows them, and
    # this keeps one copy of the code for all twelve builds.
    for f in ${SRC_DIR}/*; do
        ln -sf "$f" ${BUILD}/src/
    done

    # APP_NAME is hardcoded in the stock CMakeLists.txt, so this build gets a
    # real copy with that one line rewritten. The symlink is dropped first,
    # otherwise the edit would follow it back into the shared tree.
    rm -f ${BUILD}/src/CMakeLists.txt
    sed "s#^set(APP_NAME .*)#set(APP_NAME ${build_name})#" \
        ${SRC_DIR}/CMakeLists.txt > ${BUILD}/src/CMakeLists.txt

    ${CMAKE_BIN} -S ${BUILD}/src -B ${BUILD}/build \
          -G "Unix Makefiles" \
          -DCMAKE_BUILD_TYPE=Release \
          -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN} \
          -DCMAKE_MODULE_PATH=${DOMAIN} \
          -DCMAKE_LIBRARY_PATH=${DOMAIN}/lib \
          -DCMAKE_INCLUDE_PATH=${DOMAIN}/include \
          -DUSER_COMPILE_DEFINITIONS="SA_SIZE=${sz};${layout^^}" \
          > ${BUILD}/cmake.log 2>&1
    RC=$?

    if [ ${RC} -ne 0 ]; then
        echo "CMake configure failed. See ${BUILD}/cmake.log"
        tail -20 ${BUILD}/cmake.log
        echo "${build_name},${VARIANT},${sz},${layout},cmake_failed,,," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    ${CMAKE_BIN} --build ${BUILD}/build -j ${JOBS} > ${BUILD}/make.log 2>&1
    RC=$?

    if [ ${RC} -ne 0 ]; then
        echo "Build failed. See ${BUILD}/make.log"
        tail -20 ${BUILD}/make.log
        echo "${build_name},${VARIANT},${sz},${layout},build_failed,,," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    ELF=$(find ${BUILD}/build -name "*.elf" | head -1)
    if [ -z "${ELF}" ]; then
        echo "No ELF produced."
        echo "${build_name},${VARIANT},${sz},${layout},no_elf,,," >> ${SUMMARY}
        FAILED=$((FAILED+1))
        continue
    fi

    cp "${ELF}" ${OUT_DIR}/${build_name}.elf

    # Section sizes, useful to confirm the build really differs between
    # configurations and to watch the footprint on the board.
    SIZES=$(arm-none-eabi-size "${ELF}" 2>/dev/null | tail -1 | awk '{print $1","$2","$3}')
    echo "${build_name},${VARIANT},${sz},${layout},ok,${SIZES}" >> ${SUMMARY}
    echo ">>> ${build_name} OK   (text,data,bss = ${SIZES})"

done
done

echo ""
echo "########################################################################"
echo "# Done. ${FAILED} failed of ${TOTAL}."
echo "# ELFs   : ${OUT_DIR}"
echo "# Summary: ${SUMMARY}"
echo "########################################################################"
column -s, -t ${SUMMARY}