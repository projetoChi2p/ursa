#include "xmxm_execute_ursa.h"

XMxm_execute_ursa_Config XMxm_execute_ursa_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,mxm-execute-ursa-1.0", /* compatible */
		0x40000000,
		0x40010000 /* reg */
	},
	 {
		 NULL
	}
};