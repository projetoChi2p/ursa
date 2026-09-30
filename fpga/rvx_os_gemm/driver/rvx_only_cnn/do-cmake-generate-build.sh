#!/bin/bash

ROOT_DIR=$(dirname $0)
ROOT_DIR=$(realpath ${ROOT_DIR})

echo Root: $ROOT_DIR
cd $ROOT_DIR
mkdir -p $ROOT_DIR/build
cd $ROOT_DIR/build
echo Now: $(pwd)
rm -rf *

cmake \
    -DTOOLCHAIN_PREFIX=/opt/riscv-gnu-toolchain-12.2.0-2023-08-18-rv32i/bin/riscv32-unknown-elf- \
    -DCMAKE_BUILD_TYPE=Release \
    -G "Unix Makefiles" \
    ..
