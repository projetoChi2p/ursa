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
#include "xmxm_execute_ursa.h"

extern XMxm_execute_ursa_Config XMxm_execute_ursa_ConfigTable[];

#ifdef SDT
XMxm_execute_ursa_Config *XMxm_execute_ursa_LookupConfig(UINTPTR BaseAddress) {
	XMxm_execute_ursa_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMxm_execute_ursa_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMxm_execute_ursa_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMxm_execute_ursa_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMxm_execute_ursa_Initialize(XMxm_execute_ursa *InstancePtr, UINTPTR BaseAddress) {
	XMxm_execute_ursa_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMxm_execute_ursa_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMxm_execute_ursa_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMxm_execute_ursa_Config *XMxm_execute_ursa_LookupConfig(u16 DeviceId) {
	XMxm_execute_ursa_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMXM_EXECUTE_URSA_NUM_INSTANCES; Index++) {
		if (XMxm_execute_ursa_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMxm_execute_ursa_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMxm_execute_ursa_Initialize(XMxm_execute_ursa *InstancePtr, u16 DeviceId) {
	XMxm_execute_ursa_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMxm_execute_ursa_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMxm_execute_ursa_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

