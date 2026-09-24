#include <stdio.h>
#include <cstdlib>

#include "matrices.h"

// Host check of the v2 shell against a reference that wraps at ACC_BITS.
#include <cstdio>
// #include <cstdlib>
#include <cstring>

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
// which is what the AXI byte lanes deliver.
static void pack_b(const uint8_t *b, b_word_t *w, int n_bytes) {
    for (int n = 0; n < n_bytes / SA_SIZE; n++) {
        b_word_t v = 0;
        for (int jj = 0; jj < SA_SIZE; jj++) v.range(8*jj+7, 8*jj) = b[n*SA_SIZE + jj];
        w[n] = v;
    }
}

// A as it must sit in memory: each row padded with zeros to m_a, a multiple
// of SA_SIZE, then packed into words the same way as B.
static int pack_a(const int8_t *a, a_word_t *w, int p, int m) {
    const int m_a = ((m + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
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
    b_word_t *bw = new b_word_t[m*q/SA_SIZE];
    a_word_t *aw = new a_word_t[p*(m+SA_SIZE)/SA_SIZE];
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
    printf("SA_SIZE=%d ACC_BITS=%d MAX_M=%d\n", SA_SIZE, ACC_BITS, MAX_M);
    int fail = 0;
    // T3 layers
    fail |= run(16,  36, 256, 0, 1);
    fail |= run(16, 144,  64, 0, 2);
    fail |= run( 8, 144,  64, 0, 3);
    // edge shapes
    fail |= run(SA_SIZE, 1, SA_SIZE, 0, 4);
    fail |= run(SA_SIZE, 2, SA_SIZE, 0, 5);
    fail |= run(2*SA_SIZE, 7, 3*SA_SIZE, 0, 6);
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

// int8_t   g_mem_a[MEM_DEPTH];
// uint8_t  g_mem_b[MEM_DEPTH];
// int32_t  g_mem_c[MEM_DEPTH];
// int32_t  g_mem_c_gold[MEM_DEPTH];


// int main()
// {
//     /* Shape and geometry, printed so a cosimulation log says which
//        configuration produced it. */
//     printf("=== URSA testbench ===\n");
//     printf("SA_SIZE=%d  ACC_BITS=%d\n", SA_SIZE, ACC_BITS);
//     printf("P=%d  Q=%d  M=%d\n", P, Q, M);
//     printf("tiles=%d  k iterations per tile=%d\n",
//            (P / SA_SIZE) * (Q / SA_SIZE), M + 2 * SA_SIZE - 2);

//     if ((P % SA_SIZE) != 0 || (Q % SA_SIZE) != 0) {
//         printf("[FAIL] P and Q must be multiples of SA_SIZE=%d\n", SA_SIZE);
//         return 1;
//     }

//     init_matrix_a(g_mem_a, P, M);
//     init_matrix_b(g_mem_b, M, Q);
//     gold_mxm(g_mem_a, g_mem_b, g_mem_c_gold, P, M, Q);

// #ifdef DEBUG
//     printf("=== Input Matrices ===\n");
//     print_matrix_a(g_mem_a, P, M);
//     print_matrix_b(g_mem_b, M, Q);
//     printf("=== Gold Result ===\n");
//     print_matrix_c(g_mem_c_gold, P, Q);
// #endif

//     uint8_t sa_status = mxm_execute_ursa(g_mem_a, P,
//                                          g_mem_b, Q,
//                                          g_mem_c, M);

// #ifdef DEBUG
//     printf("=== URSA Result ===\n");
//     print_matrix_c(g_mem_c, P, Q);
// #endif

//     if (sa_status != SA_SUCCESS) {
//         printf("[FAIL] URSA returned status %u\n", (unsigned)sa_status);
//         return 1;
//     }

//     if (compare_mxm(g_mem_c, g_mem_c_gold, P, Q)) {
//         printf("[PASS] URSA output matches gold\n");
//         return 0;
//     }

//     printf("[FAIL] URSA output does not match gold\n");
//     return 1;
// }