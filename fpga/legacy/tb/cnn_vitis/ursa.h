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
// #define LABFT
#define IM2COL
#define SA_SIZE 8
#define BRAM

// ─── CONTROLE DO URSA ────────────────────────────────────────────────────────
#define URSA_0_AP_BASEADDR          0x40000000  // s_axi_ap
#define URSA_0_CTRL_BASEADDR        0x40010000  // s_axi_control

// ─── BRAMs (do Address Editor) ───────────────────────────────────────────────
#define BRAM_AW_BASEADDR            0x40020000  // m_axi_aw → axi_bram_ctrl_0
#define BRAM_AW_SIZE                (0x3FFF+1)  // 16K

#define BRAM_BI_BASEADDR            0x40030000  // m_axi_bi → axi_bram_ctrl_1
#define BRAM_BI_SIZE                (0x3FFF+1)  // 16K

#define BRAM_CA_BASEADDR            0x40040000  // m_axi_ca → axi_bram_ctrl_2
#define BRAM_CA_SIZE                (0x3FFF+1)  // 16K

// ─── Timeouts ────────────────────────────────────────────────────────────────
#define TIMEOUT_STEPS_FOR_REGS   100
#define TIMEOUT_STEPS_FOR_OPS   1000
#define TIMEOUT_USLEEP              1

// ─── Globais (definidos em ursa.cpp) ─────────────────────────────────────────
extern XMxm_execute_ursa xUrsa0;
extern uint16_t          labft_count_0;

// ─── API ─────────────────────────────────────────────────────────────────────
int ursa_init            (XMxm_execute_ursa *pxMxm, UINTPTR baseaddr);
int ursa_post_reset_setup(XMxm_execute_ursa *pxMxm);

#ifdef IM2COL
uint8_t mxm_execute_ursa(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, uint32_t q, uint32_t m,
    uint32_t addr_a, uint32_t addr_img, uint32_t addr_c,
    uint8_t  ch_in,
    uint16_t wh_in,
    uint8_t  wh_kernel,
    uint8_t  pad,
    uint8_t  stride
);
#else
uint8_t mxm_execute_ursa(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, uint32_t q, uint32_t m,
    uint32_t addr_a, uint32_t addr_b, uint32_t addr_c
);
#endif

#endif /* URSA_H_ */