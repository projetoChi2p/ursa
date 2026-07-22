
cmake_minimum_required(VERSION 3.15)
project(bsp)
        
set(DRIVER_TARGETS mxm_execute_ursa;coresightps_dcc;devcfg;dmaps;gpiops;scugic;qspips;scutimer;scuwdt;ttcps;uartps;xadcps)
set(DRIVER_LOCATIONS /home/fi/Documents/GitHub/ursa/exp/ursa_ws/vitis2/platform_ursa_ws/zynq_fsbl/zynq_fsbl_bsp/hw_artifacts/drivers/mxm_execute_ursa_v1_0;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/coresightps_dcc_v1_9;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/devcfg_v3_8;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/dmaps_v2_9;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/gpiops_v3_12;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/scugic_v5_2;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/qspips_v3_11;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/scutimer_v2_5;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/scuwdt_v2_5;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/ttcps_v3_18;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/uartps_v3_13;/opt/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/xadcps_v2_7)

list(LENGTH DRIVER_TARGETS no_of_drivers)
set(index 0)

while(${index} LESS ${no_of_drivers})
    list(GET DRIVER_TARGETS ${index} drv)
    list(GET DRIVER_LOCATIONS ${index} drv_dir)
    set(exp_dir "${drv_dir}/examples")
    add_custom_target(
        ${drv}_example ALL
        COMMAND lopper -f -O /home/fi/Documents/GitHub/ursa/exp/ursa_ws/vitis2/platform_ursa_ws/zynq_fsbl/zynq_fsbl_bsp/libsrc/${drv} /home/fi/Documents/GitHub/ursa/exp/ursa_ws/vitis2/platform_ursa_ws/zynq_fsbl/zynq_fsbl_bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 ${exp_dir} drvcmake_metadata
        BYPRODUCTS x${drv}_exlist.yaml)
    MATH(EXPR index "${index}+1")
endwhile()
