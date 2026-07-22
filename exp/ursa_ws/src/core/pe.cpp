#include "pe.h"


void pe_init(PE *pe) {
    pe->l_in = 0;
    pe->r_out = 0;
    pe->t_in = 0;
    pe->b_out = 0;
    pe->stay = 0;
}

void pe_reset (PE *pe){
    pe->stay = 0;
}

void pe_compute (PE *pe){
    #pragma HLS INLINE
    pe->r_out = pe->l_in + (pe->stay * pe->t_in);
    pe->b_out = pe->t_in;
}

// load weights from top to bottom
void pe_load_weights(PE *pe){
    #pragma HLS INLINE
    pe->stay = pe->t_in;
    pe->b_out = pe->t_in;
}
