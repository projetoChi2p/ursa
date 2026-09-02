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
//static inline uint8_t run_ursa(uint32_t p, uint32_t q, uint32_t m)
uint8_t run_ursa(uint32_t p, uint32_t q, uint32_t m)
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

#if FREE_RUN
    /* ─── Free run ───────────────────────────────────────────────────────────
       Hand-picked shapes instead of the generated suite.

       The suite never runs P = Q = SA_SIZE, so it cannot show what a single
       tile costs, and its shapes vary in all three dimensions at once, so it
       cannot trace a curve in one of them. Holding P and Q at SA_SIZE fixes
       the tile count at 1 and makes the time a straight line in M, whose
       slope is the cost of one iteration of the shell's k loop.

       There is no golden value: a free shape never went through gen_bench.py.
       The checksum is printed instead, and has to stay the same when the same
       shape is run again.                                                    */
    {
        /* Shapes to run. Edit this table. P and Q must be multiples of
           SA_SIZE, otherwise the shell leaves the remainder uncomputed. */
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
        const uint32_t nshapes    = sizeof(shapes) / sizeof(shapes[0]);
        const uint32_t free_iters = 100;
        uint32_t si, rep;

        (void)idx;   /* the suite loop counter is unused here */

        fprintf(stderr, "\n### MODE RUN FREE ###\n");
        fprintf(stderr, "SA_SIZE=%d, acc=%d bits, %lu shapes, %lu calls each\n\n",
                SA_SIZE, BENCH_ACC_BITS,
                (unsigned long)nshapes, (unsigned long)free_iters);
        fprintf(stderr, "%6s %6s %6s %6s %6s %10s %10s %8s  %s\n",
                "P", "Q", "M", "tiles", "k_it", "us_tot", "cyc/call",
                "cyc/kit", "checksum");
        fprintf(stderr,
                "--------------------------------------------------------------------------------\n");

        for (si = 0; si < nshapes; ++si) {

            bench_case_t tc;
            uint16_t P     = shapes[si][0];
            uint16_t Q     = shapes[si][1];
            uint16_t M     = shapes[si][2];
            uint32_t nc    = (uint32_t)P * Q;
            uint32_t tiles = ((uint32_t)P / SA_SIZE) * ((uint32_t)Q / SA_SIZE);
            uint32_t k_it  = (uint32_t)M + 2u * SA_SIZE - 2u;

            uint32_t got, us_total = 0;
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

            if ((P % SA_SIZE) != 0 || (Q % SA_SIZE) != 0) {
                fprintf(stderr, "%6u %6u %6u  not a multiple of SA_SIZE\n", P, Q, M);
                continue;
            }
            if (!case_fits(&tc)) {
                fprintf(stderr, "%6u %6u %6u  too big for the memory windows\n",
                        P, Q, M);
                continue;
            }

            /* Data is prepared once and left in place. The timed calls below
               all read the same A and B, which is also how the accelerator is
               used for real: one layer after another, without reloading
               between calls. */
            bench_fill(&tc, g_aw, g_bi);
            memset(g_ca, 0, nc * sizeof(bench_c_t));

  #ifdef VITIS
    #ifdef OCM
            Xil_DCacheFlushRange((INTPTR)g_aw, (uint32_t)P * M * sizeof(bench_a_t));
            Xil_DCacheFlushRange((INTPTR)g_bi, (uint32_t)M * Q * sizeof(bench_b_t));
            Xil_DCacheFlushRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
    #endif
    #ifdef HYBRID
            Xil_DCacheFlushRange((INTPTR)g_bi, (uint32_t)M * Q * sizeof(bench_b_t));
            Xil_DCacheFlushRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
    #endif

            /* Warm-up, outside the timed interval. The first call pulls the
               driver code into the instruction cache and costs visibly more
               than the ones that follow. */
            (void)run_ursa(P, Q, M);

            /* One timed interval around many calls. app_timer_total_us
               truncates to whole microseconds, and a single small shape takes
               only a few of them; timing each call separately and averaging
               would truncate a hundred times over. Timing the batch truncates
               once, over a total a hundred times larger. */
            app_timer_start(0);
            for (rep = 0; rep < free_iters; ++rep) {
                st = run_ursa(P, Q, M);
            }
            app_timer_stop(0);
            us_total = app_timer_total_us(0);

    #if defined(OCM) || defined(HYBRID)
            Xil_DCacheInvalidateRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
    #endif
  #else
            (void)rep;
            st = run_ursa(P, Q, M);
  #endif
            got = bench_checksum(g_ca, nc);

            if (st == SA_SUCCESS) ++pass; else ++fail;

            /* Average time per call. us_tot covers free_iters calls, so the
               average has two decimal places that a plain integer division
               would throw away. */
            uint32_t us_x100 = us_total * 100u / free_iters;   /* hundredths */

            fprintf(stderr, "%6u %6u %6u %6lu %6lu %10lu %6lu.%02lu %8lu  0x%08lX%s\n",
                    P, Q, M, (unsigned long)tiles, (unsigned long)k_it,
                    (unsigned long)us_total,
                    (unsigned long)(us_x100 / 100u),
                    (unsigned long)(us_x100 % 100u),
                    (unsigned long)(us_total * 100u / free_iters / tiles / k_it),
                    (unsigned long)got,
                    (st == SA_SUCCESS) ? "" : "  STATUS-ERR");
        }
    }
  #else

		//here is benchmark mxm
    //test mode (VITIS and LINUX)
    fprintf(stderr, "SA_SIZE=%d, acc=%d bits, up to %d cases per group\n",
            SA_SIZE, BENCH_ACC_BITS, CASES_PER_GROUP);
    fprintf(stderr, "suite has %d cases; running those that fit Memory\n\n",
            BENCH_NUM_CASES);
    fprintf(stderr, "%-16s %6s %6s %6s %10s  %s\n",
            "case", "P", "Q", "M", "us", "check");
    fprintf(stderr, "------------------------------------------------------------\n");

    uint32_t taken[4] = {0, 0, 0, 0};   /* cases already run, per group */

    /* Calls per case. A single call of a small case finishes in fewer
       microseconds than app_timer_total_us resolves, so a batch is timed and
       divided afterwards. */
    const uint32_t bench_iters = 100;

    for (idx = 0; idx < BENCH_NUM_CASES; ++idx) {
        const bench_case_t *tc = &bench_cases[idx];
        uint32_t nc = (uint32_t)tc->P * tc->Q;
        // uint32_t got, us = 0;
				uint32_t got, us = 0, us_x100 = 0, rep;
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

        /* Warm-up, outside the timed interval. The first call pulls the driver
           code into the instruction cache and costs visibly more. */
        (void)run_ursa(tc->P, tc->Q, tc->M);

        app_timer_start(0);
        for (rep = 0; rep < bench_iters; ++rep) {
            st = run_ursa(tc->P, tc->Q, tc->M);
        }
        app_timer_stop(0);
        us = app_timer_total_us(0);

    #if defined(OCM) || defined(HYBRID)
        Xil_DCacheInvalidateRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
    #endif
  #else
        (void)rep;
        st = run_ursa(tc->P, tc->Q, tc->M);
  #endif

		got = bench_checksum(g_ca, nc);

        /* Average per call, in hundredths of a microsecond. us covers
           bench_iters calls, and integer division straight to microseconds
           would throw away the fractional part that matters for the small
           cases. */
        us_x100 = (uint32_t)(((uint64_t)us * 100u) / bench_iters);

        if (st == SA_SUCCESS && got == tc->golden) {
            ++pass;
            fprintf(stderr, "%-16s %6u %6u %6u %7lu.%02lu  ok\n",
                    tc->name, tc->P, tc->Q, tc->M,
                    (unsigned long)(us_x100 / 100u),
                    (unsigned long)(us_x100 % 100u));
        } else {
            ++fail;
            fprintf(stderr, "%-16s %6u %6u %6u %7lu.%02lu  FAIL",
                    tc->name, tc->P, tc->Q, tc->M,
                    (unsigned long)(us_x100 / 100u),
                    (unsigned long)(us_x100 % 100u));
            if (st != SA_SUCCESS) fprintf(stderr, " (status=%u)", (unsigned)st);
            fprintf(stderr, " (golden=0x%08lX got=0x%08lX)\n",
                    (unsigned long)tc->golden, (unsigned long)got);
        }
    }


    fprintf(stderr, "\n%lu passed, %lu failed\n",
            (unsigned long)pass, (unsigned long)fail);
	#endif //RUN_FREE
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