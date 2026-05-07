// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmxm_execute_ursa.h"

/************************** Function Implementation *************************/
// #ifndef __linux__
// int XMxm_execute_ursa_CfgInitialize(XMxm_execute_ursa *InstancePtr, XMxm_execute_ursa_Config *ConfigPtr) {
//     Xil_AssertNonvoid(InstancePtr != NULL);
//     Xil_AssertNonvoid(ConfigPtr != NULL);

//     InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
//     InstancePtr->Ap_BaseAddress = ConfigPtr->Ap_BaseAddress;
//     InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

//     return XST_SUCCESS;
// }
// #endif

void XMxm_execute_ursa_Start(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL) & 0x80;
    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMxm_execute_ursa_IsDone(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMxm_execute_ursa_IsIdle(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMxm_execute_ursa_IsReady(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMxm_execute_ursa_EnableAutoRestart(XMxm_execute_ursa *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL, 0x80);
}

void XMxm_execute_ursa_DisableAutoRestart(XMxm_execute_ursa *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_CTRL, 0);
}

u32 XMxm_execute_ursa_Get_return(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_AP_RETURN);
    return Data;
}
void XMxm_execute_ursa_Set_addr_a0(XMxm_execute_ursa *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Control_BaseAddress, XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_A0_DATA, Data);
}

u32 XMxm_execute_ursa_Get_addr_a0(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Control_BaseAddress, XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_A0_DATA);
    return Data;
}

void XMxm_execute_ursa_Set_addr_b0(XMxm_execute_ursa *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Control_BaseAddress, XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_B0_DATA, Data);
}

u32 XMxm_execute_ursa_Get_addr_b0(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Control_BaseAddress, XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_B0_DATA);
    return Data;
}

void XMxm_execute_ursa_Set_addr_c0(XMxm_execute_ursa *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Control_BaseAddress, XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_C0_DATA, Data);
}

u32 XMxm_execute_ursa_Get_addr_c0(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Control_BaseAddress, XMXM_EXECUTE_URSA_CONTROL_ADDR_ADDR_C0_DATA);
    return Data;
}

void XMxm_execute_ursa_Set_a0_p(XMxm_execute_ursa *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_A0_P_DATA, Data);
}

u32 XMxm_execute_ursa_Get_a0_p(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_A0_P_DATA);
    return Data;
}

void XMxm_execute_ursa_Set_b0_q(XMxm_execute_ursa *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_B0_Q_DATA, Data);
}

u32 XMxm_execute_ursa_Get_b0_q(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_B0_Q_DATA);
    return Data;
}

void XMxm_execute_ursa_Set_m(XMxm_execute_ursa *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_M_DATA, Data);
}

u32 XMxm_execute_ursa_Get_m(XMxm_execute_ursa *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_M_DATA);
    return Data;
}

void XMxm_execute_ursa_InterruptGlobalEnable(XMxm_execute_ursa *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_GIE, 1);
}

void XMxm_execute_ursa_InterruptGlobalDisable(XMxm_execute_ursa *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_GIE, 0);
}

void XMxm_execute_ursa_InterruptEnable(XMxm_execute_ursa *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_IER);
    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_IER, Register | Mask);
}

void XMxm_execute_ursa_InterruptDisable(XMxm_execute_ursa *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_IER);
    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_IER, Register & (~Mask));
}

void XMxm_execute_ursa_InterruptClear(XMxm_execute_ursa *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMxm_execute_ursa_WriteReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_ISR, Mask);
}

u32 XMxm_execute_ursa_InterruptGetEnabled(XMxm_execute_ursa *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_IER);
}

u32 XMxm_execute_ursa_InterruptGetStatus(XMxm_execute_ursa *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMxm_execute_ursa_ReadReg(InstancePtr->Ap_BaseAddress, XMXM_EXECUTE_URSA_AP_ADDR_ISR);
}

