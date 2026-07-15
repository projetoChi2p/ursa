#include "sa.h"
#include "pe.h"

/**********************************************************************
KERNEL SA
**********************************************************************/
void sa_init(SA *sa) {
   #pragma HLS ARRAY_PARTITION variable=sa->pe complete 
   #pragma HLS ARRAY_PARTITION variable=sa->in_mtx_a complete
   #pragma HLS ARRAY_PARTITION variable=sa->in_mtx_b complete

   uint16_t i,j;

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

    for(uint16_t i=0;i<SA_SIZE;i++){
        #pragma HLS UNROLL
        for(uint16_t j=0;j<SA_SIZE;j++){
            #pragma HLS UNROLL
            pe_reset(&sa->pe[i][j]);
        }
    }
}

void sa_input_a_b(SA *sa, data_a_t in_a, data_b_t in_b, uint16_t k){
   #pragma HLS DEPENDENCE variable=sa->in_mtx_a inter false
   #pragma HLS DEPENDENCE variable=sa->in_mtx_b inter false
   
   sa->in_mtx_a[k]=in_a;
   sa->in_mtx_b[k]=in_b;
}

void sa_load_weights(SA *sa){
   #pragma HLS PIPELINE II=1
   uint16_t i, j;

   // 1. Feed the top row of the SA with incoming weights from the shell
   for(j=0; j<SA_SIZE; j++){
      #pragma HLS UNROLL
      sa->pe[0][j].t_in = sa->in_mtx_b[j]; // Assuming weights come through the B input ports
   }

   // 2. Vertical connections: connect the bottom of one PE to the top of the next
   for(i=1; i<SA_SIZE; i++) {
      #pragma HLS UNROLL
      for(j=0; j<SA_SIZE; j++) {
         #pragma HLS UNROLL
         sa->pe[i][j].t_in = sa->pe[i-1][j].b_out;
      }
   }

   // 3. Trigger the load function for all PEs
   for(i=0; i<SA_SIZE; i++) {
      #pragma HLS UNROLL
      for(j=0; j<SA_SIZE; j++) {
            #pragma HLS UNROLL
            pe_load_weights(&sa->pe[i][j]);
      }
   }
}

void sa_compute(SA *sa) {
   uint16_t i,j;

   #pragma HLS PIPELINE II=1

   // Load lateral inputs from mtx C (results) and upper inputs from mtx B (inputs) in parallel
   for(i=0;i<SA_SIZE;i++){
      #pragma HLS UNROLL
      sa->pe[i][0].l_in = sa->out_mtx_c[i];
      sa->pe[0][i].t_in = sa->in_mtx_b[i];
   }   

   // Horizontal connections. Skip the first column
   for(j=1;j<SA_SIZE;j++) {    // Columns processed sequentially
      #pragma HLS UNROLL 
      for(i=0;i<SA_SIZE;i++) { // Rows of the same column processed in parallel
         #pragma HLS UNROLL
         sa->pe[i][j].l_in = sa->pe[i][j-1].r_out;
      }
   }
   
   // Vertical connections. Skip the first row
   for(i=1;i<SA_SIZE;i++) {    // Rows processed sequentially
      #pragma HLS UNROLL
      for(j=0;j<SA_SIZE;j++) { // Columns of the same row processed in parallel
         #pragma HLS UNROLL
         sa->pe[i][j].t_in = sa->pe[i-1][j].b_out;
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

// void sa_store(SA *sa, data_c_t *out, uint16_t b0_q){
//    #pragma HLS PIPELINE II=1
   
//    for(uint16_t i=0;i<SA_SIZE;i++){
//       #pragma HLS UNROLL
//       for(uint16_t j=0;j<SA_SIZE;j++){
//          #pragma HLS UNROLL
//          out[(i*b0_q)+j]= (data_c_t)sa->pe[i][j].stay;
//       }
//    }
// }


