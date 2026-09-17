// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of addr_a0
//        bit 31~0 - addr_a0[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of addr_b0
//        bit 31~0 - addr_b0[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of addr_c0
//        bit 31~0 - addr_c0[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_A0_DATA 0x10
#define XMXM_EXECUTE_URSA_CONTROL_BITS_ADDR_A0_DATA 32
#define XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_B0_DATA 0x18
#define XMXM_EXECUTE_URSA_CONTROL_BITS_ADDR_B0_DATA 32
#define XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_C0_DATA 0x20
#define XMXM_EXECUTE_URSA_CONTROL_BITS_ADDR_C0_DATA 32

// ap
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 7~0 - ap_return[7:0] (Read)
//        others  - reserved
// 0x18 : Data signal of a0_p
//        bit 15~0 - a0_p[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of b0_q
//        bit 15~0 - b0_q[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of m
//        bit 15~0 - m[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL   0x00
#define XMXM_EXECUTE_URSA_AP_ADDR_GIE       0x04
#define XMXM_EXECUTE_URSA_AP_ADDR_IER       0x08
#define XMXM_EXECUTE_URSA_AP_ADDR_ISR       0x0c
#define XMXM_EXECUTE_URSA_AP_ADDR_AP_RETURN 0x10
#define XMXM_EXECUTE_URSA_AP_BITS_AP_RETURN 8
#define XMXM_EXECUTE_URSA_AP_ADDR_A0_P_DATA 0x18
#define XMXM_EXECUTE_URSA_AP_BITS_A0_P_DATA 16
#define XMXM_EXECUTE_URSA_AP_ADDR_B0_Q_DATA 0x20
#define XMXM_EXECUTE_URSA_AP_BITS_B0_Q_DATA 16
#define XMXM_EXECUTE_URSA_AP_ADDR_M_DATA    0x28
#define XMXM_EXECUTE_URSA_AP_BITS_M_DATA    16

