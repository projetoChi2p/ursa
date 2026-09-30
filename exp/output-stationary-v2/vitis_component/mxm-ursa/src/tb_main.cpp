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
    #include "xil_mmu.h"
    #include "sleep.h"
#endif

#include "ursa_bench.h"

#define APP_VER "v2.0"

/* ─── URSA v2 IP contract ────────────────────────────────────────────────────
   UM: 30/09/26 - what the v2 IP expects from the caller, mirrored from the
   IP's settings.h and shell.cpp. The application does not include the HLS
   headers, so the two numbers below are repeated here and must follow them.

   WORD: the m_axi ports of A and B carry max(SA_SIZE, 4) bytes per beat.
   ROW-STRIDE RULE: A is read in words, so every row of A starts on a word
   boundary. The row stride in memory is M rounded up to a multiple of the
   word, and the bytes past M in each row are written as zero (the array never
   reads them). B and C keep the plain row-major layout of v1; only Q has to
   be a multiple of SA_SIZE, which the suite already requires.
   MAX_M: the IP buffers one A tile and one B tile on chip, sized for M up to
   MAX_M. A larger M returns SA_ERROR without touching C.

   The golden checksums in ursa_bench_data.cpp cover C only, and C does not
   depend on the padding, so the generated suite is used unchanged.        */
#if SA_SIZE < 4
    #define URSA_WORD_BYTES 4
#else
    #define URSA_WORD_BYTES SA_SIZE
#endif

#ifndef URSA_MAX_M
    #define URSA_MAX_M 256          /* MAX_M in the IP's settings.h */
#endif

static inline uint32_t a_row_stride(uint32_t m)
{
    return ((m + URSA_WORD_BYTES - 1u) / URSA_WORD_BYTES) * URSA_WORD_BYTES;
}

/* ─── Clock ──────────────────────────────────────────────────────────────────
   Same FCLK0 as the CNN v2 app, so the two sets of numbers are comparable.
   IO PLL at 1600 MHz here: div0 = 13 -> 123.08 MHz, 16 -> 100 MHz.
   Only safe if the bitstream met timing at the resulting frequency.        */
#ifndef FCLK0_DIV0
    #define FCLK0_DIV0 13
#endif

#ifdef VITIS
static void set_fclk0(uint32_t div0, uint32_t div1)
{
    volatile uint32_t *slcr = (volatile uint32_t *)0xF8000000;
    slcr[0x008 / 4] = 0xDF0D;                        /* SLCR_UNLOCK */
    uint32_t v = slcr[0x170 / 4];                    /* FPGA0_CLK_CTRL */
    v &= ~((0x3Fu << 20) | (0x3Fu << 8) | (0x3u << 4));
    v |=  (div1 << 20) | (div0 << 8);                /* source = IO PLL */
    slcr[0x170 / 4] = v;
    slcr[0x004 / 4] = 0x767B;                        /* SLCR_LOCK */
    usleep(10);
}

#ifndef PS_CLK_KHZ
    #define PS_CLK_KHZ 33333u
#endif
static void print_fclk0(void)
{
    volatile uint32_t *slcr = (volatile uint32_t *)0xF8000000;
    uint32_t ctrl = slcr[0x170 / 4];                 /* FPGA0_CLK_CTRL */
    uint32_t src  = (ctrl >> 4) & 0x3;
    uint32_t d0   = (ctrl >> 8)  & 0x3F;
    uint32_t d1   = (ctrl >> 20) & 0x3F;
    uint32_t pll  = (src == 2) ? slcr[0x100 / 4]     /* ARM PLL */
                  : (src == 3) ? slcr[0x104 / 4]     /* DDR PLL */
                  :              slcr[0x108 / 4];    /* IO PLL  */
    uint32_t fdiv = (pll >> 12) & 0x7F;
    uint32_t khz  = (d0 && d1) ? (PS_CLK_KHZ * fdiv) / (d0 * d1) : 0;
    printf("FCLK0 = %lu.%03lu MHz (fdiv=%lu div0=%lu div1=%lu src=%lu)\n",
           (unsigned long)(khz / 1000), (unsigned long)(khz % 1000),
           (unsigned long)fdiv, (unsigned long)d0,
           (unsigned long)d1, (unsigned long)src);
}
#endif /* VITIS */

/* ─── Buffers ────────────────────────────────────────────────────────────────
   A, B and C live in the accelerator's memory windows (PL BRAM, OCM or both,
   depending on the layout). There is no malloc: the windows are fixed.

   The suite is regenerated from a seed on the board, so no matrix data is
   stored in the binary. It is generated into two staging buffers in DDR and
   then copied into the windows: A needs its rows re-strided for the v2 IP,
   and the copy keeps bench_fill away from device memory. Staging and copy
   happen outside the timed interval.                                      */
#ifdef VITIS
weight_t  *g_aw = (weight_t*) BRAM_AW_BASEADDR;
pixel_t   *g_bi = (pixel_t*)  BRAM_BI_BASEADDR;
int32_t   *g_ca = (int32_t*)  BRAM_CA_BASEADDR;

#else
/* Off the board, mirror the memory windows exactly, so the host run exercises
   the same capacity limit the hardware has. */
#if SA_SIZE >= 16
    #define BRAM_AW_SIZE (8*1024)
#else
    #define BRAM_AW_SIZE (4*1024)
#endif
#define BRAM_BI_SIZE (16*1024)
#define BRAM_CA_SIZE (16*1024)
static bench_a_t g_aw_buf[BRAM_AW_SIZE / sizeof(bench_a_t)];
static bench_b_t g_bi_buf[BRAM_BI_SIZE / sizeof(bench_b_t)];
static bench_c_t g_ca_buf[BRAM_CA_SIZE / sizeof(bench_c_t)];
bench_a_t *g_aw = g_aw_buf;
bench_b_t *g_bi = g_bi_buf;
bench_c_t *g_ca = g_ca_buf;

#endif

/* Staging, in DDR. A case that fits the A window has P*M <= P*stride <= the
   window, so the window size bounds both staging buffers. */
static bench_a_t s_a[BRAM_AW_SIZE / sizeof(bench_a_t)] __attribute__((aligned(32)));
static bench_b_t s_b[BRAM_BI_SIZE / sizeof(bench_b_t)] __attribute__((aligned(32)));

/* ─── Case selection ─────────────────────────────────────────────────────────
   The generated header carries all 40 cases, but this build only runs the
   ones the v2 IP accepts and that fit the memory windows, and at most
   CASES_PER_GROUP of each group.                                          */
#define CASES_PER_GROUP 6

static int case_fits(const bench_case_t *tc)
{
    if (tc->M == 0 || tc->M > URSA_MAX_M)                 return 0;
    if ((tc->P % SA_SIZE) != 0 || (tc->Q % SA_SIZE) != 0) return 0;

    return ((uint32_t)tc->P * a_row_stride(tc->M) * sizeof(bench_a_t) <= BRAM_AW_SIZE)
        && ((uint32_t)tc->M * tc->Q * sizeof(bench_b_t) <= BRAM_BI_SIZE)
        && ((uint32_t)tc->P * tc->Q * sizeof(bench_c_t) <= BRAM_CA_SIZE);
}

/* Regenerate A and B, lay them out for the v2 IP, zero C and hand the three
   windows to the accelerator. The caller has already checked case_fits. */
static void stage_case(const bench_case_t *tc)
{
    const uint32_t P  = tc->P, Q = tc->Q, M = tc->M;
    const uint32_t ms = a_row_stride(M);
    const uint32_t nc = P * Q;
    uint32_t r, c, i;

    bench_fill(tc, s_a, s_b);

    /* A: row stride ms, zero padding past M. Byte stores, so the copy is
       safe on device memory whatever the alignment of M. */
    volatile bench_a_t *wa = (volatile bench_a_t *)g_aw;
    for (r = 0; r < P; ++r)
        for (c = 0; c < ms; ++c)
            wa[r * ms + c] = (c < M) ? s_a[r * M + c] : (bench_a_t)0;

    volatile bench_b_t *wb = (volatile bench_b_t *)g_bi;
    for (i = 0; i < M * Q; ++i) wb[i] = s_b[i];

    volatile bench_c_t *wc = (volatile bench_c_t *)g_ca;
    for (i = 0; i < nc; ++i) wc[i] = 0;

#ifdef VITIS
  #if CACHE_EN_D   /* with the data cache off there is nothing to push out */
    #ifdef OCM
    Xil_DCacheFlushRange((INTPTR)g_aw, P * ms * sizeof(bench_a_t));
    Xil_DCacheFlushRange((INTPTR)g_bi, M * Q  * sizeof(bench_b_t));
    Xil_DCacheFlushRange((INTPTR)g_ca, nc     * sizeof(bench_c_t));
    #endif
    #ifdef HYBRID   /* A is in PL BRAM, device memory, never cached */
    Xil_DCacheFlushRange((INTPTR)g_bi, M * Q  * sizeof(bench_b_t));
    Xil_DCacheFlushRange((INTPTR)g_ca, nc     * sizeof(bench_c_t));
    #endif
  #endif
#endif
}

/* Read C back after the accelerator wrote it. Only the OCM windows are
   cacheable. */
static void collect_c(uint32_t nc)
{
#if defined(VITIS) && (defined(OCM) || defined(HYBRID))
    Xil_DCacheInvalidateRange((INTPTR)g_ca, nc * sizeof(bench_c_t));
#else
    (void)nc;
#endif
}

/* Single call site for the accelerator. On the board it drives the IP; off
   the board it calls the HLS top directly. Note the v2 HLS top only builds
   with AP_FIXED (word ports), so the host path needs the HLS headers. */
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
// 888Y88888P888  8888b.  888 88888b.
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

    //init
    init_platform();

	#if CACHE_EN_I == 0
			Xil_ICacheDisable();
	#endif

	#if CACHE_EN_D == 0
			Xil_DCacheDisable();
	#endif

  #ifdef CAMPAIGN
    //no print
    //cache
    Xil_ICacheDisable();
    // Xil_DCacheDisable();
  #else
    #ifdef BRAM
    fprintf(stderr, "\n### Benchmark-mxm URSA BRAM [" APP_VER "] ###\n");
    #endif

    #ifdef OCM
    fprintf(stderr, "\n### Benchmark-mxm URSA OCM [" APP_VER "] ###\n");
    #endif

    #ifdef HYBRID
    fprintf(stderr, "\n### Benchmark-mxm URSA HYBRID [" APP_VER "] ###\n");
    #endif

		printf("cache I=%s\n", CACHE_EN_I ? "on" : "off");
		printf("cache D=%s\n", CACHE_EN_D ? "on" : "off");
  #endif

    /* UM: 30/09/26 - same platform setup as the CNN v2 app. */
    set_fclk0(FCLK0_DIV0, 1);
  #ifndef CAMPAIGN
    print_fclk0();
  #endif

    Xil_SetTlbAttributes(0x40000000, DEVICE_MEMORY);   /* registradores */
    Xil_SetTlbAttributes(0x40100000, DEVICE_MEMORY);   /* BRAMs (BRAM, HYBRID) */

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
            taken[tc->group]++;

            stage_case(tc);

            st = run_ursa(tc->P, tc->Q, tc->M);
            collect_c(nc);

            if (st != SA_SUCCESS)                        outbyte(0xE0 | (uint8_t)idx);
            else if (bench_checksum(g_ca, nc) != tc->golden) outbyte(0xC0 | (uint8_t)idx);
            else                                          outbyte(0x00 | (uint8_t)idx);
        }
    }
#else

  #ifdef VITIS
    //test mode
    //timer
    if (app_timer_init() != XST_SUCCESS) {
        xil_printf("[main] timer init failed. Abort.\n\r");
        return XST_FAILURE;
    }
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
           SA_SIZE and M must not exceed URSA_MAX_M. */
        static const uint16_t shapes[][3] = {   /* P, Q, M */
            /* one tile, M swept */
            { SA_SIZE, SA_SIZE,   2 },
            { SA_SIZE, SA_SIZE,   4 },
            { SA_SIZE, SA_SIZE,   8 },
            { SA_SIZE, SA_SIZE,  16 },
            { SA_SIZE, SA_SIZE,  32 },
            { SA_SIZE, SA_SIZE,  64 },
            { SA_SIZE, SA_SIZE, 128 },
            { SA_SIZE, SA_SIZE, 256 },

            /* P swept, Q = 16 */
            {  16,  16,   2 }, {  32,  16,   2 }, {  64,  16,   2 }, { 128,  16,   2 },
            {  16,  16,   4 }, {  32,  16,   4 }, {  64,  16,   4 }, { 128,  16,   4 },
            {  16,  16,   8 }, {  32,  16,   8 }, {  64,  16,   8 }, { 128,  16,   8 },
            {  16,  16,  16 }, {  32,  16,  16 }, {  64,  16,  16 }, { 128,  16,  16 },
            {  16,  16,  64 }, {  32,  16,  64 }, {  64,  16,  64 },

            /* Q swept, P = 16 */
            {  16,  32,   2 }, {  16,  64,   2 }, {  16, 128,   2 },
            {  16,  32,   4 }, {  16,  64,   4 }, {  16, 128,   4 },
            {  16,  32,   8 }, {  16,  64,   8 }, {  16, 128,   8 },
            {  16,  32,  16 }, {  16,  64,  16 }, {  16, 128,  16 },
            {  16,  32,  64 }, {  16,  64,  64 }, {  16, 128,  64 },
        };

        const uint32_t nshapes    = sizeof(shapes) / sizeof(shapes[0]);
        const uint32_t free_iters = 100;
        uint32_t si, rep;

        (void)idx;   /* the suite loop counter is unused here */

        fprintf(stderr, "\n### MODE RUN FREE ###\n");
        fprintf(stderr, "SA_SIZE=%d, acc=%d bits, word=%d B, max M=%d, %lu shapes, %lu calls each\n\n",
                SA_SIZE, BENCH_ACC_BITS, URSA_WORD_BYTES, URSA_MAX_M,
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
                fprintf(stderr, "%6u %6u %6u  too big for the memory windows or M > %d\n",
                        P, Q, M, URSA_MAX_M);
                continue;
            }

            /* Data is prepared once and left in place. The timed calls below
               all read the same A and B, which is also how the accelerator is
               used for real: one layer after another, without reloading
               between calls. */
            stage_case(&tc);

  #ifdef VITIS
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
  #else
            (void)rep;
            st = run_ursa(P, Q, M);
  #endif
            collect_c(nc);
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

        /* Terminator. The host reader stops on this line instead of sitting
           out the full timeout, and it is the same format the benchmark
           branch prints, so the parser needs no second pattern. */
        fprintf(stderr, "\n%lu passed, %lu failed\n",
                (unsigned long)pass, (unsigned long)fail);
    }
  #else

	//here is benchmark mxm
    //test mode (VITIS and LINUX)
    fprintf(stderr, "SA_SIZE=%d, acc=%d bits, word=%d B, max M=%d, up to %d cases per group\n",
            SA_SIZE, BENCH_ACC_BITS, URSA_WORD_BYTES, URSA_MAX_M, CASES_PER_GROUP);
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
        uint32_t got, us = 0, us_x100 = 0, rep;
        uint8_t  st = SA_SUCCESS;

        /* Refused by the v2 IP, not a multiple of SA_SIZE, or too big for
           the memory windows. */
        if (!case_fits(tc)) continue;

        /* Enough cases from this group already. */
        if (tc->group < 4 && taken[tc->group] >= CASES_PER_GROUP) continue;

        if (tc->group < 4) taken[tc->group]++;

        /* Regenerate A and B, lay them out for the IP, zero C. */
        stage_case(tc);

  #ifdef VITIS
        /* Warm-up, outside the timed interval. The first call pulls the driver
           code into the instruction cache and costs visibly more. */
        (void)run_ursa(tc->P, tc->Q, tc->M);

        app_timer_start(0);
        for (rep = 0; rep < bench_iters; ++rep) {
            st = run_ursa(tc->P, tc->Q, tc->M);
        }
        app_timer_stop(0);
        us = app_timer_total_us(0);
  #else
        (void)rep;
        st = run_ursa(tc->P, tc->Q, tc->M);
  #endif
        collect_c(nc);

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
	#endif //FREE_RUN
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
