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

// ─── Feature flags ───────────────────────────────────────────────────────────
// SA_SIZE and the memory layout come from the build system, so one source
// tree serves every configuration. The defaults below only apply to a manual
// build with no -D flags.
#ifndef SA_SIZE
    #define SA_SIZE 8
#endif

#if !defined(BRAM) && !defined(OCM) && !defined(HYBRID)
    #define BRAM
#endif

/* 0 = generated benchmark suite, 1 = shape table in free_run.cpp */
#ifndef FREE_RUN
  #define FREE_RUN 0
#endif

// ─── URSA control ────────────────────────────────────────────────────────────
#define URSA_0_AP_BASEADDR          0x40000000  // s_axi_ap
#define URSA_0_CTRL_BASEADDR        0x40010000  // s_axi_control

// ─── BRAMs (do Address Editor) ───────────────────────────────────────────────
#ifdef BRAM
    #define BRAM_AW_BASEADDR            0x40020000  // m_axi_aw → axi_bram_ctrl_0
    #define BRAM_AW_SIZE                (0x0FFF+1)  // 4K

    #define BRAM_BI_BASEADDR            0x40030000  // m_axi_bi → axi_bram_ctrl_1
    #define BRAM_BI_SIZE                (0x3FFF+1)  // 16K

    #define BRAM_CA_BASEADDR            0x40040000  // m_axi_ca → axi_bram_ctrl_2
    #define BRAM_CA_SIZE                (0x3FFF+1)  // 16K
#endif

#ifdef OCM
    //OCM: ps7_ram_0 : ORIGIN = 0x0, LENGTH = 0x30000
    #define BRAM_AW_BASEADDR 0x00010000
    #define BRAM_AW_SIZE     (0x0FFF+1)

    #define BRAM_BI_BASEADDR 0x00011000
    #define BRAM_BI_SIZE     (0x3FFF+1)
    
    #define BRAM_CA_BASEADDR 0x00015000
    #define BRAM_CA_SIZE     (0x3FFF+1)
#endif

#ifdef HYBRID
    #define BRAM_AW_BASEADDR 0x40020000  // BRAM, axi_bram_ctrl_0
    #define BRAM_AW_SIZE     (0x0FFF+1)  // 4K

    #define BRAM_BI_BASEADDR 0x00011000  // OCM
    #define BRAM_BI_SIZE     (0x3FFF+1)  // 16K
    #define BRAM_CA_BASEADDR 0x00015000  // OCM
    #define BRAM_CA_SIZE     (0x3FFF+1)  // 16K
#endif

// ─── Timeouts ────────────────────────────────────────────────────────────────
#define TIMEOUT_STEPS_FOR_REGS   100
#define TIMEOUT_STEPS_FOR_OPS   1000
#define TIMEOUT_USLEEP              1

// ─── GLobals (defined in the ursa.cpp) ───────────────────────────────────────
extern XMxm_execute_ursa xUrsa0;
extern uint16_t          labft_count_0;

// ─── API ─────────────────────────────────────────────────────────────────────
int ursa_init            (XMxm_execute_ursa *pxMxm, UINTPTR baseaddr);
int ursa_post_reset_setup(XMxm_execute_ursa *pxMxm);

uint8_t mxm_execute_ursa(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, uint32_t q, uint32_t m,
    uint32_t addr_a, uint32_t addr_b, uint32_t addr_c
);

#endif /* URSA_H_ */