#ifndef __SA_H__
#define __SA_H__

#include "pe.h"

// #define SA_SIZE 4 // SA_SIZE is the size of the array, always squared height and width.

#ifndef SA_SIZE
   #define SA_SIZE 4 // valor padrão, só para segurança
#endif

typedef struct {
   PE pe[SA_SIZE][SA_SIZE];
   data_a_t in_mtx_a_li[SA_SIZE];
   data_b_t in_mtx_b_tw[SA_SIZE];  
}SA;

void sa_init(SA *sa);
void sa_input_a_b(SA *sa, data_a_t in_a, data_b_t in_b, unsigned short k);
void sa_compute(SA *sa);
void sa_store(SA *sa, data_c_t *out,unsigned short b0_q);
void sa_reset(SA *sa);

#endif