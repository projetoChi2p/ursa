#ifndef __PE_H__
#define __PE_H__

#include "../settings.h"

typedef struct {
   lr_t l_in; //left input
   lr_t r_out; //right output
   tb_t t_in; //top input
   tb_t b_out; //bottom output
   fixed_t stay; //stationary variable
}PE; 

void pe_init(PE *pe);
void pe_reset(PE *pe);
void pe_compute(PE *pe);
void pe_load_weights(PE *pe);

#endif