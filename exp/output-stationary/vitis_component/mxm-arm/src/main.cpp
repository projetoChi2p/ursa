/*=============================================================================
 * main.cpp - ARM software GEMM baseline
 *
 * Standalone counterpart of the URSA benchmark application. It runs the same
 * case suite and the same free-run shapes, on the same data, but computes
 * everything on the Cortex-A9. There is no accelerator here.
 *
 * The types (weight_t, pixel_t, int32_t) and the timer (app_timer) are the
 * ones the URSA build uses. Sharing them is deliberate: the same data goes
 * through the same instrument, so the URSA-over-ARM ratio is not
 * contaminated by a change of method.
 *
 * Two axes are set at compile time:
 *
 *   FREE_RUN    0  the generated case suite, checked against golden values
 *               1  hand-picked shapes, checksum printed instead
 *
 *   CACHE_MODE      L1-I   L1-D   L2     isolates
 *     0             on     on     on     performance baseline
 *     1             off    on     on     "I-cache off" as usually meant
 *     2             off    on     off    instructions genuinely uncached
 *     3             off    off    off    the irradiation campaign condition
 *     4             on     off    off    the contribution of L1-I alone
 *
 * The five modes exist because on the Cortex-A9 the L2 (PL310) is unified:
 * it holds instructions as well as data. Xil_ICacheDisable() does not touch
 * it, so mode 1 still fetches instructions through L2 and does not actually
 * remove instructions from cache. Mode 2 does. Comparing the cross sections
 * of modes 1 and 2 is what shows whether the L2 reintroduces the exposure
 * that disabling L1-I was meant to eliminate.
 *
 * Xil_DCacheDisable() disables L2 on its way out, which is why modes 3 and 4
 * do not call Xil_L2CacheDisable() separately.
 *===========================================================================*/

#include "platform.h"

#include <cstdlib>
#include <stdio.h>
#include <string.h>
#include <stdint.h>

#include "xil_printf.h"
#include "xil_cache.h"

#include "utils.h"
#include "ursa_math.h"
#include "ursa.h"
#include "timer.h"
#include "ursa_bench.h"

#include "xil_cache_l.h"

/* ─── Compile-time configuration ─────────────────────────────────────────── */

#ifndef CACHE_MODE
#define CACHE_MODE 4
#endif

#ifndef FREE_RUN
#define FREE_RUN 0
#endif

/* Not used by the arithmetic. It gates the case filter below, so that the
   baseline runs exactly the cases the URSA build of the same SA_SIZE runs
   and the two tables can be compared line for line. */
#ifndef SA_SIZE
#define SA_SIZE 8
#endif

/* In case ursa.h did not bring it in. */
#ifndef SA_SUCCESS
#define SA_SUCCESS 0
#endif

/* Buffer sizes in bytes, mirroring the URSA memory windows so the case suite
   is bounded the same way. Here they only size ordinary arrays. */
#define BUF_AW_SIZE (4  * 1024)
#define BUF_BI_SIZE (16 * 1024)
#define BUF_CA_SIZE (16 * 1024)

#define CASES_PER_GROUP 6


#ifndef DATA_OCM
#define DATA_OCM 1
#endif

#if DATA_OCM
#define BENCH_DATA __attribute__((section(".ocm_data")))
#else
#define BENCH_DATA
#endif

/* Reproduces the URSA build's coherency handling: the data caches stay on,
   but the ranges are cleaned and invalidated before each call, so the loop
   always reloads from the backing memory instead of hitting cache lines
   left over from the previous iteration. Combined with CACHE_MODE=1 and
   DATA_OCM=1, this is the software condition the accelerator runs under.

   With CACHE_MODE=3 or 4 the D-cache is already off and the flush costs
   time without changing anything. */
#ifndef DATA_FLUSH
#define DATA_FLUSH 1
#endif

/* ─── Buffers ────────────────────────────────────────────────────────────────
   Ordinary arrays, same element types as the URSA build's g_aw, g_bi and
   g_ca. Nothing here requires a fixed address, so where they land is decided
   by lscript.ld alone. That keeps the baseline independent of the block
   design's memory map. */
// static weight_t g_aw[BUF_AW_SIZE / sizeof(weight_t)];
// static pixel_t  g_bi[BUF_BI_SIZE / sizeof(pixel_t)];
// static int32_t  g_ca[BUF_CA_SIZE / sizeof(int32_t)];
static weight_t g_aw[BUF_AW_SIZE / sizeof(weight_t)] BENCH_DATA;
static pixel_t  g_bi[BUF_BI_SIZE / sizeof(pixel_t)]  BENCH_DATA;
static int32_t  g_ca[BUF_CA_SIZE / sizeof(int32_t)]  BENCH_DATA;

static inline void data_flush(uint32_t p, uint32_t q, uint32_t m)
{
#if DATA_FLUSH
    Xil_DCacheFlushRange((INTPTR)g_aw, (uint32_t)p * m * sizeof(weight_t));
    Xil_DCacheFlushRange((INTPTR)g_bi, (uint32_t)m * q * sizeof(pixel_t));
    Xil_DCacheFlushRange((INTPTR)g_ca, (uint32_t)p * q * sizeof(int32_t));
#else
    (void)p; (void)q; (void)m;
#endif
}

/* ─── The baseline itself ────────────────────────────────────────────────────
   Loop order is i-j-k with a local accumulator, the same order used by
   mxm_execute_arm in the irradiation campaign build. Keeping it identical is
   what makes these numbers comparable with the Arm configurations reported
   in the TNS paper. An i-k-j version would be faster; that belongs in a
   separate measurement, not here.

   noinline keeps the function out of the repetition loop, so -O3 cannot
   specialise it per case and change what is being timed. */
static uint8_t __attribute__((noinline))
run_arm(uint32_t p, uint32_t q, uint32_t m)
{
    for (uint32_t r = 0; r < p; ++r) {
        for (uint32_t c = 0; c < q; ++c) {
            int32_t sum = 0;
            for (uint32_t k = 0; k < m; ++k) {
                sum += (int32_t)g_aw[r * m + k] * (int32_t)g_bi[k * q + c];
            }
            g_ca[r * q + c] = sum;
        }
    }
    return SA_SUCCESS;
}

/* ─── Cache setup ────────────────────────────────────────────────────────── */

static const char *cache_name(void)
{
#if   CACHE_MODE == 0
    return "L1I on,  L1D on,  L2 on";
#elif CACHE_MODE == 1
    return "L1I off, L1D on,  L2 on";
#elif CACHE_MODE == 2
    return "L1I off, L1D on,  L2 off";
#elif CACHE_MODE == 3
    return "L1I off, L1D off, L2 off";
#elif CACHE_MODE == 4
    return "L1I on,  L1D off, L2 off";
#else
    #error "CACHE_MODE must be 0..4"
#endif
}

static void cache_setup(void)
{
#if   CACHE_MODE == 1
    Xil_ICacheDisable();
#elif CACHE_MODE == 2
    Xil_ICacheDisable();
    Xil_L2CacheDisable();
#elif CACHE_MODE == 3
    Xil_DCacheDisable();          /* flushes, then disables L1-D and L2 */
    Xil_ICacheDisable();
#elif CACHE_MODE == 4
    Xil_DCacheDisable();
#endif
}

/* ─── Timing ─────────────────────────────────────────────────────────────────
   Some builds of app_timer keep a running total across intervals, others
   reset on every start. Subtracting a mark taken before the interval is
   correct for the first and underflows a uint32_t for the second. The
   self-check decides which one this build has, and the measurement follows
   it. */

static int g_timer_accumulates = 0;

static void timer_selfcheck(void)
{
    uint32_t a, b;

    app_timer_start(0);
    for (volatile int i = 0; i < 100000; ++i) ;
    app_timer_stop(0);
    a = app_timer_total_us(0);

    app_timer_start(0);
    for (volatile int i = 0; i < 100000; ++i) ;
    app_timer_stop(0);
    b = app_timer_total_us(0);

    g_timer_accumulates = (b > a + a / 2);

    fprintf(stderr, "[timer] a=%lu b=%lu (%s)\n",
            (unsigned long)a, (unsigned long)b,
            g_timer_accumulates ? "accumulates, deltas used"
                                : "resets per start");
}

static inline uint32_t timer_mark(void)
{
    return g_timer_accumulates ? app_timer_total_us(0) : 0u;
}

/* ─── Case selection ─────────────────────────────────────────────────────── */

static int case_fits(const bench_case_t *tc)
{
    return ((uint32_t)tc->P * tc->M * sizeof(weight_t) <= BUF_AW_SIZE)
        && ((uint32_t)tc->M * tc->Q * sizeof(pixel_t)  <= BUF_BI_SIZE)
        && ((uint32_t)tc->P * tc->Q * sizeof(int32_t)  <= BUF_CA_SIZE);
}

/* Calls to average over. app_timer resolves whole microseconds, and the
   smallest cases finish in a handful of them, so those are repeated and
   divided afterwards. The large ones are not: a single big call already
   takes milliseconds, and repeating it would only stretch the collection. */
static uint32_t iters_for(uint32_t p, uint32_t q, uint32_t m)
{
    return (p * q * m < 100000u) ? 100u : 1u;
}

/* ─── Banner ─────────────────────────────────────────────────────────────────
   Printed before the caches are touched, so it always comes out at full
   speed. The address of run_arm tells whether the program runs from OCM
   (below 0x00040000) or from DDR (0x00100000 and up), which lscript.ld
   decides. */
static void banner(void)
{
    fprintf(stderr, "\n### Benchmark-mxm ARM [v1.0] ###\n");
    fprintf(stderr, "engine=arm cache_mode=%d (%s)\n",
            CACHE_MODE, cache_name());
    fprintf(stderr, "[mem] text=0x%08lx aw=0x%08lx bi=0x%08lx ca=0x%08lx\n",
            (unsigned long)(uintptr_t)&run_arm,
            (unsigned long)(uintptr_t)g_aw,
            (unsigned long)(uintptr_t)g_bi,
            (unsigned long)(uintptr_t)g_ca);
    fprintf(stderr, "data_ocm=%d data_flush=%d\n", DATA_OCM, DATA_FLUSH);
}

/* ─── Suite mode ─────────────────────────────────────────────────────────── */

#if !FREE_RUN
static void run_suite(uint32_t *pass, uint32_t *fail)
{
    uint32_t taken[4] = {0, 0, 0, 0};
    uint32_t idx;

    fprintf(stderr, "SA_SIZE=%d, acc=%d bits, up to %d cases per group\n",
            SA_SIZE, BENCH_ACC_BITS, CASES_PER_GROUP);
    fprintf(stderr, "suite has %d cases; running those that fit the buffers\n\n",
            BENCH_NUM_CASES);
    fprintf(stderr, "%-16s %6s %6s %6s %6s %10s  %s\n",
            "case", "P", "Q", "M", "it", "us", "check");
    fprintf(stderr,
            "-------------------------------------------------------------------\n");

    for (idx = 0; idx < BENCH_NUM_CASES; ++idx) {

        const bench_case_t *tc = &bench_cases[idx];
        uint32_t nc = (uint32_t)tc->P * tc->Q;
        uint32_t got, us, us_x100, iters, rep, t0;
        uint8_t  st = SA_SUCCESS;

        if (!case_fits(tc)) continue;
        if (tc->group < 4 && taken[tc->group] >= CASES_PER_GROUP) continue;
        if ((tc->P % SA_SIZE) != 0 || (tc->Q % SA_SIZE) != 0) continue;
        if (tc->group < 4) taken[tc->group]++;

        bench_fill(tc, g_aw, g_bi);
        memset(g_ca, 0, nc * sizeof(int32_t));

        iters = iters_for(tc->P, tc->Q, tc->M);

        t0 = timer_mark();
        app_timer_start(0);
        for (rep = 0; rep < iters; ++rep) {
            data_flush(tc->P, tc->Q, tc->M);
            st = run_arm(tc->P, tc->Q, tc->M);
        }
        app_timer_stop(0);
        us = app_timer_total_us(0) - t0;

        us_x100 = (uint32_t)(((uint64_t)us * 100u) / iters);

        got = bench_checksum(g_ca, nc);

        if (st == SA_SUCCESS && got == tc->golden) {
            ++(*pass);
            fprintf(stderr, "%-16s %6u %6u %6u %6lu %7lu.%02lu  ok\n",
                    tc->name, tc->P, tc->Q, tc->M,
                    (unsigned long)iters,
                    (unsigned long)(us_x100 / 100u),
                    (unsigned long)(us_x100 % 100u));
        } else {
            ++(*fail);
            fprintf(stderr, "%-16s %6u %6u %6u %6lu %7lu.%02lu  FAIL",
                    tc->name, tc->P, tc->Q, tc->M,
                    (unsigned long)iters,
                    (unsigned long)(us_x100 / 100u),
                    (unsigned long)(us_x100 % 100u));
            if (st != SA_SUCCESS) fprintf(stderr, " (status=%u)", (unsigned)st);
            fprintf(stderr, " (golden=0x%08lX got=0x%08lX)\n",
                    (unsigned long)tc->golden, (unsigned long)got);
        }
    }
}
#endif /* !FREE_RUN */

/* ─── Free run mode ──────────────────────────────────────────────────────────
   Hand-picked shapes. P and Q are held at SA_SIZE and M is swept, so the time
   is a straight line in M. These shapes never went through gen_bench.py, so
   there is no golden value: the checksum is printed instead, and has to
   repeat when the same shape is run again. */

#if FREE_RUN
static void run_free(uint32_t *pass, uint32_t *fail)
{
    static const uint16_t shapes[][3] = {   /* P, Q, M */
        { SA_SIZE, SA_SIZE,   2 },
        { SA_SIZE, SA_SIZE,   4 },
        { SA_SIZE, SA_SIZE,   8 },
        { SA_SIZE, SA_SIZE,  16 },
        { SA_SIZE, SA_SIZE,  32 },
        { SA_SIZE, SA_SIZE,  64 },
        { SA_SIZE, SA_SIZE, 128 },
        { SA_SIZE, SA_SIZE, 256 },
        { SA_SIZE, SA_SIZE, 512 },
    };
    const uint32_t nshapes = sizeof(shapes) / sizeof(shapes[0]);
    uint32_t si;

    fprintf(stderr, "\n### MODE RUN FREE ###\n");
    fprintf(stderr, "SA_SIZE=%d, acc=%d bits, %lu shapes\n\n",
            SA_SIZE, BENCH_ACC_BITS, (unsigned long)nshapes);
    fprintf(stderr, "%6s %6s %6s %6s %10s  %s\n",
            "P", "Q", "M", "it", "us", "checksum");
    fprintf(stderr,
            "--------------------------------------------------------\n");

    for (si = 0; si < nshapes; ++si) {

        bench_case_t tc;
        uint16_t P  = shapes[si][0];
        uint16_t Q  = shapes[si][1];
        uint16_t M  = shapes[si][2];
        uint32_t nc = (uint32_t)P * Q;
        uint32_t got, us, us_x100, iters, rep, t0;
        uint8_t  st = SA_SUCCESS;

        tc.name         = "free";
        tc.group        = 1;
        tc.P            = P;
        tc.Q            = Q;
        tc.M            = M;
        tc.seed         = 0x2545F491u;
        tc.golden       = 0;
        tc.has_literal  = 0;
        tc.acc_overflow = 0;
        tc.amax         = 3;
        tc.bmax         = 3;
        tc.pattern      = BENCH_PAT_UNIFORM;

        if (!case_fits(&tc)) {
            fprintf(stderr, "%6u %6u %6u  too big for the buffers\n", P, Q, M);
            continue;
        }

        bench_fill(&tc, g_aw, g_bi);
        memset(g_ca, 0, nc * sizeof(int32_t));

        iters = iters_for(P, Q, M);

        t0 = timer_mark();
        app_timer_start(0);
        for (rep = 0; rep < iters; ++rep) {
            data_flush(tc->P, tc->Q, tc->M);
            st = run_arm(P, Q, M);
        }
        app_timer_stop(0);
        us = app_timer_total_us(0) - t0;

        us_x100 = (uint32_t)(((uint64_t)us * 100u) / iters);

        got = bench_checksum(g_ca, nc);

        if (st == SA_SUCCESS) ++(*pass); else ++(*fail);

        fprintf(stderr, "%6u %6u %6u %6lu %7lu.%02lu  0x%08lX%s\n",
                P, Q, M,
                (unsigned long)iters,
                (unsigned long)(us_x100 / 100u),
                (unsigned long)(us_x100 % 100u),
                (unsigned long)got,
                (st == SA_SUCCESS) ? "" : "  STATUS-ERR");
    }
}
#endif /* FREE_RUN */


/* ─── Entry point ────────────────────────────────────────────────────────── */

int main(void)
{
    uint32_t pass = 0, fail = 0;

    init_platform();
    app_timer_init();

    /* Banner and self-check first, caches after: init_platform enables the
       caches on some BSPs, which would silently undo the setup if this ran
       the other way round. The self-check also runs at full speed, so its
       two intervals stay comparable across cache configurations. */
    banner();
    timer_selfcheck();
    cache_setup();

#if FREE_RUN
    run_free(&pass, &fail);
#else
    run_suite(&pass, &fail);
#endif

    fprintf(stderr, "\n%lu passed, %lu failed\n",
            (unsigned long)pass, (unsigned long)fail);

    cleanup_platform();

    return (fail == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}