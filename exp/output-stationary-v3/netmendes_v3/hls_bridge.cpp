// Host-only bridge: runs the HLS C model of the v3 IP (mxm_execute_ursa) on
// the byte windows of the netmendes runtime. Build a network test with
//   -DURSA_HOST -DURT_V3_HLS -DAP_FIXED <test>.cpp hls_bridge.cpp core/*.cpp
// to check the patched runtime against the IP model rather than its own.
#include <vector>
#include "core/shell.h"

uint8_t urt_hls_mxm(const int8_t *a, const uint8_t *b, int32_t *c,
                    uint32_t p, uint32_t q, uint32_t m)
{
    const uint32_t kw = (uint32_t)(KSTEPS(m) / LANES);
    std::vector<a_word_t> A((p / SA_SIZE) * kw);
    std::vector<b_word_t> B((q / SA_SIZE) * kw);
    std::vector<c_word_t> C(p * q / C_PER_WORD);
    for (size_t w = 0; w < A.size(); w++)
        for (int x = 0; x < WORD_BYTES; x++) A[w].range(8*x+7, 8*x) = (uint8_t)a[w*WORD_BYTES + x];
    for (size_t w = 0; w < B.size(); w++)
        for (int x = 0; x < WORD_BYTES; x++) B[w].range(8*x+7, 8*x) = b[w*WORD_BYTES + x];
    const uint8_t rc = mxm_execute_ursa(A.data(), (uint16_t)p, B.data(), (uint16_t)q, C.data(), (uint16_t)m);
    for (uint32_t i = 0; i < p * q; i++)
        c[i] = (int32_t)(uint32_t)C[i / C_PER_WORD].range(32*(i % C_PER_WORD) + 31, 32*(i % C_PER_WORD));
    return rc;
}
