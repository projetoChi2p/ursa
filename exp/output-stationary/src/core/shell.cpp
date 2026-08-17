#include "shell.h"

//===============================================
// filling in inputs
//===============================================
void fill_inputs_a(data_a_t *addr_a, data_a_t in_a[SA_SIZE], uint16_t t, uint16_t m){
    data_a_t value_a;
    
    //printf("[sa_shell] fill sa inputs a\n");
    /************************************************
    INSERT A DATA LAYER IN THE LATERAL INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1
    for(uint16_t i=0;i<SA_SIZE;i++){
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

void fill_inputs_b(data_b_t *addr_b, uint16_t str_b, data_b_t in_b[SA_SIZE] ,uint16_t t, uint16_t m){
    data_b_t value_b;

    //printf("[sa_shell] fill sa inputs b\n");
    /************************************************
    INSERT A DATA LAYER IN THE UPPER INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1
    for(uint16_t j=0;j<SA_SIZE;j++){
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

//===============================================
// loading inputs in SA
//===============================================
void load_inputs_sa(SA *sa, data_a_t in_a[SA_SIZE], data_b_t in_b[SA_SIZE]){
    #pragma HLS PIPELINE II=1

    for(uint16_t k=0;k<SA_SIZE;k++) {
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
    data_a_t *casted_a0 = (data_a_t*)addr_a0;
    data_c_t *casted_c0 = (data_c_t*)addr_c0;
    data_b_t *casted_b0 = (data_b_t*)addr_b0;

    // processor arm interface
    #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=200
    
    #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=200
    
    #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=200
    
    #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

    // normal working
    data_a_t in_a[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_a complete dim=1

    data_b_t in_b[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1

    data_a_t *addr_sa_a;
    data_b_t *addr_sa_b;
    data_c_t *addr_sa_c;

    // printf("[sa_shell]  P = %d | Q = %d | M = %d\n",a0_p,b0_q,m);

    static SA sa;  
    #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

    {
        #pragma HLS DATAFLOW
        sa_init(&sa);
        uint16_t call_a = a0_p/SA_SIZE;
        uint16_t call_b = b0_q/SA_SIZE;

        for(uint16_t i=0;i<call_a;i++){
            for(uint16_t j=0;j<call_b;j++){
                addr_sa_a = (data_a_t*)(casted_a0 + i * SA_SIZE * m);
                addr_sa_b = (data_b_t*)(casted_b0 + j * SA_SIZE);
                
                /* ---- Computação SA ---- */
                uint16_t t=0;
                for(uint16_t k=0;k<m+SA_SIZE-1+SA_SIZE-1;k++){    
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
                
                /* ---- Flush do tile para C ---- */
                // Fase 4 - Flush SA to BRAM_C            
                addr_sa_c = (data_c_t*)(casted_c0 + (i*SA_SIZE*b0_q) + (j*SA_SIZE));
                sa_store(&sa,addr_sa_c,b0_q);               
                sa_reset(&sa);
            }
        }
    }

    return SA_SUCCESS;
}