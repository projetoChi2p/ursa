## ELF Generation
driver-ursa.elf come file drive
./do-cmake-generate-build.sh

# Steps that need to be performed only once

## 1 - Running "10_report_bram.tcl" in the Vivado TCL console just once -> will it generate a BRAM.yaml file
> open_run impl_1
> source <DIR_ROOT>/ursa/fpga/rvx_os_gemm/firmware/run/10_report_bram.tcl > <DIR_ROOT>/ursa/fpga/rvx_os_gemm/firmware/run/build/bram.yaml

## 2 - Running "11_yaml2mmi_128k.py" just once -> will it generate a BRAM.mmi
in the build file run:
> python3 ../11_yaml2mmi_128k.py > bram.mmi

# For each bitstream to run

## Running "12_merge_bit.sh <program_name>
i.e:  ./12_merge_bit.sh driver-ursa.elf 

./12_merge_bit.sh ../../driver/ursa_cnn/build/driver-ursa.elf