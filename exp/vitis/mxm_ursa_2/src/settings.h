#ifndef __SETTINGS_H__
#define __SETTINGS_H__

#include <cstdint>
#include <stdio.h>
#include <stdint.h>
#include <limits.h>
 
/* ── Síntese HLS ───────────────────────────────────────────
   AP_FIXED é ativado automaticamente pelo __SYNTHESIS__
   definido pelo Vitis HLS. Não edite aqui.                */
#ifdef __SYNTHESIS__
    #define AP_FIXED
    #include "hls_stream.h"
#endif
 
/* ── Dimensão do Systolic Array ────────────────────────── */
#define SA_SIZE 9
 
/* ── Fault tolerance ───────────────────────────────────── */
// #define LABFT
// #define FAULT_INJECT
 
/* ── Debug ─────────────────────────────────────────────── */
// #define DEBUG
 
/*features*/
// #define IM2COL

/* ── Códigos de retorno da top function ────────────────── */
#define SA_SUCCESS      0
#define SA_ERROR        1
#define SA_LABFT_ERROR  2

/* ── Dimensão interna máxima (para buffers estáticos) ── */
#define M_MAX 144

/* ── Math SA ───────────────────────────────────────────── */
#ifdef AP_FIXED
    #include "ap_fixed.h"

    typedef ap_int  <8>  data_a_t; //weight
    typedef ap_uint <8>  data_b_t; //pixel
    typedef ap_int  <32> data_c_t; //bramc
    typedef ap_int  <20> macc_t;   //bramc
#else
    typedef int8_t  data_a_t; //weight
    typedef uint8_t data_b_t; //pixel
    typedef int32_t data_c_t; //bramc
    typedef int32_t macc_t;   //bramc
#endif

typedef uint8_t sa_result_t;
 
/* ── Stream element ─────────────────────────────────────── */
typedef struct {
    data_a_t a[SA_SIZE];
    data_b_t b[SA_SIZE];
} axis_ab_t;
 

/* ── Public API ─────────────────────────────────────────── */
// #ifdef LABFT
//     sa_result_t mxm_execute_ursa(
//         int8_t   *addr_a0,
//         uint16_t  a0_p,
//         uint8_t  *addr_b0,
//         uint16_t  b0_q,
//         int32_t  *addr_c0,
//         uint16_t  m,
//         uint16_t &labft_count
//     );
// #else
//     sa_result_t mxm_execute_ursa(
//         int8_t  *addr_a0,
//         uint16_t a0_p,
//         uint8_t *addr_b0,
//         uint16_t b0_q,
//         int32_t *addr_c0,
//         uint16_t m
//     );
// #endif

#ifdef IM2COL
 
    #ifdef LABFT
        sa_result_t mxm_execute_ursa(
            int8_t   *addr_a0,
            uint16_t  a0_p,
            uint8_t  *addr_img,   // imagem raw CHW
            uint16_t  b0_q,
            int32_t  *addr_c0,
            uint16_t  m,
            uint8_t   ch_in,
            uint16_t  wh_in,
            uint8_t   wh_kernel,
            uint8_t   pad,
            uint8_t   stride,
            uint16_t &labft_count
        );
    #else
        sa_result_t mxm_execute_ursa(
            int8_t  *addr_a0,
            uint16_t a0_p,
            uint8_t *addr_img,    // imagem raw CHW
            uint16_t b0_q,
            int32_t *addr_c0,
            uint16_t m,
            uint8_t  ch_in,
            uint16_t wh_in,
            uint8_t  wh_kernel,
            uint8_t  pad,
            uint8_t  stride
        );
    #endif
 
#else /* !IM2COL — assinatura original, sem im2col */
 
    #ifdef LABFT
        sa_result_t mxm_execute_ursa(
            int8_t   *addr_a0,
            uint16_t  a0_p,
            uint8_t  *addr_b0,
            uint16_t  b0_q,
            int32_t  *addr_c0,
            uint16_t  m,
            uint16_t &labft_count
        );
    #else
        sa_result_t mxm_execute_ursa(
            int8_t  *addr_a0,
            uint16_t a0_p,
            uint8_t *addr_b0,
            uint16_t b0_q,
            int32_t *addr_c0,
            uint16_t m
        );
    #endif
 
#endif /* IM2COL */
 
/*TB*/
#define P SA_SIZE
#define Q SA_SIZE
#define M SA_SIZE

#endif /* __SETTINGS_H__ */
 