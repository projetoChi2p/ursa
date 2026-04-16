#ifndef LABFT_H_
#define LABFT_H_

#include "shell.h"
#include <cstdint>


typedef int64_t labft_acc_t;

typedef enum {
    LABFT_OK    = 0,
    LABFT_ERROR = 1
} labft_result_t;

// --- Funções originais (matriz inteira) ---
labft_acc_t    labft_compute_L  (data_a_t *a, data_b_t *b, int p, int m, int q);
labft_acc_t    labft_compute_Lc (data_c_t *c, int p, int q);
labft_result_t labft_check      (labft_acc_t L, labft_acc_t Lc);

// --- Funções por tile ---
// a_tile : ponteiro para o início do tile de A (sa_size linhas × m colunas, contíguo)
// b_tile : ponteiro para a primeira coluna do tile de B (stride entre linhas = b_stride)
// c_tile : ponteiro para o canto superior-esquerdo do tile de C (stride entre linhas = c_stride)
labft_acc_t    labft_compute_L_tile  (data_a_t *a_tile, data_b_t *b_tile,
                                      int sa_size, int m, int b_stride);
labft_acc_t    labft_compute_Lc_tile (data_c_t *c_tile,
                                      int sa_size, int c_stride);



#endif