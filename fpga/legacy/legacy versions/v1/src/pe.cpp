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
    #pragma HLS UNROLL
    pe->ri = pe->li;
    pe->bw = pe->tw;
    pe->ba += pe->li * pe->tw;
}
