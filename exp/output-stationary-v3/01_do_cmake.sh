#!/bin/bash

ROOT_DIR=$(dirname $0)
ROOT_DIR=$(realpath ${ROOT_DIR})

echo Root: $ROOT_DIR
cd $ROOT_DIR
mkdir -p $ROOT_DIR/build
cd $ROOT_DIR/build
echo Now: $(pwd)
rm -rf *

GENERATOR="Unix Makefiles"

#    --trace -> make cmake verbose, not make verbose

cmake -G "${GENERATOR}" \
    -DCMAKE_BUILD_TYPE="Release" \
    ../
