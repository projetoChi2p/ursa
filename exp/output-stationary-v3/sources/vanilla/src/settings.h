#ifndef __SETTINGS_H__
#define __SETTINGS_H__

#include <cstdint>
#include <stdio.h>
#include <stdint.h>
#include <limits.h>

//===============================================
// URSA v3 -- output-stationary, streaming shell
//
// v3 changes the memory layout of all three operands (see shell.cpp):
//   A, B: tile-major, one word per reduction step k
//   C   : tile-major, 64-bit words (two int32 per beat)
// The host (urt runtime) packs A once, packs B in the transfer copy and
// unpacks C in the copy back. The math is unchanged and bit-exact with v2.
//===============================================

#if defined(__SYNTHESIS__) || defined(__VITIS_HLS__)
    #ifndef AP_FIXED
        #define AP_FIXED
    #endif
#endif

//===============================================
// Build parameters (override with -D)
//===============================================
#ifndef SA_SIZE
    #define SA_SIZE 8
#endif

#ifndef ACC_BITS
    #define ACC_BITS 20
#endif

// Largest reduction dimension m of one call.
#ifndef MAX_M
    #define MAX_M 256
#endif

#if (SA_SIZE & (SA_SIZE - 1)) != 0
    #error "SA_SIZE must be a power of two"
#endif

// ─── Operand word (A and B ports) ──────────────────────────────────────────
// One word holds LANES consecutive reduction steps of one tile:
//   lane l, byte i  ->  step k = w*LANES + l, row/column i of the tile.
// For SA_SIZE >= 4 a word is exactly one step (LANES = 1). Below 4 the word is
// held at 4 bytes (axi_bram_ctrl does not go narrower) and carries 2 steps.
#if SA_SIZE < 4
    #define WORD_BYTES 4
#else
    #define WORD_BYTES SA_SIZE
#endif
#define LANES (WORD_BYTES / SA_SIZE)

// Steps actually streamed through the array for a call of reduction m.
// The host pads A (and B) with zeros up to this.
#define KSTEPS(m) ((((m) + LANES - 1) / LANES) * LANES)

// ─── Result word (C port) ──────────────────────────────────────────────────
#define C_WORD_BYTES 8                                   /* 64-bit port   */
#define C_PER_WORD   (C_WORD_BYTES / 4)                  /* int32 per beat */
#define ROW_C_WORDS  (SA_SIZE / C_PER_WORD)              /* beats per PE row */
#define TILE_C_WORDS (SA_SIZE * ROW_C_WORDS)             /* beats per tile   */

// ─── Memory windows of the block design (bytes) ────────────────────────────
#ifndef BRAM_AW_BYTES
    #if SA_SIZE >= 16
        #define BRAM_AW_BYTES (8*1024)
    #else
        #define BRAM_AW_BYTES (4*1024)
    #endif
#endif
#ifndef BRAM_BI_BYTES
    #define BRAM_BI_BYTES (16*1024)
#endif
#ifndef BRAM_CA_BYTES
    #define BRAM_CA_BYTES (16*1024)
#endif

#define AW_DEPTH_WORDS (BRAM_AW_BYTES / WORD_BYTES)
#define BI_DEPTH_WORDS (BRAM_BI_BYTES / WORD_BYTES)
#define CA_DEPTH_WORDS (BRAM_CA_BYTES / C_WORD_BYTES)

// Intern codes
#define SA_SUCCESS      0
#define SA_ERROR        1

// Math types
#ifdef AP_FIXED
    #include "ap_int.h"
    typedef ap_int  <8>                 data_a_t;  // weight
    typedef ap_uint <8>                 data_b_t;  // pixel
    typedef ap_int  <32>                data_c_t;
    typedef ap_int  <ACC_BITS>          macc_t;    // PE accumulator
    typedef ap_uint <8*WORD_BYTES>      a_word_t;  // A port beat
    typedef ap_uint <8*WORD_BYTES>      b_word_t;  // B port beat
    typedef ap_uint <8*C_WORD_BYTES>    c_word_t;  // C port beat
    typedef ap_uint <8*SA_SIZE>         row_t;     // one step of one tile
    typedef ap_uint <SA_SIZE*ACC_BITS>  acc_row_t; // one PE row of accumulators
#else
    #error "v3 is written for ap_int types (build with -DAP_FIXED or under Vitis HLS)"
#endif

typedef uint8_t sa_result_t;

// Public API
//   addr_a0: A, tile-major (see shell.cpp)   a0_p: rows of A  (multiple of SA_SIZE)
//   addr_b0: B, tile-major                   b0_q: cols of B  (multiple of SA_SIZE)
//   addr_c0: C, tile-major, 64-bit words     m   : reduction  (1..MAX_M)
sa_result_t mxm_execute_ursa(
    const a_word_t *addr_a0, uint16_t a0_p,
    const b_word_t *addr_b0, uint16_t b0_q,
    c_word_t       *addr_c0,
    uint16_t m
);

#endif /* __SETTINGS_H__ */
