// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMXM_EXECUTE_URSA_H
#define XMXM_EXECUTE_URSA_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmxm_execute_ursa_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u32 Control_BaseAddress;
    u32 Ap_BaseAddress;
} XMxm_execute_ursa_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 Ap_BaseAddress;
    u32 IsReady;
} XMxm_execute_ursa;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMxm_execute_ursa_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMxm_execute_ursa_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMxm_execute_ursa_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMxm_execute_ursa_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMxm_execute_ursa_Initialize(XMxm_execute_ursa *InstancePtr, UINTPTR BaseAddress);
XMxm_execute_ursa_Config* XMxm_execute_ursa_LookupConfig(UINTPTR BaseAddress);
#else
int XMxm_execute_ursa_Initialize(XMxm_execute_ursa *InstancePtr, u16 DeviceId);
XMxm_execute_ursa_Config* XMxm_execute_ursa_LookupConfig(u16 DeviceId);
#endif
int XMxm_execute_ursa_CfgInitialize(XMxm_execute_ursa *InstancePtr, XMxm_execute_ursa_Config *ConfigPtr);
#else
int XMxm_execute_ursa_Initialize(XMxm_execute_ursa *InstancePtr, const char* InstanceName);
int XMxm_execute_ursa_Release(XMxm_execute_ursa *InstancePtr);
#endif

void XMxm_execute_ursa_Start(XMxm_execute_ursa *InstancePtr);
u32 XMxm_execute_ursa_IsDone(XMxm_execute_ursa *InstancePtr);
u32 XMxm_execute_ursa_IsIdle(XMxm_execute_ursa *InstancePtr);
u32 XMxm_execute_ursa_IsReady(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_EnableAutoRestart(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_DisableAutoRestart(XMxm_execute_ursa *InstancePtr);
u32 XMxm_execute_ursa_Get_return(XMxm_execute_ursa *InstancePtr);

void XMxm_execute_ursa_Set_addr_a0(XMxm_execute_ursa *InstancePtr, u32 Data);
u32 XMxm_execute_ursa_Get_addr_a0(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_Set_addr_b0(XMxm_execute_ursa *InstancePtr, u32 Data);
u32 XMxm_execute_ursa_Get_addr_b0(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_Set_addr_c0(XMxm_execute_ursa *InstancePtr, u32 Data);
u32 XMxm_execute_ursa_Get_addr_c0(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_Set_a0_p(XMxm_execute_ursa *InstancePtr, u32 Data);
u32 XMxm_execute_ursa_Get_a0_p(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_Set_b0_q(XMxm_execute_ursa *InstancePtr, u32 Data);
u32 XMxm_execute_ursa_Get_b0_q(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_Set_m(XMxm_execute_ursa *InstancePtr, u32 Data);
u32 XMxm_execute_ursa_Get_m(XMxm_execute_ursa *InstancePtr);

void XMxm_execute_ursa_InterruptGlobalEnable(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_InterruptGlobalDisable(XMxm_execute_ursa *InstancePtr);
void XMxm_execute_ursa_InterruptEnable(XMxm_execute_ursa *InstancePtr, u32 Mask);
void XMxm_execute_ursa_InterruptDisable(XMxm_execute_ursa *InstancePtr, u32 Mask);
void XMxm_execute_ursa_InterruptClear(XMxm_execute_ursa *InstancePtr, u32 Mask);
u32 XMxm_execute_ursa_InterruptGetEnabled(XMxm_execute_ursa *InstancePtr);
u32 XMxm_execute_ursa_InterruptGetStatus(XMxm_execute_ursa *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
