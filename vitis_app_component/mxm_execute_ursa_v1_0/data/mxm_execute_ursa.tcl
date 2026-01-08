# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XMxm_execute_ursa" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_BASEADDR" \
        "C_S_AXI_CONTROL_HIGHADDR" \
        "C_S_AXI_AP_BASEADDR" \
        "C_S_AXI_AP_HIGHADDR"

    xdefine_config_file $drv_handle "xmxm_execute_ursa_g.c" "XMxm_execute_ursa" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_BASEADDR" \
        "C_S_AXI_AP_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XMxm_execute_ursa" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_BASEADDR" \
        "C_S_AXI_CONTROL_HIGHADDR" \
        "C_S_AXI_AP_BASEADDR" \
        "C_S_AXI_AP_HIGHADDR"
}

