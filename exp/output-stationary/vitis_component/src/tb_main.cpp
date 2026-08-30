//use for vitis
#include "platform.h"

#include <cstdlib>
#include <stdio.h>
#include <string.h>

#include "utils.h"
#include "ursa_math.h"

#ifdef VITIS
    #include "ursa.h"
    #include "timer.h"
    #include "xparameters.h"
    #include "xil_printf.h"
    #include "xil_cache.h"
#endif

#include "ursa_bench.h"

/* ─── Buffers ────────────────────────────────────────────────────────────────
   A, B and C live directly in the BRAM windows. There is no malloc here: the
   windows are fixed, and every case in the suite was generated to fit them
   (gen_bench.py was run with --max-bytes-a/b/c 16384).

   The suite is regenerated from a seed on the board, so no matrix data is
   stored in the binary. Only the 14 case descriptors are.                    */
#ifdef VITIS
weight_t  *g_aw = (weight_t*) BRAM_AW_BASEADDR;
pixel_t   *g_bi = (pixel_t*)  BRAM_BI_BASEADDR;
int32_t   *g_ca = (int32_t*)  BRAM_CA_BASEADDR;
#else
/* Off the board, mirror the BRAM windows exactly, so the host run exercises
   the same capacity limit the hardware has. */
#define BRAM_AW_SIZE (4*1024)
#define BRAM_BI_SIZE (16*1024)
#define BRAM_CA_SIZE (16*1024)
static bench_a_t g_aw_buf[BRAM_AW_SIZE / sizeof(bench_a_t)];
static bench_b_t g_bi_buf[BRAM_BI_SIZE / sizeof(bench_b_t)];
static bench_c_t g_ca_buf[BRAM_CA_SIZE / sizeof(bench_c_t)];
bench_a_t *g_aw = g_aw_buf;
bench_b_t *g_bi = g_bi_buf;
bench_c_t *g_ca = g_ca_buf;
#endif

/* ─── Case selection ─────────────────────────────────────────────────────────
   The generated header carries all 40 cases, but this build only runs the
   ones that fit the BRAM windows, and at most CASES_PER_GROUP of each group.
   Raise the limit, or drop the fit test, once the block design has larger
   buffers.                                                                   */
#define CASES_PER_GROUP 6

static int case_fits(const bench_case_t *tc)
{
    return ((uint32_t)tc->P * tc->M * sizeof(bench_a_t) <= BRAM_AW_SIZE)
        && ((uint32_t)tc->M * tc->Q * sizeof(bench_b_t) <= BRAM_BI_SIZE)
        && ((uint32_t)tc->P * tc->Q * sizeof(bench_c_t) <= BRAM_CA_SIZE);
}

/* Single call site for the accelerator. On the board it drives the IP; off
   the board it runs the same HLS source in software, so the suite can be
   validated on a host before deployment. */
static inline uint8_t run_ursa(uint32_t p, uint32_t q, uint32_t m)
{
#ifdef VITIS
    return mxm_execute_ursa(&xUrsa0, p, q, m,
                            (uint32_t)BRAM_AW_BASEADDR,
                            (uint32_t)BRAM_BI_BASEADDR,
                            (uint32_t)BRAM_CA_BASEADDR);
#else
    return mxm_execute_ursa((int8_t *)g_aw, (uint16_t)p,
                            (uint8_t *)g_bi, (uint16_t)q,
                            (int32_t *)g_ca, (uint16_t)m);
#endif
}

// http://patorjk.com/software/taag/#f=Colossal
// 888b     d888          d8b
// 8888b   d8888          Y8P
// 88888b.d88888
// 88888b.d88888  8888b.  888 88888b.
// 888 Y888P 888     "88b 888 888 "88b
// 888  Y8P  888 .d888888 888 888  888
// 888   "   888 888  888 888 888  888
// 888       888 "Y888888 888 888  888
int main(void)
{
    uint32_t idx;
    uint32_t pass = 0, fail = 0;

#ifdef VITIS
    int xil_status;

  #ifdef CAMPAIGN
    //no print
    //cache
    Xil_ICacheDisable();
    Xil_DCacheDisable();
  #else
    #ifdef BRAM
    fprintf(stderr, "\n### Benchmark-mxm URSA BRAM [v1.0] ###\n");
    #endif
    
    #ifdef OCM
    fprintf(stderr, "\n### Benchmark-mxm URSA OCM [v1.0] ###\n");
    #endif

    #ifdef HYBRID
    fprintf(stderr, "\n### Benchmark-mxm URSA HYBRID [v1.0] ###\n");
    #endif
  #endif
    //init
    init_platform();

    //dut
    xil_status = ursa_init(&xUrsa0, XPAR_MXM_EXECUTE_URSA_0_BASEADDR);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_0 init failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

    xil_status = ursa_post_reset_setup(&xUrsa0);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_0 setup failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }
#endif //VITIS

#ifdef CAMPAIGN
    outbyte(0xAA);
    //campaign mode: loop forever, one byte per case result
    for (;;) {
        uint32_t taken[4] = {0, 0, 0, 0};
        for (idx = 0; idx < BENCH_NUM_CASES; ++idx) {
            const bench_case_t *tc = &bench_cases[idx];
            uint32_t nc = (uint32_t)tc->P * tc->Q;
            uint8_t  st;

            if (!case_fits(tc)) continue;
            if (tc->group < 4 && taken[tc->group] >= CASES_PER_GROUP) continue;
            if ((tc->P % SA_SIZE) != 0 || (tc->Q % SA_SIZE) != 0) continue;
            taken[tc->group]++;

            bench_fill(tc, g_aw, g_bi);
            memset(g_ca, 0, nc * sizeof(bench_c_t));

            st = run_ursa(tc->P, tc->Q, tc->M);

            if (st != SA_SUCCESS)                        outbyte(0xE0 | (uint8_t)idx);
            else if (bench_checksum(g_ca, nc) != tc->golden) outbyte(0xC0 | (uint8_t)idx);
            else                                          outbyte(0x00 | (uint8_t)idx);
        }
    }
#else

  #ifdef VITIS
    //test mode
    //timer
    app_timer_init();
  #endif

    //test mode (VITIS and LINUX)
    fprintf(stderr, "SA_SIZE=%d, acc=%d bits, up to %d cases per group\n",
            SA_SIZE, BENCH_ACC_BITS, CASES_PER_GROUP);
    fprintf(stderr, "suite has %d cases; running those that fit Memory\n\n",
            BENCH_NUM_CASES);
    fprintf(stderr, "%-16s %6s %6s %6s %10s  %s\n",
            "case", "P", "Q", "M", "us", "check");
    fprintf(stderr, "------------------------------------------------------------\n");

    uint32_t taken[4] = {0, 0, 0, 0};   /* cases already run, per group */

    for (idx = 0; idx < BENCH_NUM_CASES; ++idx) {
        const bench_case_t *tc = &bench_cases[idx];
        uint32_t nc = (uint32_t)tc->P * tc->Q;
        uint32_t got, us = 0;
        uint8_t  st;

        /* Too big for the current BRAM windows. */
        if (!case_fits(tc)) continue;

        /* Enough cases from this group already. */
        if (tc->group < 4 && taken[tc->group] >= CASES_PER_GROUP) continue;

        /* The shell tiles by SA_SIZE with integer division, so a P or Q that
           is not a multiple would leave the remainder uncomputed. */
        if ((tc->P % SA_SIZE) != 0 || (tc->Q % SA_SIZE) != 0) continue;

        if (tc->group < 4) taken[tc->group]++;

        /* Regenerate A and B in place, zero C. */
        bench_fill(tc, g_aw, g_bi);
        memset(g_ca, 0, nc * sizeof(bench_c_t));
        // Xil_DCacheFlush();

  #ifdef VITIS
    #ifdef OCM
        Xil_DCacheFlushRange((INTPTR)g_aw, (uint32_t)tc->P * tc->M * sizeof(bench_a_t));
        Xil_DCacheFlushRange((INTPTR)g_bi, (uint32_t)tc->M * tc->Q * sizeof(bench_b_t));
        Xil_DCacheFlushRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
    #endif

    #ifdef HYBRID
        Xil_DCacheFlushRange((INTPTR)g_bi, (uint32_t)tc->M * tc->Q * sizeof(bench_b_t));
        Xil_DCacheFlushRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
    #endif

        app_timer_start(0);
  #endif
        st = run_ursa(tc->P, tc->Q, tc->M);
  #ifdef VITIS
        app_timer_stop(0);
        us = app_timer_total_us(0);
        #if defined(OCM) || defined(HYBRID)
            Xil_DCacheInvalidateRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
        #endif
        
  #endif
  
        // Xil_DCacheFlush();
        got = bench_checksum(g_ca, nc);

        if (st == SA_SUCCESS && got == tc->golden) {
            ++pass;
            fprintf(stderr, "%-16s %6u %6u %6u %10lu  ok\n",
                    tc->name, tc->P, tc->Q, tc->M, (unsigned long)us);
        } else {
            ++fail;
            fprintf(stderr, "%-16s %6u %6u %6u %10lu  FAIL",
                    tc->name, tc->P, tc->Q, tc->M, (unsigned long)us);
            if (st != SA_SUCCESS) fprintf(stderr, " (status=%u)", (unsigned)st);
            fprintf(stderr, " (golden=0x%08lX got=0x%08lX)\n",
                    (unsigned long)tc->golden, (unsigned long)got);
        }
    }

    fprintf(stderr, "\n%lu passed, %lu failed\n",
            (unsigned long)pass, (unsigned long)fail);

  #ifdef VITIS
    xil_printf("\r\nTotal Time: %lu[us]\r\n",(unsigned long)app_timer_total_us(0));
    xil_printf("Total Tickes: %lu\r\n\r\n",(unsigned long)app_timer_total_ticks(0));
  #endif

#endif /* CAMPAIGN */

#ifdef VITIS
    cleanup_platform();
#endif

    return (fail == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}