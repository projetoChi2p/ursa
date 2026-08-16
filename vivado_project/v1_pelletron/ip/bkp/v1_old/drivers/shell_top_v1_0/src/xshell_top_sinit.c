// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xshell_top.h"

extern XShell_top_Config XShell_top_ConfigTable[];

#ifdef SDT
XShell_top_Config *XShell_top_LookupConfig(UINTPTR BaseAddress) {
	XShell_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XShell_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XShell_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XShell_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XShell_top_Initialize(XShell_top *InstancePtr, UINTPTR BaseAddress) {
	XShell_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XShell_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XShell_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XShell_top_Config *XShell_top_LookupConfig(u16 DeviceId) {
	XShell_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSHELL_TOP_NUM_INSTANCES; Index++) {
		if (XShell_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XShell_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XShell_top_Initialize(XShell_top *InstancePtr, u16 DeviceId) {
	XShell_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XShell_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XShell_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

