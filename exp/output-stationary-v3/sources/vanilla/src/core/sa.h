#ifndef __SA_H__
#define __SA_H__

#include "pe.h"

typedef struct {
   PE pe[SA_SIZE][SA_SIZE];
   data_a_t in_mtx_a_li[SA_SIZE];
   data_b_t in_mtx_b_tw[SA_SIZE];
} SA;

void sa_init(SA *sa);
void sa_compute(SA *sa);
void sa_reset(SA *sa);
acc_row_t sa_row(SA *sa, int i);

#endif
