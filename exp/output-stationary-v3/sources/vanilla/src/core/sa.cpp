#include "sa.h"
#include "pe.h"

/**********************************************************************
KERNEL SA (v3)
sa_init / sa_compute / sa_reset are the v2 code. sa_store is gone: the
accumulators leave one PE row at a time (sa_row) through a shadow register
in the shell, and the C port is driven by its own dataflow process.
**********************************************************************/
void sa_init(SA *sa) {
   #pragma HLS INLINE
   #pragma HLS ARRAY_PARTITION variable=sa->pe complete dim=0
   #pragma HLS ARRAY_PARTITION variable=sa->in_mtx_a_li complete
   #pragma HLS ARRAY_PARTITION variable=sa->in_mtx_b_tw complete
   for (int i = 0; i < SA_SIZE; i++) {
      #pragma HLS UNROLL
      for (int j = 0; j < SA_SIZE; j++) {
         #pragma HLS UNROLL
         pe_init(&sa->pe[i][j]);
      }
      sa->in_mtx_a_li[i] = 0;
      sa->in_mtx_b_tw[i] = 0;
   }
}

void sa_reset(SA *sa) {
   #pragma HLS INLINE
   for (int i = 0; i < SA_SIZE; i++) {
      #pragma HLS UNROLL
      for (int j = 0; j < SA_SIZE; j++) {
         #pragma HLS UNROLL
         pe_reset(&sa->pe[i][j]);
      }
   }
}

void sa_compute(SA *sa) {
   #pragma HLS INLINE
   int i, j;

   // Edge inputs: rows take A, columns take B
   for (i = 0; i < SA_SIZE; i++) {
      #pragma HLS UNROLL
      sa->pe[i][0].li = sa->in_mtx_a_li[i];
      sa->pe[0][i].tw = sa->in_mtx_b_tw[i];
   }

   // Horizontal connections (registered in the PE: ri <- li)
   for (j = 1; j < SA_SIZE; j++) {
      #pragma HLS UNROLL
      for (i = 0; i < SA_SIZE; i++) {
         #pragma HLS UNROLL
         sa->pe[i][j].li = sa->pe[i][j-1].ri;
      }
   }

   // Vertical connections (registered in the PE: bw <- tw)
   for (i = 1; i < SA_SIZE; i++) {
      #pragma HLS UNROLL
      for (j = 0; j < SA_SIZE; j++) {
         #pragma HLS UNROLL
         sa->pe[i][j].tw = sa->pe[i-1][j].bw;
      }
   }

   // All PEs in parallel
   for (i = 0; i < SA_SIZE; i++) {
      #pragma HLS UNROLL
      for (j = 0; j < SA_SIZE; j++) {
         #pragma HLS UNROLL
         pe_compute(&sa->pe[i][j]);
      }
   }
}

// Accumulators of PE row i in one word: column j at bits
// [j*ACC_BITS, +ACC_BITS).
acc_row_t sa_row(SA *sa, int i) {
   #pragma HLS INLINE
   acc_row_t v = 0;
   for (int j = 0; j < SA_SIZE; j++) {
      #pragma HLS UNROLL
      v.range(j*ACC_BITS + ACC_BITS - 1, j*ACC_BITS) = sa->pe[i][j].ba.range(ACC_BITS - 1, 0);
   }
   return v;
}
