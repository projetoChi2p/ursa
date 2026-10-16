// Host check of the v3 shell against a reference that wraps at ACC_BITS.
// The pack/unpack functions below are the reference for the urt runtime:
// they define the v3 memory layout of A, B and C.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>
#include "../../src/core/shell.h"

static void gold(const int8_t *a, const uint8_t *b, int32_t *c, int p, int m, int q) {
    const int shift = 32 - ACC_BITS;
    for (int i = 0; i < p; i++) for (int j = 0; j < q; j++) {
        int32_t acc = 0;
        for (int k = 0; k < m; k++) {
            acc += (int32_t)a[i*m+k] * (int32_t)b[k*q+j];
            acc = (int32_t)((uint32_t)acc << shift) >> shift;
        }
        c[i*q+j] = acc;
    }
}

// Words per tile for reduction m
static int kw_of(int m) { return KSTEPS(m) / LANES; }

// A (p x m, row-major int8) -> tile-major words.
//   row tile it, word w: lane l, byte i = A[it*SA + i][w*LANES + l]  (0 past m)
static std::vector<a_word_t> pack_a(const int8_t *a, int p, int m) {
    const int kw = kw_of(m), ta = p / SA_SIZE;
    std::vector<a_word_t> w(ta * kw);
    for (int it = 0; it < ta; it++)
        for (int ww = 0; ww < kw; ww++) {
            a_word_t v = 0;
            for (int l = 0; l < LANES; l++)
                for (int i = 0; i < SA_SIZE; i++) {
                    const int k = ww * LANES + l;
                    const int8_t x = (k < m) ? a[(it*SA_SIZE + i)*m + k] : 0;
                    const int bit = 8 * (l*SA_SIZE + i);
                    v.range(bit + 7, bit) = (uint8_t)x;
                }
            w[it*kw + ww] = v;
        }
    return w;
}

// B (m x q, row-major uint8) -> tile-major words.
//   col tile jt, word w: lane l, byte j = B[w*LANES + l][jt*SA + j]  (0 past m)
static std::vector<b_word_t> pack_b(const uint8_t *b, int m, int q) {
    const int kw = kw_of(m), tb = q / SA_SIZE;
    std::vector<b_word_t> w(tb * kw);
    for (int jt = 0; jt < tb; jt++)
        for (int ww = 0; ww < kw; ww++) {
            b_word_t v = 0;
            for (int l = 0; l < LANES; l++)
                for (int j = 0; j < SA_SIZE; j++) {
                    const int k = ww * LANES + l;
                    const uint8_t x = (k < m) ? b[k*q + jt*SA_SIZE + j] : 0;
                    const int bit = 8 * (l*SA_SIZE + j);
                    v.range(bit + 7, bit) = x;
                }
            w[jt*kw + ww] = v;
        }
    return w;
}

// C tile-major words -> p x q row-major int32.
//   tile n = it*tb + jt, word w, slot s: element i*SA + j = w*C_PER_WORD + s
static void unpack_c(const std::vector<c_word_t> &w, int32_t *c, int p, int q) {
    const int ta = p / SA_SIZE, tb = q / SA_SIZE;
    for (int it = 0; it < ta; it++)
        for (int jt = 0; jt < tb; jt++) {
            const int n = it*tb + jt;
            for (int e = 0; e < SA_SIZE*SA_SIZE; e++) {
                const c_word_t word = w[n*TILE_C_WORDS + e / C_PER_WORD];
                const int s = e % C_PER_WORD;
                const int i = e / SA_SIZE, j = e % SA_SIZE;
                c[(it*SA_SIZE + i)*q + jt*SA_SIZE + j] = (int32_t)(uint32_t)word.range(32*s + 31, 32*s);
            }
        }
}

static int run(int p, int m, int q, int mode, unsigned seed) {
    p = ((p + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    q = ((q + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    srand(seed);
    std::vector<int8_t>  a(p*m);
    std::vector<uint8_t> b(m*q);
    std::vector<int32_t> c(p*q), cg(p*q);
    for (int i = 0; i < p*m; i++) a[i] = mode == 1 ? 127 : mode == 2 ? -128 : (int8_t)(rand() & 0xFF);
    for (int i = 0; i < m*q; i++) b[i] = mode ? 255 : (uint8_t)(rand() & 0xFF);

    std::vector<a_word_t> aw = pack_a(a.data(), p, m);
    std::vector<b_word_t> bw = pack_b(b.data(), m, q);
    std::vector<c_word_t> cw((p/SA_SIZE) * (q/SA_SIZE) * TILE_C_WORDS, c_word_t(0x5A5A5A5A));

    int rc = mxm_execute_ursa(aw.data(), p, bw.data(), q, cw.data(), m);
    unpack_c(cw, c.data(), p, q);
    gold(a.data(), b.data(), cg.data(), p, m, q);

    int bad = 0;
    for (int i = 0; i < p*q; i++)
        if (c[i] != cg[i]) { if (!bad) printf("  mismatch at %d: %d vs %d\n", i, c[i], cg[i]); bad++; }
    printf("P=%3d M=%3d Q=%3d %-8s rc=%d  %s\n", p, m, q,
           mode == 1 ? "max" : mode == 2 ? "min" : "random", rc, bad ? "FAIL" : "PASS");
    return bad || rc;
}

int main() {
    printf("SA_SIZE=%d WORD_BYTES=%d LANES=%d ACC_BITS=%d MAX_M=%d\n",
           SA_SIZE, WORD_BYTES, LANES, ACC_BITS, MAX_M);
    int fail = 0;
    // T3 layers
    fail |= run(16,  36, 256, 0, 1);
    fail |= run(16, 144,  64, 0, 2);
    fail |= run( 8, 144,  64, 0, 3);
    // edge shapes
    fail |= run(SA_SIZE, 1, SA_SIZE, 0, 4);
    fail |= run(SA_SIZE, 2, SA_SIZE, 0, 5);
    fail |= run(2*SA_SIZE, 7, 3*SA_SIZE, 0, 6);
    fail |= run(2*SA_SIZE, 9, 5*SA_SIZE, 0, 10);
    fail |= run(3*SA_SIZE, 33, 7*SA_SIZE, 0, 11);
    fail |= run(SA_SIZE, MAX_M, SA_SIZE, 0, 7);
    // netmendes-like call shapes (P x Q x M)
    fail |= run(16, 126, 128, 0, 12);
    fail |= run(32, 252, 64, 0, 13);
    // saturated operands: the 20-bit wrap is exercised
    fail |= run(16, 144, 64, 1, 8);
    fail |= run(16, 144, 64, 2, 9);
    // m out of range must be refused
    {
        a_word_t aw[4]; b_word_t bw[4]; c_word_t cw[64];
        int rc = mxm_execute_ursa(aw, SA_SIZE, bw, SA_SIZE, cw, MAX_M + 1);
        printf("m=MAX_M+1 rc=%d %s\n", rc, rc == SA_ERROR ? "PASS" : "FAIL");
        fail |= (rc != SA_ERROR);
    }
    printf(fail ? "*** FAIL ***\n" : "*** ALL PASS ***\n");
    return fail;
}
