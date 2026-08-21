#ifndef MATRICES_H_
#define MATRICES_H_

#include <stdint.h>
#include <stdio.h>

// #define DEBUG

// Testbench
#define P 8
#define Q 8
#define M 8

void init_matrix_a(uint8_t *a, int rows, int cols);
void init_matrix_b(int8_t *b, int rows, int cols);
void print_matrix_a(uint8_t *a, int rows, int cols);
void print_matrix_b(int8_t *b, int rows, int cols);
void gold_mxm(uint8_t *a, int8_t *b, int32_t *c, int p, int m, int q);
void print_matrix_c(int32_t *c, int rows, int cols);
int compare_mxm(int32_t *c, int32_t *c_gold, int p, int q);

#endif