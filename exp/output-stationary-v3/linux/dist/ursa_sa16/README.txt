URSA v3 driver, 16x16 array, bitstream ursa_vanilla_16x16_acc20_bram (100 MHz).
Common API: include/mxm.h, link with -Llib -lmxm.

  ./run_test.sh                     load bitstream, set clock, self-test
  cd src && make                    rebuild lib and test on the board
  gcc app.c -Iinclude -Llib -lmxm   build an application
  sudo LD_LIBRARY_PATH=lib ./app
