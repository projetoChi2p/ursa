#include "sa.h"
#include "pe.h"

/**********************************************************************
KERNEL SA
**********************************************************************/
void sa_init(SA *sa) {
   #pragma HLS ARRAY_PARTITION variable=sa->pe complete 
   #pragma HLS ARRAY_PARTITION variable=sa->in_mtx_a_li complete
   #pragma HLS ARRAY_PARTITION variable=sa->in_mtx_b_tw complete

   unsigned short i,j;

   #pragma HLS PIPELINE II=1

   for(i=0;i<SA_SIZE;i++){
      #pragma HLS UNROLL
      for(j=0;j<SA_SIZE;j++){
        #pragma HLS UNROLL
        pe_init(&sa->pe[i][j]);
      }
   }
}

void sa_reset(SA *sa){
    #pragma HLS PIPELINE II=1

    for(unsigned short i=0;i<SA_SIZE;i++){
        #pragma HLS UNROLL
        for(unsigned short j=0;j<SA_SIZE;j++){
            #pragma HLS UNROLL
            pe_reset(&sa->pe[i][j]);
        }
    }
}

void sa_input_a_b(SA *sa, data_a_t in_a, data_b_t in_b, unsigned short k){
   #pragma HLS DEPENDENCE variable=sa->in_mtx_a_li inter false
   #pragma HLS DEPENDENCE variable=sa->in_mtx_b_tw inter false
   
   sa->in_mtx_a_li[k]=in_a;
   sa->in_mtx_b_tw[k]=in_b;
}

void sa_compute(SA *sa) {
   unsigned short i,j;

   #pragma HLS PIPELINE II=1

   // Load lateral inputs (li) from mtx A and upper inputs (tw) from mtx B in parallel
   for(i=0;i<SA_SIZE;i++){
        #pragma HLS UNROLL
        sa->pe[i][0].li = sa->in_mtx_a_li[i];
        sa->pe[0][i].tw = sa->in_mtx_b_tw[i];
   }

   // Horizontal connections. Skip the first column
   for(j=1;j<SA_SIZE;j++) {    // Columns processed sequentially
      #pragma HLS UNROLL 
      for(i=0;i<SA_SIZE;i++) { // Rows of the same column processed in parallel
         #pragma HLS UNROLL
         sa->pe[i][j].li = sa->pe[i][j-1].ri;
      }
   }
   
   // Vertical connections. Skip the first row
   for(i=1;i<SA_SIZE;i++) {    // Rows processed sequentially
      #pragma HLS UNROLL
      for(j=0;j<SA_SIZE;j++) { // Columns of the same row processed in parallel
         #pragma HLS UNROLL
         sa->pe[i][j].tw = sa->pe[i-1][j].bw;
      }
   }

   // Compute PE in parallel
   for(i=0;i<SA_SIZE;i++) {
      #pragma HLS UNROLL
      for(j=0;j<SA_SIZE;j++) {
            #pragma HLS UNROLL
            pe_compute(&sa->pe[i][j]);
      }
   }
}

void sa_store(SA *sa, data_c_t *out, unsigned short b0_q){
   #pragma HLS PIPELINE II=1
   
   for(unsigned short i=0;i<SA_SIZE;i++){
      #pragma HLS UNROLL
      for(unsigned short j=0;j<SA_SIZE;j++){
         #pragma HLS UNROLL
         out[(i*b0_q)+j]= (data_c_t)sa->pe[i][j].ba;
      }
   }
}

