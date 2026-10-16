/* URSA v3 memory layout, host side (plain C99, no HLS types).
 *
 * This is what the urt runtime has to do differently from v2:
 *   urt_plan        : pack A (weights) once, with ursa3_pack_a
 *   urt_gemm_run    : the transfer copy of B becomes ursa3_pack_b,
 *                     the copy back of C becomes ursa3_unpack_c
 *   urt_model_mxm   : same packing, for the software model
 *
 * Sizes (bytes) for a call P x M x Q on an SA x SA array:
 *   A: (P/SA) * KW * WB      B: (Q/SA) * KW * WB      C: P * Q * 4
 * with WB = max(SA, 4), LANES = WB/SA, KW = ceil(M/LANES).
 * P and Q must be multiples of SA (pad with zero rows/columns before).
 *
 * Layouts:
 *   A word (it*KW + w), byte l*SA + i = A[it*SA + i][w*LANES + l]   (0 past M)
 *   B word (jt*KW + w), byte l*SA + j = B[w*LANES + l][jt*SA + j]   (0 past M)
 *   C tile n = it*(Q/SA) + jt is SA*SA int32, row-major inside the tile,
 *     tiles in increasing n. Values are already sign-extended to int32.
 */
#ifndef URSA_V3_LAYOUT_H
#define URSA_V3_LAYOUT_H
#include <stdint.h>
#include <string.h>

static inline int ursa3_wb(int sa)    { return sa < 4 ? 4 : sa; }
static inline int ursa3_lanes(int sa) { return ursa3_wb(sa) / sa; }
static inline int ursa3_kw(int sa, int m) { int L = ursa3_lanes(sa); return (m + L - 1) / L; }

static inline uint32_t ursa3_a_bytes(int sa, int p, int m) { return (uint32_t)(p / sa) * ursa3_kw(sa, m) * ursa3_wb(sa); }
static inline uint32_t ursa3_b_bytes(int sa, int m, int q) { return (uint32_t)(q / sa) * ursa3_kw(sa, m) * ursa3_wb(sa); }
static inline uint32_t ursa3_c_bytes(int p, int q)         { return (uint32_t)p * q * 4; }

/* a: p x m row-major int8, lda = row stride in elements (>= m) */
static inline void ursa3_pack_a(uint8_t *dst, const int8_t *a, int lda, int sa, int p, int m)
{
    const int wb = ursa3_wb(sa), L = ursa3_lanes(sa), kw = ursa3_kw(sa, m);
    for (int it = 0; it < p / sa; it++)
        for (int w = 0; w < kw; w++) {
            uint8_t *word = dst + ((uint32_t)it * kw + w) * wb;
            for (int l = 0; l < L; l++) {
                const int k = w * L + l;
                for (int i = 0; i < sa; i++)
                    word[l * sa + i] = (k < m) ? (uint8_t)a[(it * sa + i) * lda + k] : 0;
            }
        }
}

/* b: m x q row-major uint8, ldb = row stride in elements (>= q).
 * Inner loop walks one row of B (contiguous) per k: cache friendly on the ARM. */
static inline void ursa3_pack_b(uint8_t *dst, const uint8_t *b, int ldb, int sa, int m, int q)
{
    const int wb = ursa3_wb(sa), L = ursa3_lanes(sa), kw = ursa3_kw(sa, m);
    const int tb = q / sa;
    for (int w = 0; w < kw; w++)
        for (int l = 0; l < L; l++) {
            const int k = w * L + l;
            for (int jt = 0; jt < tb; jt++) {
                uint8_t *dstw = dst + ((uint32_t)jt * kw + w) * wb + l * sa;
                if (k < m) memcpy(dstw, b + (uint32_t)k * ldb + jt * sa, sa);
                else       memset(dstw, 0, sa);
            }
        }
}

/* c: p x q row-major int32, ldc = row stride in elements (>= q) */
static inline void ursa3_unpack_c(int32_t *c, int ldc, const void *src, int sa, int p, int q)
{
    const int32_t *s = (const int32_t *)src;
    const int tb = q / sa;
    for (int it = 0; it < p / sa; it++)
        for (int jt = 0; jt < tb; jt++) {
            const int32_t *tile = s + ((uint32_t)it * tb + jt) * sa * sa;
            for (int i = 0; i < sa; i++)
                memcpy(c + (uint32_t)(it * sa + i) * ldc + jt * sa, tile + i * sa, sa * sizeof(int32_t));
        }
}

#endif
