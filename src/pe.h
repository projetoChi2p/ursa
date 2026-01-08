#ifndef __PE_H__
#define __PE_H__

#include "math_sa.h"

//typedef int data_a_t;
//typedef int data_b_t;
//typedef int data_c_t;

typedef struct {
   data_a_t li; // left inputs Matrix: A
   data_b_t tw; // top inputs Matrix: B
   data_a_t ri; // right output
   data_b_t bw; // bottom weight output
   //data_c_t ba; // accumulator
   macc_t  ba;
} PE;

void pe_init(PE *pe);
void pe_reset(PE *pe);
void pe_compute(PE *pe);

#endif