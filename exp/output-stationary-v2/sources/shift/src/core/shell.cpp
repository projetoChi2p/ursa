#include "shell.h"

//===============================================
// filling in inputs
//===============================================
void fill_inputs_a(mem_a_t *addr_a, data_a_t in_a[SA_SIZE], uint16_t t, uint16_t m){
    data_a_t value_a;
    
    //printf("[sa_shell] fill sa inputs a\n");
    /************************************************
    INSERT A DATA LAYER IN THE LATERAL INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1
    FILL_A: for(uint16_t i=0;i<SA_SIZE;i++){
        #pragma HLS UNROLL
        mem_a_t *line_base_a = addr_a + i * m;
        /*...... INITIAL ZERO REGION .........*/
        if (t<i) {
            value_a=0;
        } 
        /*...... DATA REGION .................*/
        else if (t<i+m) {
#ifdef PE_POT
            value_a=(data_a_t)(*(line_base_a+m-1-(t-i)) & 0xF);  // low nibble = PoT code
#else
            value_a=*(line_base_a+m-1-(t-i));
#endif
        } 
        /*...... FINAL ZERO REGION ...........*/
        else {
            value_a=0;
        }
        //printf("  li[%d] = %d\n",i,value_a);
        in_a[i]=value_a;
    }
}

void fill_inputs_b(data_b_t *addr_b, uint16_t str_b, data_b_t in_b[SA_SIZE] ,uint16_t t, uint16_t m){
    data_b_t value_b;

    //printf("[sa_shell] fill sa inputs b\n");
    /************************************************
    INSERT A DATA LAYER IN THE UPPER INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1

    //UM: 14/09/26
    // The original expression below was evaluated once per unrolled j, which
    // produced SA_SIZE independent multipliers. With SA_SIZE=8 Vitis HLS bound
    // each of them to its own DSP48E1 (mul_17s_16ns_32_1_1_U1..U8), so the IP
    // needed 75 DSPs instead of 67. That is what prevented the TMR builds from
    // fitting in the xc7z020, since 3 x 75 = 225 > 220.
    //
    // The expression factors exactly:
    //   str_b*(m-1) - str_b*(t-j)  ==  str_b*(m-1-t) + str_b*j
    //
    // The first term does not depend on j, so it is hoisted out of the unrolled
    // loop and costs a single multiplier. In the second term j is a compile-time
    // constant after the unroll, so it becomes a constant multiplication that
    // Vivado implements with shifts and adds, using no DSP at all.
    // The arithmetic is algebraically identical, including the cases where the
    // offset is negative, because the t<j and t<j+m guards still prevent any
    // dereference outside the valid data region.
    const int32_t row_off = (int32_t)str_b * ((int32_t)m - 1 - (int32_t)t);

    FILL_B: for(uint16_t j=0;j<SA_SIZE;j++){
        #pragma HLS UNROLL

        //UM: 14/09/26
        // data_b_t *line_base_b = addr_b + ( (str_b * (m-1) ) - (str_b*(t-j)) );
        const int32_t col_off = (int32_t)str_b * (int32_t)j;
        data_b_t *line_base_b = addr_b + row_off + col_off;

        /*...... INITIAL ZERO REGION .........*/
        if (t<j) {
            value_b=0;
        } 
        /*...... DATA REGION  ................*/
        else if (t<j+m) {
            value_b=*(line_base_b + j);
        } 
        /*...... FINAL ZERO REGION ...........*/
        else {
            value_b=0;
        }
        //printf("  tw[%d] = %d\n",j,value_b);
        in_b[j]=value_b;
    }  
}

// void fill_inputs_b(data_b_t *addr_b, uint16_t str_b, data_b_t in_b[SA_SIZE] ,uint16_t t, uint16_t m){
//     data_b_t value_b;

//     //printf("[sa_shell] fill sa inputs b\n");
//     /************************************************
//     INSERT A DATA LAYER IN THE UPPER INTERFACE
//     ************************************************/
//     #pragma HLS PIPELINE II=1
//     FILL_B: for(uint16_t j=0;j<SA_SIZE;j++){
//         #pragma HLS UNROLL
//         data_b_t *line_base_b = addr_b + ( (str_b * (m-1) ) - (str_b*(t-j)) );
//         /*...... INITIAL ZERO REGION .........*/
//         if (t<j) {
//             value_b=0;
//         } 
//         /*...... DATA REGION  ................*/
//         else if (t<j+m) {
//             value_b=*(line_base_b + j);
//         } 
//         /*...... FINAL ZERO REGION ...........*/
//         else {
//             value_b=0;
//         }
//         //printf("  tw[%d] = %d\n",j,value_b);
//         in_b[j]=value_b;
//     }  
// }

//===============================================
// loading inputs in SA
//===============================================
void load_inputs_sa(SA *sa, data_a_t in_a[SA_SIZE], data_b_t in_b[SA_SIZE]){
    #pragma HLS PIPELINE II=1

    LOAD_SA: for(uint16_t k=0;k<SA_SIZE;k++) {
        #pragma HLS UNROLL factor=SA_SIZE
        sa_input_a_b(sa,in_a[k],in_b[k],k);        
    }
}

//===============================================
// output-stationary top-function
//===============================================
sa_result_t mxm_execute_ursa(
    int8_t  *addr_a0,
    uint16_t a0_p,
    uint8_t *addr_b0,
    uint16_t b0_q,
    int32_t *addr_c0,
    uint16_t m
)
{
    // Cast only the pointer, not the data.
    mem_a_t  *casted_a0 = (mem_a_t*)addr_a0;
    data_c_t *casted_c0 = (data_c_t*)addr_c0;
    data_b_t *casted_b0 = (data_b_t*)addr_b0;

    // processor arm interface
    //8x8
    // #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
    //         max_write_burst_length=16  depth=4096
    
    // #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
    //         max_write_burst_length=16  depth=4096
    
    // #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
    //         max_write_burst_length=16  depth=4096

    //16x16
    #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
            num_read_outstanding=16 max_read_burst_length=16 \
            num_write_outstanding=1 max_write_burst_length=2 depth=4096

    #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
            num_read_outstanding=16 max_read_burst_length=16 \
            num_write_outstanding=1 max_write_burst_length=2 depth=4096

    #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
            num_read_outstanding=1 max_read_burst_length=2 \
            num_write_outstanding=32 max_write_burst_length=16 depth=4096
    
    //32x32

    
    #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

    // normal working
    data_a_t in_a[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_a complete dim=1

    data_b_t in_b[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1

    mem_a_t  *addr_sa_a;
    data_b_t *addr_sa_b;
    data_c_t *addr_sa_c;

    // printf("[sa_shell]  P = %d | Q = %d | M = %d\n",a0_p,b0_q,m);

    static SA sa;  
    #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

    {
        // this pragma does not working
        //#pragma HLS DATAFLOW
        sa_init(&sa);
        uint16_t call_a = a0_p/SA_SIZE;
        uint16_t call_b = b0_q/SA_SIZE;

        //UM: 09/09/26
        const uint32_t stride_a = (uint32_t)SA_SIZE * m;
        const uint32_t stride_c = (uint32_t)SA_SIZE * b0_q;

        uint32_t off_a = 0;   /* start of the current row of tiles, in A */
        uint32_t off_c = 0;   /* start of the current row of tiles, in C */

        TILE_ROW: for(uint16_t i=0;i<call_a;i++){
            
            //UM: 09/09/26
            uint32_t off_b  = 0;        /* column offset within B */
            uint32_t off_cj = off_c;    /* tile offset within C, carries both terms */

            TILE_COL: for(uint16_t j=0;j<call_b;j++){
                //UM: 09/09/26
                // addr_sa_a = (data_a_t*)(casted_a0 + i * SA_SIZE * m);
                // addr_sa_b = (data_b_t*)(casted_b0 + j * SA_SIZE);
                addr_sa_a = (mem_a_t*)(casted_a0 + off_a);
                addr_sa_b = (data_b_t*)(casted_b0 + off_b);

                /* ---- Computação SA ---- */
                uint16_t t=0;
                STREAM_K: for(uint16_t k=0;k<m+SA_SIZE-1+SA_SIZE-1;k++){    
                    #pragma HLS PIPELINE II=1
                    // step 1 - Fetches values ​​from BRAM_A and BRAM_B in parallel.      
                    fill_inputs_a(addr_sa_a,in_a,t,m);
                    fill_inputs_b(addr_sa_b,b0_q,in_b,t,m);
                    
                    // step 2 - Loads values ​​into the SA; all values ​​in parallel.
                    load_inputs_sa(&sa,in_a,in_b);

                    // Fase 3 - SA Compute
                    sa_compute(&sa);
                    t++;
                }
            
            // UM:09/09/26    
            //     /* ---- Flush do tile para C ---- */
            //     // Fase 4 - Flush SA to BRAM_C            
            //     addr_sa_c = (data_c_t*)(casted_c0 + (i*SA_SIZE*b0_q) + (j*SA_SIZE));
            //     sa_store(&sa,addr_sa_c,b0_q);               
            //     sa_reset(&sa);
            // }
                /* ---- Flush the tile to C ---- */
                // step 4 - Flush SA to BRAM_C
                addr_sa_c = (data_c_t*)(casted_c0 + off_cj);
                sa_store(&sa,addr_sa_c,b0_q);
                sa_reset(&sa);

                off_b  += SA_SIZE;
                off_cj += SA_SIZE;
            }

            off_a += stride_a;
            off_c += stride_c;
        }
    }

    return SA_SUCCESS;
}

// #include "shell.h"

// //===============================================
// // filling in inputs
// //===============================================
// void fill_inputs_a(data_a_t *addr_a, data_a_t in_a[SA_SIZE], uint16_t t, uint16_t m){
//     data_a_t value_a;
    
//     //printf("[sa_shell] fill sa inputs a\n");
//     /************************************************
//     INSERT A DATA LAYER IN THE LATERAL INTERFACE
//     ************************************************/
//     #pragma HLS PIPELINE II=1
//     FILL_A: for(uint16_t i=0;i<SA_SIZE;i++){
//         #pragma HLS UNROLL
//         data_a_t *line_base_a = addr_a + i * m;
//         /*...... INITIAL ZERO REGION .........*/
//         if (t<i) {
//             value_a=0;
//         } 
//         /*...... DATA REGION .................*/
//         else if (t<i+m) {
//             value_a=*(line_base_a+m-1-(t-i));
//         } 
//         /*...... FINAL ZERO REGION ...........*/
//         else {
//             value_a=0;
//         }
//         //printf("  li[%d] = %d\n",i,value_a);
//         in_a[i]=value_a;
//     }
// }

// void fill_inputs_b(data_b_t *addr_b, uint16_t str_b, data_b_t in_b[SA_SIZE] ,uint16_t t, uint16_t m){
//     data_b_t value_b;

//     //printf("[sa_shell] fill sa inputs b\n");
//     /************************************************
//     INSERT A DATA LAYER IN THE UPPER INTERFACE
//     ************************************************/
//     #pragma HLS PIPELINE II=1
//     FILL_B: for(uint16_t j=0;j<SA_SIZE;j++){
//         #pragma HLS UNROLL
//         /* The address is computed inside the guard. Hoisting it above the
//         branch underflows when t < j, because t and j are unsigned, and the
//         resulting address leaves the buffer even though it is never read. */
//         // data_b_t *line_base_b = addr_b + ( (str_b * (m-1) ) - (str_b*(t-j)) );
//         /*...... INITIAL ZERO REGION .........*/
//         if (t<j) {
//             value_b=0;
//         } 
//         /*...... DATA REGION  ................*/
//         else if (t<j+m) {
//             data_b_t *line_base_b = addr_b + ((str_b*(m-1)) - (str_b*(t-j)));
//             value_b = *(line_base_b + j);;
//         } 
//         /*...... FINAL ZERO REGION ...........*/
//         else {
//             value_b=0;
//         }
//         //printf("  tw[%d] = %d\n",j,value_b);
//         in_b[j]=value_b;
//     }  
// }

// //===============================================
// // loading inputs in SA
// //===============================================
// void load_inputs_sa(SA *sa, data_a_t in_a[SA_SIZE], data_b_t in_b[SA_SIZE]){
//     #pragma HLS PIPELINE II=1
//     LOAD_SA: for(uint16_t k=0;k<SA_SIZE;k++) {
//         #pragma HLS UNROLL factor=SA_SIZE
//         sa_input_a_b(sa,in_a[k],in_b[k],k);        
//     }
// }

// //===============================================
// // output-stationary top-function
// //===============================================
// sa_result_t mxm_execute_ursa(
//     int8_t  *addr_a0,
//     uint16_t a0_p,
//     uint8_t *addr_b0,
//     uint16_t b0_q,
//     int32_t *addr_c0,
//     uint16_t m
// )
// {
//     // Cast only the pointer, not the data.
//     data_a_t *casted_a0 = (data_a_t*)addr_a0;
//     data_c_t *casted_c0 = (data_c_t*)addr_c0;
//     data_b_t *casted_b0 = (data_b_t*)addr_b0;

//     // processor arm interface
//     #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
//             num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
//             max_write_burst_length=16  depth=4096
    
//     #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
//             num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
//             max_write_burst_length=16  depth=4096
    
//     #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
//             num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
//             max_write_burst_length=16  depth=4096
    
//     #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
//     #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
//     #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
//     #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

//     // normal working
//     data_a_t in_a[SA_SIZE];
//     #pragma HLS ARRAY_PARTITION variable=in_a complete dim=1

//     data_b_t in_b[SA_SIZE];
//     #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1

//     data_a_t *addr_sa_a;
//     data_b_t *addr_sa_b;
//     data_c_t *addr_sa_c;

//     // printf("[sa_shell]  P = %d | Q = %d | M = %d\n",a0_p,b0_q,m);

//     static SA sa;
//     #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

//     {
//         /* Plain scope. A previous version carried a DATAFLOW pragma here,
//            but Vitis HLS only accepts DATAFLOW on a function body or a for
//            loop body, so the pragma was reported as ignored and had no
//            effect on the generated RTL. It was removed to keep the source
//            consistent with what is actually synthesized. */
//         sa_init(&sa);
//         uint16_t call_a = a0_p/SA_SIZE;
//         uint16_t call_b = b0_q/SA_SIZE;

//         /* Row and tile strides.
//          *
//          * m and b0_q arrive at run time, so writing the address inline as
//          * i*SA_SIZE*m puts a real 31-bit multiplier between the loop decision
//          * and the call to the pipelined k loop. Synthesis reports that
//          * multiply alone as 5.6 ns of a 15.2 ns critical path, against a 10 ns
//          * target.
//          *
//          * Since i and j advance by one, the offsets can be stepped instead.
//          * Every multiply in the loop body becomes an add, and the two that
//          * remain happen once, before the loops. The offsets are 32 bit because
//          * SA_SIZE*b0_q already exceeds 16 bits for the larger benchmark
//          * shapes.
//          */
//         const uint32_t stride_a = (uint32_t)SA_SIZE * m;
//         const uint32_t stride_c = (uint32_t)SA_SIZE * b0_q;

//         uint32_t off_a = 0;   /* start of the current row of tiles, in A */
//         uint32_t off_c = 0;   /* start of the current row of tiles, in C */

//         TILE_ROW: for(uint16_t i=0;i<call_a;i++){

//             uint32_t off_b  = 0;        /* column offset within B */
//             uint32_t off_cj = off_c;    /* tile offset within C, carries both terms */

//             TILE_COL: for(uint16_t j=0;j<call_b;j++){
//                 addr_sa_a = (data_a_t*)(casted_a0 + off_a);
//                 addr_sa_b = (data_b_t*)(casted_b0 + off_b);

//                 /* ---- SA computation ---- */
//                 uint16_t t=0;
//                 STREAM_K: for(uint16_t k=0;k<m+SA_SIZE-1+SA_SIZE-1;k++){
//                     #pragma HLS PIPELINE II=1

//                     // step 1 - Fetches values from BRAM_A and BRAM_B in parallel.
//                     fill_inputs_a(addr_sa_a,in_a,t,m);
//                     fill_inputs_b(addr_sa_b,b0_q,in_b,t,m);

//                     // step 2 - Loads values into the SA; all values in parallel.
//                     load_inputs_sa(&sa,in_a,in_b);

//                     // step 3 - SA compute
//                     sa_compute(&sa);
//                     t++;
//                 }

//                 /* ---- Flush the tile to C ---- */
//                 // step 4 - Flush SA to BRAM_C
//                 addr_sa_c = (data_c_t*)(casted_c0 + off_cj);
//                 sa_store(&sa,addr_sa_c,b0_q);
//                 sa_reset(&sa);

//                 off_b  += SA_SIZE;
//                 off_cj += SA_SIZE;
//             }

//             off_a += stride_a;
//             off_c += stride_c;
//         }
//     }

//     return SA_SUCCESS;
// }