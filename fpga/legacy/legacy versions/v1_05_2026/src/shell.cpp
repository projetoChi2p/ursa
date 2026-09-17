#include "shell.h"
#include  <limits.h>

/********** FILL INPUTS *****************************************************************************/
void fill_inputs_a(data_a_t *addr_a, data_a_t in_a[SA_SIZE], unsigned short t, unsigned short m){
    data_a_t value_a;
    
    //printf("[sa_shell] fill sa inputs a\n");
    /************************************************
    INSERT A DATA LAYER IN THE LATERAL INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1
    for(unsigned short i=0;i<SA_SIZE;i++){
        #pragma HLS UNROLL
        data_a_t *line_base_a = addr_a + i * m;
        /*...... INITIAL ZERO REGION .........*/
        if (t<i) {
            value_a=0;
        } 
        /*...... DATA REGION .................*/
        else if (t<i+m) {
            value_a=*(line_base_a+m-1-(t-i));
        } 
        /*...... FINAL ZERO REGION ...........*/
        else {
            value_a=0;
        }
        //printf("  li[%d] = %d\n",i,value_a);
        in_a[i]=value_a;
    }
}

void fill_inputs_b(data_b_t *addr_b, unsigned short str_b, data_b_t in_b[SA_SIZE] ,unsigned short t, unsigned short m){
    data_b_t value_b;

    //printf("[sa_shell] fill sa inputs b\n");
    /************************************************
    INSERT A DATA LAYER IN THE UPPER INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1
    for(unsigned short j=0;j<SA_SIZE;j++){
        #pragma HLS UNROLL
        data_b_t *line_base_b = addr_b + ( (str_b * (m-1) ) - (str_b*(t-j)) );
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

void load_inputs_sa(SA *sa, data_a_t in_a[SA_SIZE], data_b_t in_b[SA_SIZE]){
    #pragma HLS PIPELINE II=1

    for(unsigned short k=0;k<SA_SIZE;k++) {
        #pragma HLS UNROLL factor=SA_SIZE
        sa_input_a_b(sa,in_a[k],in_b[k],k);        
    }
}

/*****************************************************************************************************
TOP FUNCTION
******************************************************************************************************/
sa_result_t mxm_execute_ursa(
    int8_t  *addr_a0,  
    unsigned short a0_p, 
    uint8_t *addr_b0, 
    unsigned short b0_q,
    int32_t *addr_c0,  
    unsigned short m//,

    // uint8_t *addr_img, 
    // uint8_t ch_in, 
    // uint16_t wh_in,
    // uint8_t wh_kernel,
    // uint8_t stride
){

    //Casted apenas do ponteiro, não dos dados
    data_a_t *casted_a0 = (data_a_t*)addr_a0;
    data_b_t *casted_b0 = (data_b_t*)addr_b0;
    data_c_t *casted_c0 = (data_c_t*)addr_c0;
    

/********** INTERFACE WITH CPU_ARM ******************************************************************/
    #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
            max_write_burst_length=16  depth=200

    #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
            max_write_burst_length=16  depth=200

    #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
            max_write_burst_length=16  depth=200

    #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

    // //Novos campos para im2col
    // #pragma HLS INTERFACE mode=m_axi port=addr_img bundle=im2col offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
    //         max_write_burst_length=16  depth=200

    // #pragma HLS INTERFACE mode=s_axilite port=ch_in      bundle=ap register
    // #pragma HLS INTERFACE mode=s_axilite port=wh_in      bundle=ap register
    // #pragma HLS INTERFACE mode=s_axilite port=wh_kernel  bundle=ap register
    // #pragma HLS INTERFACE mode=s_axilite port=stride     bundle=ap register


    // printf("[sa_shell] Arguments received:\n  addr_a = %p\n  addr_b = %p\n  addr_c = %p\n  P = %d | Q = %d | M = %d\n",casted_a0,casted_b0,casted_c0,a0_p,b0_q,m);

/********** IM2COL **********************************************************************************/
    // uint8_t pad = 0;
    // pad = wh_kernel / 2;
    // unsigned short b0_q_2; 
    // uint8_t g_scratchpad_bi[SCRATCHPAD_I_SIZE]; 

    // MODE 1
    // populate_scratchpad_bi_with_im2col_2(
    //     addr_img,
    //     ch_in, wh_in, wh_in,
    //     wh_kernel, wh_kernel,
    //     pad, pad,
    //     stride, stride,
    //     g_scratchpad_bi,
    //     &b0_q_2
    // );

    // populate_bi_with_scrachpad_bi_2(
    //     g_scratchpad_bi,
    //     m,
    //     b0_q_2,
    //     casted_b0
    // );  

    //MODE 2
    // populate_bi_with_im2col_2(
    //     &addr_img[0], 
    //     ch_in,
    //     wh_in, wh_in,
    //     wh_kernel, wh_kernel,
    //     pad, pad,
    //     stride, stride,
    //     &b0_q_2,
    //     casted_b0
    // );

    // b0_q = b0_q_2; 

    
/********** NORMAL WORKING  *************************************************************************/
    data_a_t in_a[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_a complete dim=1

    data_b_t in_b[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1

    data_a_t *addr_sa_a;
    data_b_t *addr_sa_b;
    data_c_t *addr_sa_c;

    // printf("[sa_shell]  P = %d | Q = %d | M = %d\n",a0_p,b0_q,m);

/****************************************************************************************************/

    static SA sa;  
    #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

    #pragma HLS DATAFLOW

    sa_init(&sa);

    unsigned short call_a = a0_p/SA_SIZE;
    unsigned short call_b = b0_q/SA_SIZE;

    for(unsigned short i=0;i<call_a;i++){
        for(unsigned short j=0;j<call_b;j++){
            addr_sa_a = (data_a_t*)(casted_a0 + i * SA_SIZE * m);
            addr_sa_b = (data_b_t*)(casted_b0 + j * SA_SIZE);
            unsigned short t=0;
            
            for(unsigned short k=0;k<m+SA_SIZE-1+SA_SIZE-1;k++){    
                #pragma HLS PIPELINE II=1
                //Fase 1 - Busca valores da BRAM_A e BRAM_B em paralelo       
                fill_inputs_a(addr_sa_a,in_a,t,m);
                fill_inputs_b(addr_sa_b,b0_q,in_b,t,m);
                
                // Fase 2 - Carrega valores no SA, todos valores em paralelo
                load_inputs_sa(&sa,in_a,in_b);

                // Fase 3 - SA Compute
                sa_compute(&sa);
                t++;
            }
            
            // Fase 4 - Flush SA to BRAM_C            
            addr_sa_c = (data_c_t*)(casted_c0 + (i*SA_SIZE*b0_q) + (j*SA_SIZE));
            sa_store(&sa,addr_sa_c,b0_q);
            sa_reset(&sa);
        }
    }

    return SA_SUCCESS;
}