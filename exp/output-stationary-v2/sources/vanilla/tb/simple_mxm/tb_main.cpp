// Host check of the v2 shell against a reference that wraps at ACC_BITS.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "matrices.h"
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

// B as the ARM writes it: row-major bytes. Packed into words little-endian,
// which is what the AXI byte lanes deliver. UM: 27/09/26 - the word is
// WORD_BYTES, not SA_SIZE; the two differ below 4x4. The tail word is padded
// with zeros when n_bytes is not a multiple of the word.
static int words_for(int n_bytes) { return (n_bytes + WORD_BYTES - 1) / WORD_BYTES; }

static void pack_b(const uint8_t *b, b_word_t *w, int n_bytes) {
    for (int n = 0; n < words_for(n_bytes); n++) {
        b_word_t v = 0;
        for (int jj = 0; jj < WORD_BYTES; jj++) {
            int idx = n*WORD_BYTES + jj;
            v.range(8*jj+7, 8*jj) = (idx < n_bytes) ? b[idx] : 0;
        }
        w[n] = v;
    }
}

// A as it must sit in memory: each row padded with zeros to m_a, a multiple
// of WORD_BYTES, then packed into words the same way as B.
static int m_a_of(int m) { return ((m + WORD_BYTES - 1) / WORD_BYTES) * WORD_BYTES; }

static int pack_a(const int8_t *a, a_word_t *w, int p, int m) {
    const int m_a = m_a_of(m);
    uint8_t *tmp = new uint8_t[p * m_a];
    for (int i = 0; i < p; i++)
        for (int k = 0; k < m_a; k++)
            tmp[i*m_a + k] = (k < m) ? (uint8_t)a[i*m + k] : 0;
    pack_b(tmp, w, p * m_a);
    delete[] tmp;
    return m_a;
}

static int run(int p, int m, int q, int mode, unsigned seed) {
    // P and Q are always SA-aligned by the ARM before the call
    p = ((p + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    q = ((q + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    srand(seed);
    int8_t  *a  = new int8_t [p*m];
    uint8_t *b  = new uint8_t[m*q];
    b_word_t *bw = new b_word_t[words_for(m*q)];
    a_word_t *aw = new a_word_t[words_for(p*m_a_of(m))];
    int32_t *c  = new int32_t[p*q];
    int32_t *cg = new int32_t[p*q];
    for (int i = 0; i < p*m; i++) a[i] = mode == 1 ? 127 : mode == 2 ? -128 : (int8_t)(rand() & 0xFF);
    for (int i = 0; i < m*q; i++) b[i] = mode ? 255 : (uint8_t)(rand() & 0xFF);
    memset(c, 0x5A, p*q*4);
    pack_b(b, bw, m*q);
    pack_a(a, aw, p, m);
    int rc = mxm_execute_ursa(aw, p, bw, q, c, m);
    gold(a, b, cg, p, m, q);
    int bad = 0;
    for (int i = 0; i < p*q; i++) if (c[i] != cg[i]) { if (!bad) printf("  mismatch at %d: %d vs %d\n", i, c[i], cg[i]); bad++; }
    printf("P=%3d M=%3d Q=%3d %-8s rc=%d  %s\n", p, m, q, mode == 1 ? "max" : mode == 2 ? "min" : "random", rc, bad ? "FAIL" : "PASS");
    delete[] a; delete[] b; delete[] bw; delete[] aw; delete[] c; delete[] cg;
    return bad || rc;
}

int main() {
    printf("SA_SIZE=%d WORD_BYTES=%d ACC_BITS=%d MAX_M=%d\n", SA_SIZE, WORD_BYTES, ACC_BITS, MAX_M);
    int fail = 0;
    // T3 layers
    fail |= run(16,  36, 256, 0, 1);
    fail |= run(16, 144,  64, 0, 2);
    fail |= run( 8, 144,  64, 0, 3);
    // edge shapes
    fail |= run(SA_SIZE, 1, SA_SIZE, 0, 4);
    fail |= run(SA_SIZE, 2, SA_SIZE, 0, 5);
    fail |= run(2*SA_SIZE, 7, 3*SA_SIZE, 0, 6);
    // q not a multiple of the word: below 4x4 the B lane alternates per row
    fail |= run(2*SA_SIZE, 9, 5*SA_SIZE, 0, 10);
    fail |= run(3*SA_SIZE, 33, 7*SA_SIZE, 0, 11);
    fail |= run(SA_SIZE, MAX_M, SA_SIZE, 0, 7);
    // saturated operands: 127*255*144 overflows 20 bits, so the wrap is exercised
    fail |= run(16, 144, 64, 1, 8);
    fail |= run(16, 144, 64, 2, 9);   // most negative weights: sign of A
    // m out of range must be refused
    {
        a_word_t aw[4]; b_word_t bw[4]; int32_t c[16];
        int rc = mxm_execute_ursa(aw, SA_SIZE, bw, SA_SIZE, c, MAX_M + 1);
        printf("m=MAX_M+1 rc=%d %s\n", rc, rc == SA_ERROR ? "PASS" : "FAIL");
        fail |= (rc != SA_ERROR);
    }
    printf(fail ? "*** FAIL ***\n" : "*** ALL PASS ***\n");
    return fail;
}