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
    #define OCM
#endif

/* Cache axis. Both are passed by the build script; the defaults only apply to
 * a manual build.
 *
 * CACHE_EN_I defaults to 1, the condition performance is reported in. With the
 * L1 instruction cache disabled, fetch goes to the L2 in 32-byte lines and the
 * measured time becomes sensitive to where the linker placed the code: the
 * same thousand-iteration register-read loop measured 0.601 us per read in one
 * binary and 0.514 in another built from the same source. Turning the cache
 * back on collapsed the spread between builds from 3.6% to 0.37%.
 *
 * The irradiation campaign runs with CACHE_EN_I=0, passed explicitly. Numbers
 * from that condition are that condition's numbers; comparing two different
 * builds there carries a few percent that does not come from the design. */
#ifndef CACHE_EN_I
    #define CACHE_EN_I 0
#endif

#ifndef CACHE_EN_D
    #define CACHE_EN_D 1
#endif

/* ─── Engine ─────────────────────────────────────────────────────────────────
   Exactly one engine is compiled in. Pass -DUSE_URSA or -DUSE_ARM from the
   build script, the same way SA_SIZE and ACC_BITS are passed, instead of
   editing this file.                                                        */
#if !defined(USE_URSA) && !defined(USE_ARM)
    #define USE_URSA
#endif

#if defined(USE_URSA) && defined(USE_ARM)
    #error "Select only one engine: USE_URSA or USE_ARM."
#endif

// ─── Build-time axes ─────────────────────────────────────────────────────────
// Experiment axes come from the build script, the same way SA_SIZE and the
// layout do. The default below only applies to a manual build with no -D.
//
// There is no PROFILE_STAGES any more. Stage instrumentation is compiled in
// unconditionally and costs a counter read per boundary, so there is only ever
// one binary and no build flag that can move the headline number.
#ifndef ACC_BITS
    #define ACC_BITS 20
#endif

// #define PROFILE_STAGES

// ─── Completion polling ──────────────────────────────────────────────────────
// The wait loops read a register over AXI-Lite. Measured on this board, one
// read costs 0.180 us with the instruction cache on, so a tight loop resolves
// completion at roughly that granularity.
//
// The previous version called usleep(1) between reads. That call does not
// sleep one microsecond on Zynq-7000 bare metal: measured at 1.209 us with the
// caches on and 3.783 us with the instruction cache off.
//
// Removing it did NOT speed up the accelerator stage, and it was not expected
// to once the reasoning was done properly: a loop that waits for a completion
// flag lasts as long as the hardware takes, whatever the sampling period. Only
// the overshoot shrinks, at most one period per call, three calls per
// inference. The gemm stage measured 2370 us before and 2357 after.
//
// The change is kept because it removes a source of quantisation from a number
// the dissertation reports, not because it made anything faster.
//
// Define URSA_POLL_RELAXED to restore the old behaviour, for an A/B run.
#define URSA_POLL_BUDGET_BASE   200000u    /* fixed part, register waits   */
#define URSA_POLL_MACS_PER_ITER      4u    /* rough MACs retired per poll  */
#define URSA_POLL_BUDGET_MAX  20000000u    /* ceiling, a few seconds       */

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
// TIMEOUT_STEPS_FOR_REGS and TIMEOUT_STEPS_FOR_OPS are gone: the budgets are
// now URSA_POLL_BUDGET_*, counted in register reads rather than in sleeps.
// TIMEOUT_USLEEP survives only for the URSA_POLL_RELAXED path.
#define TIMEOUT_USLEEP              1

// ─── GLobals (defined in the ursa.cpp) ───────────────────────────────────────
extern XMxm_execute_ursa xUrsa0;

// ─── API ─────────────────────────────────────────────────────────────────────
int ursa_init            (XMxm_execute_ursa *pxMxm, UINTPTR baseaddr);
int ursa_post_reset_setup(XMxm_execute_ursa *pxMxm);

uint8_t mxm_execute_ursa(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, uint32_t q, uint32_t m,
    uint32_t addr_a, uint32_t addr_b, uint32_t addr_c
);

#endif /* URSA_H_ */