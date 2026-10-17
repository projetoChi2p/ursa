#!/bin/sh
# Load the bitstream, set FCLK0 to 100 MHz and run the self-test.
# Uses the prebuilt lib/ and bin/; after rebuilding in src/ (make), run
#   LIB=src/build/sa16 BIN=src/test_mxm ./run_test.sh
cd "$(dirname "$0")"
LIB=${LIB:-lib}
BIN=${BIN:-bin/test_mxm}
exec sudo LD_LIBRARY_PATH="$LIB" "$BIN" "bitstream/ursa_vanilla_16x16_acc20_bram.bit.bin" 100
