// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xshell_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XShell_top_CfgInitialize(XShell_top *InstancePtr, XShell_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ap_BaseAddress = ConfigPtr->Ap_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XShell_top_Start(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL) & 0x80;
    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL, Data | 0x01);
}

u32 XShell_top_IsDone(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XShell_top_IsIdle(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XShell_top_IsReady(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XShell_top_EnableAutoRestart(XShell_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL, 0x80);
}

void XShell_top_DisableAutoRestart(XShell_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_CTRL, 0);
}

u32 XShell_top_Get_return(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_AP_RETURN);
    return Data;
}
void XShell_top_Set_addr_a0(XShell_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Control_BaseAddress, XSHELL_TOP_CONTROL_ADDR_ADDR_A0_DATA, Data);
}

u32 XShell_top_Get_addr_a0(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Control_BaseAddress, XSHELL_TOP_CONTROL_ADDR_ADDR_A0_DATA);
    return Data;
}

void XShell_top_Set_addr_b0(XShell_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Control_BaseAddress, XSHELL_TOP_CONTROL_ADDR_ADDR_B0_DATA, Data);
}

u32 XShell_top_Get_addr_b0(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Control_BaseAddress, XSHELL_TOP_CONTROL_ADDR_ADDR_B0_DATA);
    return Data;
}

void XShell_top_Set_addr_c0(XShell_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Control_BaseAddress, XSHELL_TOP_CONTROL_ADDR_ADDR_C0_DATA, Data);
}

u32 XShell_top_Get_addr_c0(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Control_BaseAddress, XSHELL_TOP_CONTROL_ADDR_ADDR_C0_DATA);
    return Data;
}

void XShell_top_Set_a0_p(XShell_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_A0_P_DATA, Data);
}

u32 XShell_top_Get_a0_p(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_A0_P_DATA);
    return Data;
}

void XShell_top_Set_b0_q(XShell_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_B0_Q_DATA, Data);
}

u32 XShell_top_Get_b0_q(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_B0_Q_DATA);
    return Data;
}

void XShell_top_Set_m(XShell_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_M_DATA, Data);
}

u32 XShell_top_Get_m(XShell_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_M_DATA);
    return Data;
}

void XShell_top_InterruptGlobalEnable(XShell_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_GIE, 1);
}

void XShell_top_InterruptGlobalDisable(XShell_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_GIE, 0);
}

void XShell_top_InterruptEnable(XShell_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_IER);
    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_IER, Register | Mask);
}

void XShell_top_InterruptDisable(XShell_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_IER);
    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_IER, Register & (~Mask));
}

void XShell_top_InterruptClear(XShell_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XShell_top_WriteReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_ISR, Mask);
}

u32 XShell_top_InterruptGetEnabled(XShell_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_IER);
}

u32 XShell_top_InterruptGetStatus(XShell_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XShell_top_ReadReg(InstancePtr->Ap_BaseAddress, XSHELL_TOP_AP_ADDR_ISR);
}

