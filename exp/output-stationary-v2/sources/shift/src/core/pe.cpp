#include "pe.h"

void pe_init(PE *pe) {
    pe->li = 0;
    pe->tw = 0;
    pe->ri = 0;
    pe->bw = 0;
    pe->ba = 0;
}

void pe_reset(PE *pe) {
    pe->ba = 0;
}

void pe_compute(PE *pe) {
    // this pragma does not working
    // #pragma HLS UNROLL
    pe->ri = pe->li;
    pe->bw = pe->tw;
#ifdef PE_POT
    // Shift-add MAC. 'code' selects 0 or tw << (code-1), max 255 << 6 = 16320,
    // so the product fits in 15 bits and the accumulator width is unchanged.
    // No multiplier is described, so no DSP48 should be inferred here.
    unsigned int code = (unsigned int)(pe->li & 0x7);
    bool         neg  = ((pe->li >> 3) & 0x1) != 0;
    macc_t prod = (code == 0) ? (macc_t)0
                              : (macc_t)((macc_t)pe->tw << (code - 1));
    pe->ba += neg ? (macc_t)(-prod) : prod;
#else
    pe->ba += pe->li * pe->tw;
#endif
}

// #include "pe.h"

// void pe_init(PE *pe) {
//     pe->li = 0;
//     pe->tw = 0;
//     pe->ri = 0;
//     pe->bw = 0;
//     pe->ba = 0;
// }

// void pe_reset(PE *pe) {
//     pe->ba = 0;
// }

// void pe_compute(PE *pe) {
//     //#pragma HLS UNROLL
//     pe->ri = pe->li;
//     pe->bw = pe->tw;
//     pe->ba += pe->li * pe->tw;
// }
