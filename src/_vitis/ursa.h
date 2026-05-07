#ifndef URSA_H_
#define URSA_H_

#include <stdio.h>
#include <stdint.h>
#include <cstdint>
#include <cstdlib>
#include "sleep.h"
#include "utils.h"
#include "xmxm_execute_ursa.h"
#include "xparameters.h"
#include "xscugic.h"

// ─── Return codes ────────────────────────────────────────────────────────────
#define SA_SUCCESS      0
#define SA_ERROR        1
#define SA_LABFT_ERROR  2

// ─── Feature flags ───────────────────────────────────────────────────────────
#define LABFT
#define SA_SIZE 8
#define BRAM


// ─── CONTROLE DOS URSAs ───────────────────────────────────────
#define URSA_0_AP_BASEADDR      0x40000000
#define URSA_0_AP_SIZE          (0x1FFF+1) // 8K
#define URSA_0_CTRL_BASEADDR    0x40010000
#define URSA_0_CTRL_SIZE        (0x1FFF+1) // 8K
#define URSA_0_LABFT_CTRL_BASEADDR  0x40020000
#define URSA_0_LABFT_SIZE       (0x1FFF+1) // 8K

#define URSA_1_AP_BASEADDR      0x40030000
#define URSA_1_AP_SIZE          (0x1FFF+1) // 8K
#define URSA_1_CTRL_BASEADDR    0x40040000
#define URSA_1_CTRL_SIZE        (0x1FFF+1) // 8K
#define URSA_1_LABFT_CTRL_BASEADDR  0x40050000
#define URSA_1_LABFT_SIZE       (0x1FFF+1) // 8K

#ifdef BRAM

    // ─── BRAMs DE ENTRADA (compartilhadas) ───────────────────────
    #define BRAM_AW_BASEADDR        0x40060000
    #define BRAM_AW_SIZE            (0x0FFF+1) // 4K

    #define BRAM_BI_BASEADDR        0x40070000
    #define BRAM_BI_SIZE            (0x3FFF+1) // 16K

    // ─── BRAMs DE SAÍDA (exclusivas) ─────────────────────────────
    #define BRAM_CA0_BASEADDR       0x40080000
    #define BRAM_CA0_SIZE           (0x3FFF+1) // 16K

    #define BRAM_CA1_BASEADDR       0x40090000
    #define BRAM_CA1_SIZE           (0x3FFF+1) // 16K

#else //OCM
    //OCM: ps7_ram_0 : ORIGIN = 0x0, LENGTH = 0x30000
    // ─── ENTRADA (compartilhadas) ───────────────────────
    #define BRAM_AW_BASEADDR        0x00000
    #define BRAM_AW_SIZE            (0xFFFF+1)

    #define BRAM_BI_BASEADDR        0x10000
    #define BRAM_BI_SIZE            (0xFFFF+1)

    // ─── SAÍDA (exclusivas) ─────────────────────────────
    #define BRAM_CA0_BASEADDR       0x20000
    #define BRAM_CA0_SIZE           (0xFFFF+1)

    #define BRAM_CA1_BASEADDR       0x30000
    #define BRAM_CA1_SIZE           (0xFFFF+1)
#endif

// ─── Timeouts ────────────────────────────────────────────────────────────────
#define TIMEOUT_STEPS_FOR_REGS   100
#define TIMEOUT_STEPS_FOR_OPS   1000
#define TIMEOUT_USLEEP              1

// ─── Globais (definidos em ursa.cpp) ─────────────────────────────────────────
extern XMxm_execute_ursa xUrsa0, xUrsa1;
extern uint16_t          labft_count_0, labft_count_1;  

// ─── API ─────────────────────────────────────────────────────────────────────
int     ursa_init            (XMxm_execute_ursa *pxMxm, UINTPTR baseaddr);
int     ursa_post_reset_setup(XMxm_execute_ursa *pxMxm);

uint8_t mxm_execute_ursa(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, uint32_t q, uint32_t m,
    uint32_t addr_a, uint32_t addr_b, uint32_t addr_c
);

uint8_t mxm_execute_ursa_LABFT(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, 
    uint32_t q, 
    uint32_t m,
    uint32_t addr_a, 
    uint32_t addr_b, 
    uint32_t addr_c,
    int ursa_id
);


#endif