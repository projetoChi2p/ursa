#include "shell.h"


/********** FILL INPUTS *****************************************************************************/
void fill_left_inputs(lr_t l_in[SA_SIZE], uint16_t t){
    
    //printf("[sa_shell] fill sa inputs a\n");
    /************************************************
    INSERT A DATA LAYER IN THE LATERAL INTERFACE
    ************************************************/
    #pragma HLS PIPELINE II=1
    // Left inputs just feed 0s to start the accumulation
    for(uint16_t i=0;i<SA_SIZE;i++){
        #pragma HLS UNROLL
        l_in[i] = 0;
    }
}

void fill_top_inputs(tb_t *addr_t, uint16_t str_t, tb_t t_in[SA_SIZE] ,uint16_t t){
    #pragma HLS PIPELINE II=1
    for(uint16_t j=0; j<SA_SIZE; j++){
        #pragma HLS UNROLL
        // Stream valid columns of Matrix B, accounting for the skew (t >= j)
        if (t >= j && t < j + SA_SIZE) {
            uint16_t col = t - j; // Un-skew time to get the actual column index
            t_in[j] = *(addr_t + (j * str_t) + col); 
        } else {
            t_in[j] = 0;
        }
    }
}

void fetch_weight_row(fixed_t *addr_fixed, uint16_t m, fixed_t in_fixed[SA_SIZE], uint16_t t) {
    #pragma HLS PIPELINE II=1
    
    // Reverse the row order: 
    // t=0 fetches row 7, t=1 fetches row 6... t=7 fetches row 0
    uint16_t row_to_fetch = (SA_SIZE - 1) - t; 

    for(uint16_t j = 0; j < SA_SIZE; j++) {
        #pragma HLS UNROLL
        // Move down by 'row_to_fetch' rows (stride is m), and across by 'j' columns
        in_fixed[j] = *(addr_fixed + (row_to_fetch * m) + j);
    }
}

void load_inputs_sa(SA *sa, lr_t l_in[SA_SIZE], tb_t t_in[SA_SIZE]){
    #pragma HLS PIPELINE II=1

    for(uint16_t k=0;k<SA_SIZE;k++) {
        #pragma HLS UNROLL factor=SA_SIZE
        sa_input_l_t(sa,l_in[k],t_in[k],k);        
    }
}

void store_right_outputs(SA *sa, lr_t *addr_c, uint16_t b0_q, uint16_t t, uint16_t m) {
    #pragma HLS PIPELINE II=1
    
    // Check the rightmost PE of every row
    for(uint16_t i = 0; i < SA_SIZE; i++){
        #pragma HLS UNROLL
        
        // Calculate when valid data starts popping out for this specific row
        uint16_t output_start_time = i + SA_SIZE-1;
        
        // Only capture if we are inside the valid data window for this row
        if (t >= output_start_time && t < output_start_time + m) {
            
            // Un-skew the time to figure out which column of Matrix C this is
            uint16_t col_idx = t - output_start_time;
            
            // Write directly to memory.
            // Move down 'i' rows (stride b0_q) and across 'col_idx' columns
            *(addr_c + (i * b0_q) + col_idx) = sa->pe[i][SA_SIZE - 1].r_out;
        }
    }
}

/*****************************************************************************************************
TOP FUNCTION
******************************************************************************************************/

#ifdef IM2COL
    #ifdef LABFT
        sa_result_t mxm_execute_ursa(
            int8_t  *addr_a0,
            uint16_t a0_p,
            uint8_t *addr_img,
            uint16_t b0_q,
            int32_t *addr_c0,
            uint16_t m,
            uint8_t  ch_in,
            uint16_t wh_in,
            uint8_t  wh_kernel,
            uint8_t  pad,
            uint8_t  stride,
            uint16_t &labft_count
        )
    #else
        sa_result_t mxm_execute_ursa(
            int8_t  *addr_a0,
            uint16_t a0_p,
            uint8_t *addr_img,
            uint16_t b0_q,
            int32_t *addr_c0,
            uint16_t m,
            uint8_t  ch_in,
            uint16_t wh_in,
            uint8_t  wh_kernel,
            uint8_t  pad,
            uint8_t  stride
        )
    #endif
 
#else /* !IM2COL — assinatura original */
 
    #ifdef LABFT
        sa_result_t mxm_execute_ursa(
            int8_t  *addr_a0,
            uint16_t a0_p,
            uint8_t *addr_b0,
            uint16_t b0_q,
            int32_t *addr_c0,
            uint16_t m,
            uint16_t &labft_count
        )
    #else
        sa_result_t mxm_execute_ursa(
            int8_t  *addr_a0, // Matrix A base address (weights)
            uint16_t a0_p,    // Rows in A
            uint8_t *addr_b0, // Matrix B base address (inputs)
            uint16_t b0_q,    // Columns in B
            int32_t *addr_c0, // Matrix C base address (results)
            uint16_t m        // Shared dimension (columns in A | rows in B)
        )
    #endif
 
#endif /* IM2COL */

{
    // //Casted apenas do ponteiro, não dos dados
    // data_a_t *casted_a0 = (data_a_t*)addr_a0;
    // data_b_t *casted_b0 = (data_b_t*)addr_b0;
    // data_c_t *casted_c0 = (data_c_t*)addr_c0;
    
    data_a_t *casted_a0 = (data_a_t*)addr_a0;
    data_c_t *casted_c0 = (data_c_t*)addr_c0;
 
#ifdef IM2COL
    /* ── Im2col interno ──────────────────────────────────────
       Transforma a imagem raw CHW em matriz coluna B.
       b0_q (n_c_cols) foi calculado pelo ARM e passado aqui
       apenas para o tiling — o im2col usa os parâmetros
       de convolução para recalcular internamente.           */
    uint16_t b0_q_check;
    populate_bi_with_im2col_2(
        addr_img,
        ch_in, wh_in, wh_in,
        wh_kernel, wh_kernel,
        pad, pad,
        stride, stride,
        &b0_q_check,
        g_bi_im2col
    );
    data_b_t *casted_b0 = g_bi_im2col;
#else
    data_b_t *casted_b0 = (data_b_t*)addr_b0;
#endif


/********** INTERFACE WITH CPU_ARM ******************************************************************/
    // #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
    //         max_write_burst_length=16  depth=200

    // #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
    //         max_write_burst_length=16  depth=200

    // #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
    //         num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
    //         max_write_burst_length=16  depth=200

    // #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
    // #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
    // #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
    // #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

/********** INTERFACE WITH CPU_ARM ******************************************************************/
#pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
        num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
        max_write_burst_length=16  depth=200

#pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
        num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
        max_write_burst_length=16  depth=200

#pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
#pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
#pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
#pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

#ifdef IM2COL
    #pragma HLS INTERFACE mode=m_axi port=addr_img bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=200

    // Parâmetros im2col no mesmo bundle=ap — não criam novas interfaces
    #pragma HLS INTERFACE mode=s_axilite port=ch_in     bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=wh_in     bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=wh_kernel bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=pad       bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=stride    bundle=ap register
#else
    #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=200
#endif

#ifdef LABFT
    // labft_irq: fio ap_none, pulsa HIGH por 1 ciclo a cada tile com erro
    // Conectar ao GIC configurado para detecção de borda de subida
    // #pragma HLS INTERFACE mode=ap_none port=labft_irq

    // labft_count: registrador AXI-Lite, o ARM lê ao final da execução do MxM
    #pragma HLS INTERFACE mode=s_axilite port=labft_count bundle=labft_ctrl register

    // labft_irq   = false;
    labft_count = 0;
#endif   

/********** NORMAL WORKING  *************************************************************************/
    lr_t l_in[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=l_in complete dim=1

    tb_t t_in[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=t_in complete dim=1

    fixed_t fixed_in [SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=fixed_in complete dim=1

    data_a_t *addr_sa_a;
    data_b_t *addr_sa_b;
    data_c_t *addr_sa_c;

    printf("[sa_shell] addr_a0: %d  addr_b0: %d addr_c0: %d\n", addr_a0, addr_b0, addr_c0); //

/****************************************************************************************************/

    static SA sa;  
    #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

    {
        #pragma HLS DATAFLOW
        sa_init(&sa);
        uint16_t call_c = a0_p/SA_SIZE;  // C has the same number of lines as A
        uint16_t call_b = b0_q/SA_SIZE;

        for(uint16_t i=0;i<call_c;i++){
            for(uint16_t j=0;j<call_b;j++){
                addr_sa_a = (data_a_t*)(casted_a0 + i * SA_SIZE * m);
                addr_sa_b = (data_b_t*)(casted_b0 + j * SA_SIZE);
                addr_sa_c = (data_c_t*)(casted_c0 + (i * SA_SIZE * b0_q) + (j * SA_SIZE));

#ifdef LABFT
                /* ---- L do tile (i,j): calculado ANTES da computação SA ---- */
                // a_tile : SA_SIZE linhas × m colunas, contíguo
                // b_tile : m linhas, stride = b0_q, tile começa em addr_sa_b
                labft_acc_t L_tile = labft_compute_L_tile(
                    addr_sa_a, addr_sa_b,
                    SA_SIZE, m, b0_q
                );
                // labft_irq = false;  // ← limpa no início de cada tile
#endif
                /* ---- Carregamento dos pesos para o SA ---- */
                for(uint16_t t = 0; t < SA_SIZE; t++){
                    #pragma HLS PIPELINE II=1
                    
                    // Fetch a row of weights from memory
                    fetch_weight_row(addr_sa_a, m, fixed_in, t); 
                    
                    // Push them into the SA's input buffer
                    for(uint16_t k=0; k<SA_SIZE; k++) {
                        #pragma HLS UNROLL
                        sa.in_mtx_t[k] = fixed_in[k]; // Feeding the top ports
                    }

                    // Shift them down into the PEs
                    sa_load_weights(&sa);
                }

                /* ---- Computação SA ---- */
                // The loop runs long enough to push all columns + flush the pipeline
                uint16_t total_cycles = SA_SIZE + SA_SIZE + (SA_SIZE - 1);

                for(uint16_t t = 0; t < total_cycles; t++){    
                    #pragma HLS PIPELINE II=1
                    //Fase 1 - Busca valores da BRAM_B e inicia a injeção dos resultados no SA      
                    fill_left_inputs(l_in,t);
                    fill_top_inputs(addr_sa_b,b0_q,t_in,t);
                    
                    // Fase 2 - Carrega valores no SA, todos valores em paralelo
                    load_inputs_sa(&sa,l_in,t_in);

                    // Fase 3 - SA Compute
                    sa_compute(&sa);

                    // Fase 4 - Pega os resultados do lado direito e escreve na BRAM_C
                    store_right_outputs(&sa, addr_sa_c, b0_q, t, m);
                }
                
                /* ---- Flush do tile para C ---- */
                // Fase 4 - Flush SA to BRAM_C            
                // addr_sa_c = (data_c_t*)(casted_c0 + (i*SA_SIZE*b0_q) + (j*SA_SIZE));
                // sa_store(&sa,addr_sa_c,b0_q);               
                // sa_reset(&sa);
#ifdef LABFT
  #ifdef FAULT_INJECT
                // /* Injeta erro somente no tile (0,0) para teste */
                // if (i == 0 && j == 0) {
                //     casted_c0[0] += 1;
                /* Injeta erro em tiles alternados (0, 2, 4...) */
                if ((i * call_b + j) % 2 == 0) {
                    addr_sa_c[0] += 1;
  #ifdef DEBUG
                    printf("[FAULT] Erro injetado em C[0] (tile 0,0)\n\r");
  #endif
                }
  #endif

  #ifdef DEBUG
                printf("[DEBUG SHELL] tile(%d,%d) addr_c0[0]=%d [1]=%d [2]=%d [3]=%d\n",
                    i, j, addr_c0[0], addr_c0[1], addr_c0[2], addr_c0[3]);
  #endif

                /* ---- Lc do tile (i,j): calculado APÓS o store ---- */
                // c_tile : SA_SIZE linhas, stride = b0_q
                labft_acc_t Lc_tile = labft_compute_Lc_tile(
                    addr_sa_c, SA_SIZE, b0_q
                );

                if (labft_check(L_tile, Lc_tile) != LABFT_OK) 
                {
                    // labft_irq = true;  // ← fica HIGH até o início do próximo tile
                    labft_count++;
    #ifdef DEBUG
                    printf("[LABFT] Erro no tile (%d, %d) — total: %d\n",
                           i, j, labft_count);
    #endif
                }
#endif
            }
        }
    }

#ifdef LABFT
    if (labft_count > 0)
        return SA_LABFT_ERROR;
#endif

    return SA_SUCCESS;
}