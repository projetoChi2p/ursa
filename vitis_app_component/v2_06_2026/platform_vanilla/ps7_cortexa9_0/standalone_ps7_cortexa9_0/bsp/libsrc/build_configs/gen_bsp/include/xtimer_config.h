/******************************************************************************
* Copyright (c) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
#ifndef _XTIMER_CONFIG_H
#define _XTIMER_CONFIG_H



#define XSLEEPTIMER_BASEADDRESS 0xf8001000
/* #undef XSLEEPTIMER_IS_AXITIMER */
#define XSLEEPTIMER_IS_TTCPS     
/* #undef XSLEEPTIMER_IS_SCUTIMER */
#define XSLEEPTIMER_FREQ	     0x69f6bcb
#define COUNTS_PER_SECOND       XSLEEPTIMER_FREQ
/* #undef XTIMER_IS_DEFAULT_TIMER */
/* #undef XTIMER_DEFAULT_TIMER_IS_MB */

/* #undef XTICKTIMER_BASEADDRESS */
/* #undef XTICKTIMER_IS_AXITIMER */
/* #undef XTICKTIMER_IS_TTCPS */
/* #undef XTICKTIMER_IS_SCUTIMER */
#define XTIMER_NO_TICK_TIMER   1

#endif /* XTIMER_CONFIG_H */
