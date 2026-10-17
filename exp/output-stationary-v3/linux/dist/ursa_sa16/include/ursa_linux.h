/* URSA v3 (UFRGS Reconfigurable Systolic Array), Linux user-space driver.
 *
 * URSA-specific interface. Applications should use the common API in mxm.h;
 * this header adds bitstream and clock control.
 *
 * Low-level GEMM kernel for the Zynq-7000 PS running Linux:
 *
 *     C[P x Q] (int32) = A[P x M] (int8) * B[M x Q] (uint8)
 *
 * all three row-major, with leading dimensions (row strides, in elements).
 * Any shape is accepted: the call is padded to multiples of SA_SIZE, the
 * reduction is split in chunks of at most URSA_MAX_M, P and Q are tiled to
 * fit the BRAM windows, and partial C blocks are added on the ARM.
 *
 *     ursa_dev_t *d = ursa_open();                // constructor
 *     ursa_gemm(d, P, Q, M, A, M, B, Q, C, Q);    // execution (any number)
 *     ursa_close(d);                              // destructor
 *
 * Requirements on the board:
 *   - the BRAM block design bitstream (tcl/bd_bram.tcl) loaded, with the same
 *     SA_SIZE this library was built with (-DSA_SIZE=..., default 8);
 *   - FCLK0 running. Linux gates PL clocks nobody claims: reference fclk0 from
 *     a device-tree node/overlay or boot with clk_ignore_unused, otherwise the
 *     first register access hangs the bus;
 *   - root (or CAP_SYS_RAWIO) and a kernel that allows /dev/mem on the PL
 *     range (CONFIG_IO_STRICT_DEVMEM must not block 0x40000000-0x4012FFFF).
 *
 * Limitations:
 *   - the PE accumulators are ACC_BITS (20) wide and wrap inside one call;
 *     the wrapper only widens to int32 across M chunks;
 *   - not thread-safe: serialise calls on one device;
 *   - only one process should open the device at a time.
 */
#ifndef URSA_LINUX_H_
#define URSA_LINUX_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define URSA_API __attribute__((visibility("default")))

typedef struct ursa_dev ursa_dev_t;

/* Program the PL through the kernel FPGA manager (full bitstream). Call it
   before ursa_open, never while a device is open.
   `bitstream` is a .bit.bin (Bootgen -process_bitstream bin; a plain .bit is
   rejected): either a bare file name already in /lib/firmware, or a path,
   in which case the file is first copied into /lib/firmware (the kernel only
   loads firmware from there).
   A name with _NxN_ (as the build scripts make them) must match the
   SA_SIZE this library was built for, or -EINVAL is returned.
   Returns 0 when the manager reports "operating", or a negative errno.
   It does not set the FCLK0 rate: that is still the one the boot image set. */
URSA_API int ursa_load_bitstream(const char *bitstream);

/* PL clock FCLK0, programmed directly in the SLCR (FPGA0_CLK_CTRL), keeping
   its current source PLL. The rate set is the nearest the two 6-bit dividers
   can make, as Vivado does when it builds the design (IO PLL 1600 MHz:
   100 -> 100.00, 123 -> 123.08, 150 -> 145.45 MHz), so pass the MHz the
   bitstream was built for (the _fNNN in its name; no suffix = 100 MHz).
   Call it while the IP is idle: after ursa_load_bitstream, before ursa_open.
   The kernel clock framework is bypassed, so its view of fclk0 goes stale.
   PS_CLK is read from the device tree (clkc ps-clk-frequency), falling
   back to URSA_PS_CLK_HZ (default 33.333333 MHz).
   actual_hz may be NULL. Returns 0 or a negative errno. */
URSA_API int ursa_set_fclk0(uint32_t target_hz, uint32_t *actual_hz);
URSA_API int ursa_get_fclk0(uint32_t *hz);

/* Map the accelerator registers and BRAM windows and prepare the IP.
   Returns NULL on failure (errno is set, a message goes to stderr). */
URSA_API ursa_dev_t *ursa_open(void);

/* C = A * B. Returns 0, or -EINVAL (bad arguments), -ETIMEDOUT (IP did not
   finish) or -EIO (IP rejected a call). C is undefined on error. */
URSA_API int ursa_gemm(ursa_dev_t *d, int P, int Q, int M,
                       const int8_t  *A, int lda,
                       const uint8_t *B, int ldb,
                       int32_t       *C, int ldc);

/* Unmap and free. Accepts NULL. */
URSA_API void ursa_close(ursa_dev_t *d);

#ifdef __cplusplus
}
#endif

#endif /* URSA_LINUX_H_ */
