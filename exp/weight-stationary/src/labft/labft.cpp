#include "labft.h"

// Calcula L = SVA · SVB
// SVA[z] = soma da coluna z de A  (tamanho p)
// SVB[z] = soma da linha  z de B  (tamanho q)
// L      = dot product de SVA e SVB
labft_acc_t labft_compute_L(data_a_t *a, data_b_t *b, int p, int m, int q)
{
    labft_acc_t L = 0;

    for (int z = 0; z < m; z++) {
        labft_acc_t sva = 0;
        labft_acc_t svb = 0;

        // SVA[z] = soma da coluna z de A
        for (int i = 0; i < p; i++) {
            sva += (labft_acc_t)a[i * m + z];
        }

        // SVB[z] = soma da linha z de B
        for (int j = 0; j < q; j++) {
            svb += (labft_acc_t)b[z * q + j];
        }

#ifdef DEBUG
        printf("[LABFT] SVA[%d]=%lld  SVB[%d]=%lld  produto=%lld\n",
            z, (long long)sva, z, (long long)svb, (long long)(sva*svb));
#endif

        L += sva * svb;
    }

#ifdef DEBUG
    printf("[LABFT] L  (from inputs) = %lld\n", (long long)L);
#endif

    return L;
}

// Calcula L' = soma de todos os elementos de C
labft_acc_t labft_compute_Lc(data_c_t *c, int p, int q)
{
    labft_acc_t Lc = 0;

    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            Lc += (labft_acc_t)c[i * q + j];
        }
    }

#ifdef DEBUG
    printf("[LABFT] Lc (from output) = %lld\n", (long long)Lc);
#endif

    return Lc;
}


// Compara L com L'
labft_result_t labft_check(labft_acc_t L, labft_acc_t Lc)
{
#ifdef DEBUG
        printf("[LABFT] L  = %lld\n", (long long)L);
        printf("[LABFT] Lc = %lld\n", (long long)Lc);
#endif

    if (L == Lc) 
    {
#ifdef DEBUG
        printf("[LABFT] OK  — nenhum erro detectado\n");
#endif
        return LABFT_OK;
    } 
    else 
    {
#ifdef DEBUG
        printf("[LABFT] ERRO — L=%lld != Lc=%lld\n", (long long)L, (long long)Lc);
#endif
        return LABFT_ERROR;
    }
}

/* =========================================================
   FUNÇÕES POR TILE
   =========================================================
   a_tile  : ponteiro para a primeira linha do tile em A
             layout: sa_size linhas × m colunas (contíguo)

   b_tile  : ponteiro para a primeira coluna do tile em B
             layout: m linhas, cada linha tem b_stride colunas
             → elemento [z][j] está em b_tile[z * b_stride + j]

   c_tile  : ponteiro para o canto superior-esquerdo do tile em C
             layout: sa_size linhas, cada linha tem c_stride colunas
             → elemento [i][j] está em c_tile[i * c_stride + j]
   ========================================================= */

labft_acc_t labft_compute_L_tile(data_a_t *a_tile, data_b_t *b_tile,
                                  int sa_size, int m, int b_stride)
{
    labft_acc_t L = 0;

    for (int z = 0; z < m; z++) {
        labft_acc_t sva = 0;
        labft_acc_t svb = 0;

        // SVA[z] = soma da coluna z do tile de A
        for (int i = 0; i < sa_size; i++)
            sva += (labft_acc_t)a_tile[i * m + z];

        // SVB[z] = soma da linha z do tile de B
        // (cada linha de B tem b_stride elementos no total; 
        //  o tile ocupa as primeiras sa_size colunas do tile)
        for (int j = 0; j < sa_size; j++)
            svb += (labft_acc_t)b_tile[z * b_stride + j];

#ifdef DEBUG
        printf("[LABFT TILE] SVA[%d]=%lld  SVB[%d]=%lld  produto=%lld\n",
               z, (long long)sva, z, (long long)svb, (long long)(sva * svb));
#endif

        L += sva * svb;
    }

#ifdef DEBUG
    printf("[LABFT TILE] L (inputs) = %lld\n", (long long)L);
#endif

    return L;
}

labft_acc_t labft_compute_Lc_tile(data_c_t *c_tile, int sa_size, int c_stride)
{
    labft_acc_t Lc = 0;

    for (int i = 0; i < sa_size; i++)
        for (int j = 0; j < sa_size; j++)
            Lc += (labft_acc_t)c_tile[i * c_stride + j];

#ifdef DEBUG
    printf("[LABFT TILE] Lc (output) = %lld\n", (long long)Lc);
#endif

    return Lc;
}