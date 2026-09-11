#ifndef MATRICES_H_
#define MATRICES_H_

#include <stdint.h>
#include <stdio.h>

#include "../../hls_src/settings.h"

// #define DEBUG

/* Testbench dimensions.
 *
 * Guarded so the build can override them with -DP= -DQ= -DM= in tb.cflags.
 * Without the guard the values here win and the sweep has no effect.
 *
 * For cosimulation, keep them small. The point of a cosim run is to see the
 * shape of one tile, not to process data: P = Q = SA_SIZE gives a single tile,
 * and M sets how many iterations the shell's k loop makes.
 */
#ifndef P
  #define P 2
#endif
#ifndef Q
  #define Q 32
#endif
#ifndef M
  #define M 2
#endif

#define MEM_DEPTH 4096

/* A is the signed operand and B the unsigned one, matching data_a_t and
 * data_b_t in settings.h. Getting this backwards only shows up once the values
 * go negative, and then the reference disagrees with the hardware silently.
 */
void init_matrix_a(int8_t  *a, int rows, int cols);
void init_matrix_b(uint8_t *b, int rows, int cols);
void print_matrix_a(const int8_t  *a, int rows, int cols);
void print_matrix_b(const uint8_t *b, int rows, int cols);
void gold_mxm(const int8_t *a, const uint8_t *b, int32_t *c, int p, int m, int q);
void print_matrix_c(const int32_t *c, int rows, int cols);
int  compare_mxm(const int32_t *c, const int32_t *c_gold, int p, int q);

#endif