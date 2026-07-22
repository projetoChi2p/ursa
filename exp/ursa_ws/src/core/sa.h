#ifndef __SA_H__
#define __SA_H__

#include "pe.h"

typedef struct {
   PE pe[SA_SIZE][SA_SIZE];
   lr_t in_mtx_l[SA_SIZE];
   tb_t in_mtx_t[SA_SIZE];
}SA;

void sa_init(SA *sa);
void sa_input_l_t(SA *sa, lr_t l_in, tb_t t_in, uint16_t k);
void sa_load_weights(SA *sa);
void sa_compute(SA *sa);
// void sa_store(SA *sa, data_c_t *out,unsigned short b0_q);
void sa_reset(SA *sa);

#endif