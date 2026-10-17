/* URSA v3 Linux user-space driver. See ursa_linux.h.
 *
 * Mirrors the bare-metal driver (vitis_component/mxm-ursa/src/ursa.cpp) and
 * the layer tiler of tb_main.cpp (plan_layer / run_layer), with the register
 * map of xmxm_execute_ursa_hw.h and the address map of tcl/bd_bram.tcl.
 *
 * Build with -DURSA_SIM to replace the hardware by a software model of the
 * IP (windows in malloc'd memory), to check the tiling on any host.
 */
#define _POSIX_C_SOURCE 200809L

#include "ursa_linux.h"
#include "ursa_v3_layout.h"

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

/* ─── Build-time configuration, must match the bitstream ─────────────────── */
#ifndef SA_SIZE
    #define SA_SIZE 8
#endif
#ifndef URSA_MAX_M
    #define URSA_MAX_M 256              /* MAX_M in the IP's settings.h */
#endif
#ifndef ACC_BITS
    #define ACC_BITS 20                 /* only used by the URSA_SIM model */
#endif
#ifndef URSA_TIMEOUT_NS
    #define URSA_TIMEOUT_NS 1000000000LL /* 1 s per IP call */
#endif

/* ─── Address map (tcl/bd_bram.tcl, ursa.h BRAM section) ─────────────────── */
#define URSA_REGS_PHYS      0x40000000u /* s_axi_ap, then s_axi_control */
#define URSA_REGS_SPAN      0x00020000u
#define URSA_CTRL_OFFSET    0x00010000u /* s_axi_control inside the span */

#define BRAM_PHYS           0x40100000u
#define BRAM_SPAN           0x00030000u
#define BRAM_AW_BASEADDR    0x40100000u
#define BRAM_BI_BASEADDR    0x40110000u
#define BRAM_CA_BASEADDR    0x40120000u
#if SA_SIZE >= 16
    #define BRAM_AW_SIZE    (8 * 1024)
#else
    #define BRAM_AW_SIZE    (4 * 1024)
#endif
#define BRAM_BI_SIZE        (16 * 1024)
#define BRAM_CA_SIZE        (16 * 1024)

/* ─── Register map (xmxm_execute_ursa_hw.h) ──────────────────────────────── */
#define AP_CTRL             0x00
#define AP_GIE              0x04
#define AP_IER              0x08
#define AP_ISR              0x0c
#define AP_RETURN           0x10
#define AP_A0_P             0x18
#define AP_B0_Q             0x20
#define AP_M                0x28
#define CTRL_ADDR_A0        0x10
#define CTRL_ADDR_B0        0x18
#define CTRL_ADDR_C0        0x20

#define AP_START            (1u << 0)
#define AP_DONE             (1u << 1)
#define AP_IDLE             (1u << 2)

#define SA_ERROR            1

struct ursa_dev {
    int                fd;
    volatile uint8_t  *regs;   /* URSA_REGS_SPAN mapping */
    volatile uint8_t  *bram;   /* BRAM_SPAN mapping */
    volatile uint32_t *win_a, *win_b, *win_c;

    /* DDR scratch, sized by the windows */
    uint8_t *pa;               /* packed A          */
    uint8_t *pb;               /* packed B          */
    int32_t *pc;               /* packed C (tiles)  */
    int32_t *uc;               /* unpacked C block  */
    int8_t  *ea;               /* zero-padded A edge block */
    uint8_t *eb;               /* zero-padded B edge block */
};

/* ─── Register access ────────────────────────────────────────────────────── */
static inline uint32_t ap_rd(ursa_dev_t *d, uint32_t off)
{
    return *(volatile uint32_t *)(d->regs + off);
}
static inline void ap_wr(ursa_dev_t *d, uint32_t off, uint32_t v)
{
    *(volatile uint32_t *)(d->regs + off) = v;
}
static inline void ctrl_wr(ursa_dev_t *d, uint32_t off, uint32_t v)
{
    *(volatile uint32_t *)(d->regs + URSA_CTRL_OFFSET + off) = v;
}

/* Word copies to and from the windows. /dev/mem with O_SYNC maps them as
   device memory, where memcpy's unaligned or multi-register accesses are not
   safe. All packed sizes are multiples of 4 (word >= 4 bytes, C is int32). */
static void win_write(volatile uint32_t *dst, const void *src, uint32_t bytes)
{
    const uint32_t *s = (const uint32_t *)src;
    for (uint32_t i = 0; i < bytes / 4; i++) dst[i] = s[i];
}
static void win_read(void *dst, const volatile uint32_t *src, uint32_t bytes)
{
    uint32_t *o = (uint32_t *)dst;
    for (uint32_t i = 0; i < bytes / 4; i++) o[i] = src[i];
}

#ifndef URSA_SIM
static int64_t now_ns(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (int64_t)ts.tv_sec * 1000000000LL + ts.tv_nsec;
}

/* Poll AP_CTRL until (value & mask) != 0. The clock is read every 1024
   polls so the loop stays a tight register read. */
static int wait_bit(ursa_dev_t *d, uint32_t mask)
{
    const int64_t deadline = now_ns() + URSA_TIMEOUT_NS;
    for (uint32_t n = 0;; n++) {
        if (ap_rd(d, AP_CTRL) & mask) return 0;
        if ((n & 1023u) == 1023u && now_ns() > deadline)
            return (ap_rd(d, AP_CTRL) & mask) ? 0 : -ETIMEDOUT;
    }
}
#endif

#ifdef URSA_SIM
/* ─── Software model of the IP ───────────────────────────────────────────────
   Decodes A and B straight from the layout definition in ursa_v3_layout.h
   (independently of the packers), computes every SA x SA tile with ACC_BITS
   wrap, writes C tile-major. Replaces the start/poll sequence. */
static int sim_run(ursa_dev_t *d, uint32_t p, uint32_t q, uint32_t m)
{
    if (m == 0 || m > URSA_MAX_M) return SA_ERROR;
    const int wb = ursa3_wb(SA_SIZE), L = ursa3_lanes(SA_SIZE);
    const int kw = ursa3_kw(SA_SIZE, (int)m);
    const uint8_t *a = (const uint8_t *)d->win_a;
    const uint8_t *b = (const uint8_t *)d->win_b;
    int32_t *c = (int32_t *)d->win_c;
    const uint32_t tb = q / SA_SIZE;

    for (uint32_t it = 0; it < p / SA_SIZE; it++)
        for (uint32_t jt = 0; jt < tb; jt++) {
            int32_t *tile = c + (it * tb + jt) * SA_SIZE * SA_SIZE;
            for (int i = 0; i < SA_SIZE; i++)
                for (int j = 0; j < SA_SIZE; j++) {
                    int64_t acc = 0;
                    for (uint32_t k = 0; k < m; k++) {
                        const uint32_t w = k / L, l = k % L;
                        int8_t  av = (int8_t)a[(it * kw + w) * wb + l * SA_SIZE + i];
                        uint8_t bv = b[(jt * kw + w) * wb + l * SA_SIZE + j];
                        acc += (int32_t)av * (int32_t)bv;
                    }
                    /* sign-extend from ACC_BITS, as the IP does */
                    tile[i * SA_SIZE + j] =
                        (int32_t)((uint32_t)acc << (32 - ACC_BITS)) >> (32 - ACC_BITS);
                }
        }
    return 0;
}
#endif

/* One IP call on what is already in the windows (ursa.cpp: mxm_execute_ursa). */
static int run_call(ursa_dev_t *d, uint32_t p, uint32_t q, uint32_t m)
{
#ifdef URSA_SIM
    return sim_run(d, p, q, m) ? -EIO : 0;
#else
    if (wait_bit(d, AP_IDLE)) return -ETIMEDOUT;

    ap_wr(d, AP_A0_P, p);
    ap_wr(d, AP_B0_Q, q);
    ap_wr(d, AP_M,    m);
    ctrl_wr(d, CTRL_ADDR_A0, BRAM_AW_BASEADDR);
    ctrl_wr(d, CTRL_ADDR_B0, BRAM_BI_BASEADDR);
    ctrl_wr(d, CTRL_ADDR_C0, BRAM_CA_BASEADDR);

    ap_wr(d, AP_CTRL, AP_START);    /* auto_restart (bit 7) stays 0 */

    if (wait_bit(d, AP_DONE)) return -ETIMEDOUT;
    const uint32_t ret = ap_rd(d, AP_RETURN) & 0xFFu;
    if (wait_bit(d, AP_IDLE)) return -ETIMEDOUT;

    return (ret == SA_ERROR) ? -EIO : 0;
#endif
}

/* ─── Bitstream loading (Linux FPGA manager) ─────────────────────────────── */
#define FW_DIR      "/lib/firmware"
#define FPGA_MGR    "/sys/class/fpga_manager/fpga0"

#ifndef URSA_SIM
static int sysfs_write(const char *path, const char *val)
{
    int fd = open(path, O_WRONLY);
    if (fd < 0) return -errno;
    ssize_t n = write(fd, val, strlen(val));
    int e = (n < 0) ? -errno : 0;
    close(fd);
    return e;
}

static int sysfs_read(const char *path, char *buf, size_t len)
{
    int fd = open(path, O_RDONLY);
    if (fd < 0) return -errno;
    ssize_t n = read(fd, buf, len - 1);
    int e = (n < 0) ? -errno : 0;
    close(fd);
    buf[n > 0 ? n : 0] = '\0';
    char *nl = strchr(buf, '\n');
    if (nl) *nl = '\0';
    return e;
}

static int copy_file(const char *src, const char *dst)
{
    char buf[64 * 1024];
    int in = open(src, O_RDONLY);
    if (in < 0) return -errno;
    int out = open(dst, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (out < 0) { int e = -errno; close(in); return e; }

    int e = 0;
    for (;;) {
        ssize_t n = read(in, buf, sizeof(buf));
        if (n == 0) break;
        if (n < 0) { e = -errno; break; }
        for (ssize_t off = 0; off < n;) {
            ssize_t w = write(out, buf + off, (size_t)(n - off));
            if (w < 0) { e = -errno; break; }
            off += w;
        }
        if (e) break;
    }
    close(in);
    if (close(out) && !e) e = -errno;
    return e;
}
#endif

int ursa_load_bitstream(const char *bitstream)
{
    if (!bitstream || !*bitstream) return -EINVAL;

    const size_t len = strlen(bitstream);
    if (len >= 4 && strcmp(bitstream + len - 4, ".bit") == 0) {
        fprintf(stderr, "ursa_load_bitstream: %s is a .bit; convert it with\n"
                "  bootgen -image x.bif -arch zynq -process_bitstream bin\n", bitstream);
        return -EINVAL;
    }

    /* Refuse a design whose _NxN_ is not the array this was built for: the
       IP cannot report its size, and a mismatch only shows as wrong C. */
    {
        const char *base = strrchr(bitstream, '/');
        base = base ? base + 1 : bitstream;
        for (const char *p = base; (p = strchr(p, '_')) != NULL; p++) {
            int n1, n2, used = 0;
            if (sscanf(p, "_%dx%d_%n", &n1, &n2, &used) == 2 && used > 0) {
                if (n1 != SA_SIZE || n2 != SA_SIZE) {
                    fprintf(stderr, "ursa_load_bitstream: %s is a %dx%d design, "
                            "this library is built for %dx%d\n",
                            base, n1, n2, SA_SIZE, SA_SIZE);
                    return -EINVAL;
                }
                break;
            }
        }
    }

#ifdef URSA_SIM
    return 0;
#else
    const char *slash = strrchr(bitstream, '/');
    const char *name  = slash ? slash + 1 : bitstream;
    if (!*name || strlen(name) > 200) return -EINVAL;

    /* A path outside /lib/firmware: copy it in. */
    if (slash && !(slash - bitstream == (long)strlen(FW_DIR) &&
                   strncmp(bitstream, FW_DIR, strlen(FW_DIR)) == 0)) {
        char dst[256];
        snprintf(dst, sizeof(dst), FW_DIR "/%s", name);
        mkdir(FW_DIR, 0755);
        int e = copy_file(bitstream, dst);
        if (e) {
            fprintf(stderr, "ursa_load_bitstream: copy %s -> %s: %s\n",
                    bitstream, dst, strerror(-e));
            return e;
        }
    }

    int e = sysfs_write(FPGA_MGR "/flags", "0");   /* full reconfiguration */
    if (e) {
        fprintf(stderr, "ursa_load_bitstream: " FPGA_MGR "/flags: %s\n", strerror(-e));
        return e;
    }
    e = sysfs_write(FPGA_MGR "/firmware", name);   /* blocks until done */
    if (e) {
        fprintf(stderr, "ursa_load_bitstream: loading %s failed: %s (see dmesg)\n",
                name, strerror(-e));
        return e;
    }

    char state[64];
    e = sysfs_read(FPGA_MGR "/state", state, sizeof(state));
    if (e) return e;
    if (strcmp(state, "operating") != 0) {
        fprintf(stderr, "ursa_load_bitstream: FPGA manager state is \"%s\"\n", state);
        return -EIO;
    }
    return 0;
#endif
}

/* ─── FCLK0 (tb_main.cpp: set_fclk0 / print_fclk0) ───────────────────────── */
#ifndef URSA_PS_CLK_HZ
    #define URSA_PS_CLK_HZ 33333333u    /* PS_CLK of the board */
#endif
#define SLCR_PHYS           0xF8000000u
#define SLCR_SPAN           0x1000u
#define SLCR_LOCK           0x004       /* write 0x767B */
#define SLCR_UNLOCK         0x008       /* write 0xDF0D */
#define SLCR_LOCKSTA        0x00C       /* bit 0: locked */
#define SLCR_ARM_PLL_CTRL   0x100
#define SLCR_DDR_PLL_CTRL   0x104
#define SLCR_IO_PLL_CTRL    0x108
#define SLCR_FPGA0_CLK_CTRL 0x170

#ifdef URSA_SIM
/* IO PLL at 48 x PS_CLK (1600 MHz), FCLK0 = IO PLL / 16 / 1 (100 MHz). */
static uint32_t sim_slcr[SLCR_SPAN / 4] = {
    [SLCR_IO_PLL_CTRL / 4]    = 48u << 12,
    [SLCR_FPGA0_CLK_CTRL / 4] = (1u << 20) | (16u << 8),
};
#endif

static volatile uint32_t *slcr_map(int *fd)
{
#ifdef URSA_SIM
    *fd = -1;
    return sim_slcr;
#else
    *fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (*fd < 0) return NULL;
    void *p = mmap(NULL, SLCR_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED, *fd, (off_t)SLCR_PHYS);
    if (p == MAP_FAILED) { int e = errno; close(*fd); errno = e; return NULL; }
    return (volatile uint32_t *)p;
#endif
}

static void slcr_unmap(volatile uint32_t *s, int fd)
{
#ifdef URSA_SIM
    (void)s; (void)fd;
#else
    munmap((void *)s, SLCR_SPAN);
    close(fd);
#endif
}

/* PS_CLK as the kernel knows it: the ps-clk-frequency property of the clkc
   node (big-endian u32). The build-time URSA_PS_CLK_HZ is only a fallback;
   boards differ (33.333 MHz on ZedBoard/Zybo, 50 MHz on PYNQ-Z1/Z2). */
static uint32_t ps_clk_hz(void)
{
#ifndef URSA_SIM
    static const char *paths[] = {
        "/sys/firmware/devicetree/base/axi/slcr@f8000000/clkc@100/ps-clk-frequency",
        "/sys/firmware/devicetree/base/amba/slcr@f8000000/clkc@100/ps-clk-frequency",
        "/proc/device-tree/axi/slcr@f8000000/clkc@100/ps-clk-frequency",
        "/proc/device-tree/amba/slcr@f8000000/clkc@100/ps-clk-frequency",
    };
    for (size_t i = 0; i < sizeof(paths) / sizeof(paths[0]); i++) {
        int fd = open(paths[i], O_RDONLY);
        if (fd < 0) continue;
        uint8_t b[4];
        ssize_t n = read(fd, b, 4);
        close(fd);
        if (n == 4) {
            uint32_t v = ((uint32_t)b[0] << 24) | ((uint32_t)b[1] << 16)
                       | ((uint32_t)b[2] << 8) | b[3];
            if (v) return v;
        }
    }
#endif
    return URSA_PS_CLK_HZ;
}

/* Rate of the PLL FCLK0 is fed from (SRCSEL: 0x IO, 10 ARM, 11 DDR). */
static uint64_t fclk0_src_hz(volatile uint32_t *s)
{
    const uint32_t src = (s[SLCR_FPGA0_CLK_CTRL / 4] >> 4) & 0x3u;
    const uint32_t pll = (src == 2) ? s[SLCR_ARM_PLL_CTRL / 4]
                       : (src == 3) ? s[SLCR_DDR_PLL_CTRL / 4]
                       :              s[SLCR_IO_PLL_CTRL / 4];
    return (uint64_t)ps_clk_hz() * ((pll >> 12) & 0x7Fu);
}

static uint32_t fclk0_hz(volatile uint32_t *s)
{
    const uint32_t ctrl = s[SLCR_FPGA0_CLK_CTRL / 4];
    const uint32_t d0 = (ctrl >> 8) & 0x3Fu, d1 = (ctrl >> 20) & 0x3Fu;
    return (d0 && d1) ? (uint32_t)(fclk0_src_hz(s) / (d0 * d1)) : 0;
}

int ursa_get_fclk0(uint32_t *hz)
{
    if (!hz) return -EINVAL;
    int fd;
    volatile uint32_t *s = slcr_map(&fd);
    if (!s) return -errno;
    *hz = fclk0_hz(s);
    slcr_unmap(s, fd);
    return 0;
}

int ursa_set_fclk0(uint32_t target_hz, uint32_t *actual_hz)
{
    if (target_hz == 0) return -EINVAL;
    int fd;
    volatile uint32_t *s = slcr_map(&fd);
    if (!s) return -errno;

    /* Nearest rate, ties to the slower one, then the smallest DIVISOR1. */
    const uint64_t src = fclk0_src_hz(s);
    uint32_t best_d0 = 0, best_d1 = 0;
    uint64_t best_f = 0, best_err = UINT64_MAX;
    for (uint32_t d1 = 1; d1 <= 63; d1++)
        for (uint32_t d0 = 1; d0 <= 63; d0++) {
            const uint64_t f   = src / (d0 * d1);
            const uint64_t err = (f > target_hz) ? f - target_hz : target_hz - f;
            if (err < best_err || (err == best_err && f < best_f)) {
                best_err = err; best_f = f; best_d0 = d0; best_d1 = d1;
            }
        }
    if (!best_d0) { slcr_unmap(s, fd); return -ERANGE; }

    /* Linux leaves the SLCR unlocked and its clock driver relies on that,
       so lock it again only if it was locked before. */
    const int was_locked = s[SLCR_LOCKSTA / 4] & 1u;
    if (was_locked) s[SLCR_UNLOCK / 4] = 0xDF0Du;

    uint32_t v = s[SLCR_FPGA0_CLK_CTRL / 4];
    v &= ~((0x3Fu << 20) | (0x3Fu << 8));
    v |= (best_d1 << 20) | (best_d0 << 8);
    s[SLCR_FPGA0_CLK_CTRL / 4] = v;

    if (was_locked) s[SLCR_LOCK / 4] = 0x767Bu;

    const uint32_t got = fclk0_hz(s);
    if (getenv("URSA_DEBUG")) {
        static const char *names[] = { "IO", "IO", "ARM", "DDR" };
        fprintf(stderr, "ursa_set_fclk0: PS_CLK %u Hz, %s PLL %llu Hz, "
                "div0 %u div1 %u -> %u Hz (asked %u)\n", ps_clk_hz(),
                names[(v >> 4) & 0x3u], (unsigned long long)src,
                best_d0, best_d1, got, target_hz);
    }
    slcr_unmap(s, fd);
    if (actual_hz) *actual_hz = got;
    return 0;
}

/* ─── Constructor / destructor ───────────────────────────────────────────── */
void ursa_close(ursa_dev_t *d)
{
    if (!d) return;
#ifdef URSA_SIM
    free((void *)d->regs);
    free((void *)d->bram);
#else
    if (d->regs && d->regs != MAP_FAILED) munmap((void *)d->regs, URSA_REGS_SPAN);
    if (d->bram && d->bram != MAP_FAILED) munmap((void *)d->bram, BRAM_SPAN);
    if (d->fd >= 0) close(d->fd);
#endif
    free(d->pa); free(d->pb); free(d->pc); free(d->uc); free(d->ea); free(d->eb);
    free(d);
}

ursa_dev_t *ursa_open(void)
{
    ursa_dev_t *d = calloc(1, sizeof(*d));
    if (!d) return NULL;
    d->fd = -1;

#ifdef URSA_SIM
    d->regs = calloc(1, URSA_REGS_SPAN);
    d->bram = calloc(1, BRAM_SPAN);
    if (!d->regs || !d->bram) goto fail;
#else
    d->fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (d->fd < 0) { perror("ursa_open: /dev/mem"); goto fail; }

    d->regs = mmap(NULL, URSA_REGS_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED,
                   d->fd, (off_t)URSA_REGS_PHYS);
    if (d->regs == MAP_FAILED) { perror("ursa_open: mmap regs"); goto fail; }

    d->bram = mmap(NULL, BRAM_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED,
                   d->fd, (off_t)BRAM_PHYS);
    if (d->bram == MAP_FAILED) { perror("ursa_open: mmap bram"); goto fail; }
#endif

    d->win_a = (volatile uint32_t *)(d->bram + (BRAM_AW_BASEADDR - BRAM_PHYS));
    d->win_b = (volatile uint32_t *)(d->bram + (BRAM_BI_BASEADDR - BRAM_PHYS));
    d->win_c = (volatile uint32_t *)(d->bram + (BRAM_CA_BASEADDR - BRAM_PHYS));

    /* Raw A/B blocks never exceed their packed size, which fits the window. */
    d->pa = malloc(BRAM_AW_SIZE);
    d->pb = malloc(BRAM_BI_SIZE);
    d->pc = malloc(BRAM_CA_SIZE);
    d->uc = malloc(BRAM_CA_SIZE);
    d->ea = malloc(BRAM_AW_SIZE);
    d->eb = malloc(BRAM_BI_SIZE);
    if (!d->pa || !d->pb || !d->pc || !d->uc || !d->ea || !d->eb) {
        errno = ENOMEM;
        goto fail;
    }

#ifndef URSA_SIM
    /* ursa.cpp: ursa_post_reset_setup. Polled operation, no interrupts. */
    if (wait_bit(d, AP_IDLE)) {
        fprintf(stderr, "ursa_open: IP not idle (bitstream loaded? FCLK0 on?)\n");
        errno = ETIMEDOUT;
        goto fail;
    }
    ap_wr(d, AP_GIE, 0);
    ap_wr(d, AP_CTRL, 0);                       /* auto_restart off */
    ap_wr(d, AP_IER, 0);
    ap_wr(d, AP_ISR, ap_rd(d, AP_ISR) & 0x3u);  /* toggle-on-write: clear set bits */
#endif
    return d;

fail:
    {
        int e = errno;
        ursa_close(d);
        errno = e;
    }
    return NULL;
}

/* ─── Tiling (tb_main.cpp: plan_layer) ───────────────────────────────────── */
typedef struct {
    uint32_t P_pad, Q_pad, m_chunk, n_chunks, pc, qc;
} plan_t;

static int plan(uint32_t P, uint32_t Q, uint32_t M, plan_t *pl)
{
    const uint32_t wb = (uint32_t)ursa3_wb(SA_SIZE);
    const uint32_t L  = (uint32_t)ursa3_lanes(SA_SIZE);

    pl->P_pad = ((P + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    pl->Q_pad = ((Q + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;

    /* Fewest equal chunks of at most URSA_MAX_M, each a whole number of
       words (multiple of LANES), so no word straddles two chunks. */
    for (uint32_t n = (M + URSA_MAX_M - 1) / URSA_MAX_M;; n++) {
        uint32_t mc = (M + n - 1) / n;
        mc = ((mc + L - 1) / L) * L;
        if (mc <= URSA_MAX_M) { pl->m_chunk = mc; break; }
    }
    if (pl->m_chunk > M) pl->m_chunk = M;
    pl->n_chunks = (M + pl->m_chunk - 1) / pl->m_chunk;

    /* Widest Q, then tallest P, that the three windows allow, minimising
       the number of calls. */
    const uint32_t kw = (uint32_t)ursa3_kw(SA_SIZE, (int)pl->m_chunk);
    long best = -1;
    for (uint32_t qc = SA_SIZE; qc <= pl->Q_pad; qc += SA_SIZE) {
        if (ursa3_b_bytes(SA_SIZE, (int)pl->m_chunk, (int)qc) > BRAM_BI_SIZE) break;
        uint32_t pc = (BRAM_CA_SIZE / 4) / qc;
        if (pc > pl->P_pad) pc = pl->P_pad;
        const uint32_t pa = (BRAM_AW_SIZE / (kw * wb)) * SA_SIZE;
        if (pc > pa) pc = pa;
        pc = (pc / SA_SIZE) * SA_SIZE;
        if (pc < SA_SIZE) break;
        const long calls = (long)((pl->P_pad + pc - 1) / pc) * ((pl->Q_pad + qc - 1) / qc);
        if (best < 0 || calls <= best) { best = calls; pl->pc = pc; pl->qc = qc; }
    }
    return (best < 0) ? -1 : 0;
}

/* ─── Execution (tb_main.cpp: run_layer, with transfers) ─────────────────── */
int ursa_gemm(ursa_dev_t *d, int P, int Q, int M,
              const int8_t *A, int lda,
              const uint8_t *B, int ldb,
              int32_t *C, int ldc)
{
    if (!d || !A || !B || !C || P < 0 || Q < 0 || M < 0 ||
        lda < M || ldb < Q || ldc < Q)
        return -EINVAL;
    if (P == 0 || Q == 0) return 0;
    if (M == 0) {
        for (int i = 0; i < P; i++) memset(C + (size_t)i * ldc, 0, (size_t)Q * sizeof(int32_t));
        return 0;
    }

    plan_t pl = {0};
    if (plan((uint32_t)P, (uint32_t)Q, (uint32_t)M, &pl)) return -EINVAL;

    for (uint32_t q0 = 0; q0 < pl.Q_pad; q0 += pl.qc) {
        const uint32_t qc   = (pl.Q_pad - q0 < pl.qc) ? pl.Q_pad - q0 : pl.qc;
        const uint32_t qval = ((uint32_t)Q - q0 < qc) ? (uint32_t)Q - q0 : qc;

        for (uint32_t c = 0; c < pl.n_chunks; c++) {
            const uint32_t k0  = c * pl.m_chunk;
            const uint32_t len = ((uint32_t)M - k0 < pl.m_chunk) ? (uint32_t)M - k0 : pl.m_chunk;

            /* B block len x qc, packed once per (q tile, chunk). */
            const uint8_t *bsrc = B + (size_t)k0 * ldb + q0;
            int bld = ldb;
            if (qval < qc) {   /* right edge: zero-pad the missing columns */
                for (uint32_t k = 0; k < len; k++) {
                    memcpy(d->eb + k * qc, bsrc + (size_t)k * ldb, qval);
                    memset(d->eb + k * qc + qval, 0, qc - qval);
                }
                bsrc = d->eb;
                bld  = (int)qc;
            }
            const uint32_t nb = ursa3_b_bytes(SA_SIZE, (int)len, (int)qc);
            ursa3_pack_b(d->pb, bsrc, bld, SA_SIZE, (int)len, (int)qc);
            win_write(d->win_b, d->pb, nb);

            for (uint32_t p0 = 0; p0 < pl.P_pad; p0 += pl.pc) {
                const uint32_t pc   = (pl.P_pad - p0 < pl.pc) ? pl.P_pad - p0 : pl.pc;
                const uint32_t pval = ((uint32_t)P - p0 < pc) ? (uint32_t)P - p0 : pc;

                /* A block pc x len. */
                const int8_t *asrc = A + (size_t)p0 * lda + k0;
                int ald = lda;
                if (pval < pc) {   /* bottom edge: zero-pad the missing rows */
                    for (uint32_t i = 0; i < pval; i++)
                        memcpy(d->ea + i * len, asrc + (size_t)i * lda, len);
                    memset(d->ea + pval * len, 0, (pc - pval) * len);
                    asrc = d->ea;
                    ald  = (int)len;
                }
                const uint32_t na = ursa3_a_bytes(SA_SIZE, (int)pc, (int)len);
                ursa3_pack_a(d->pa, asrc, ald, SA_SIZE, (int)pc, (int)len);
                win_write(d->win_a, d->pa, na);

                int st = run_call(d, pc, qc, len);
                if (st) return st;

                /* C block back, unpacked, clipped and accumulated. */
                const uint32_t nc = ursa3_c_bytes((int)pc, (int)qc);
                win_read(d->pc, d->win_c, nc);
                ursa3_unpack_c(d->uc, (int)qc, d->pc, SA_SIZE, (int)pc, (int)qc);

                for (uint32_t i = 0; i < pval; i++) {
                    int32_t       *dst = C + (size_t)(p0 + i) * ldc + q0;
                    const int32_t *src = d->uc + i * qc;
                    if (c == 0) memcpy(dst, src, qval * sizeof(int32_t));
                    else        for (uint32_t j = 0; j < qval; j++) dst[j] += src[j];
                }
            }
        }
    }
    return 0;
}
