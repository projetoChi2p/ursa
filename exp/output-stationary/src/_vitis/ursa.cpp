#include "ursa.h"

// ⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⢰⣿⡿⠗⠀⠠⠄⡀⠀⠀⠀⠀
// ⠀⠀⠀⠀⡜⠁⠀⠀⠀⠀⠀⠈⠑⢶⣶⡄
// ⢀⣶⣦⣸⠀⢼⣟⡇⠀⠀⢀⣀⠀⠘⡿⠃
// ⠀⢿⣿⣿⣄⠒⠀⠠⢶⡂⢫⣿⢇⢀⠃⠀
// ⠀⠈⠻⣿⣿⣿⣶⣤⣀⣀⣀⣂⡠⠊⠀⠀
// ⠀⠀⠀⠃⠀⠀⠉⠙⠛⠿⣿⣿⣧⠀⠀⠀
// ⠀⠀⠘⡀⠀⠀⠀⠀⠀⠀⠘⣿⣿⡇⠀⠀
// ⠀⠀⠀⣷⣄⡀⠀⠀⠀⢀⣴⡟⠿⠃⠀⠀
// ⠀⠀⠀⢻⣿⣿⠉⠉⢹⣿⣿⠁⠀⠀⠀⠀
// ⠀⠀⠀⠀⠉⠁⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀
// URSA (UFRGS Reconfigurable Systolic Array)
XMxm_execute_ursa xUrsa0;


//===============================================
// init to ursa-ip
//===============================================
int ursa_init(XMxm_execute_ursa* pxMxm, UINTPTR baseaddr)
{
    int xil_status;
    XMxm_execute_ursa_Config *xMxmConfigPtr;
    XMxm_execute_ursa_Config xMxmConfig;

    xMxmConfigPtr = XMxm_execute_ursa_LookupConfig(baseaddr);
    if (xMxmConfigPtr == NULL) 
    {
        xil_printf("[init] URSA CONTROL not found.\n\r");
        return XST_DEVICE_NOT_FOUND;
    } 
    else 
    {
        // NOTA: Vivado 2023.2 gera Ap e Control invertidos no LookupConfig
        // A troca abaixo é intencional!
        xil_printf("[init] URSA CONTROL FOUND:\n\r");
        xil_printf("[init] AP CONTROL    0x%08x \n\r", xMxmConfigPtr->Ap_BaseAddress);
        xil_printf("[init] MEM CONTROL   0x%08x \n\r", xMxmConfigPtr->Control_BaseAddress);
    }

    // NOTA: Vivado 2023.2 gera Ap e Control invertidos no LookupConfig
    // A troca abaixo é intencional!
    xMxmConfig.Ap_BaseAddress      = xMxmConfigPtr->Control_BaseAddress;
    xMxmConfig.Control_BaseAddress = xMxmConfigPtr->Ap_BaseAddress;

    xil_status = XMxm_execute_ursa_CfgInitialize(pxMxm, &xMxmConfig);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[init] MXM Init failed: %d.\n\r", xil_status);
        return xil_status;
    }
    return EXIT_SUCCESS;
}

//===============================================
// post reset config
//===============================================
int ursa_post_reset_setup(XMxm_execute_ursa *pxMxm)
{
    XMxm_execute_ursa_InterruptGlobalDisable(pxMxm);
    XMxm_execute_ursa_DisableAutoRestart(pxMxm);
    XMxm_execute_ursa_InterruptClear(pxMxm, 0xFFFFFFFF);
    XMxm_execute_ursa_InterruptEnable(pxMxm, 1);
    return EXIT_SUCCESS;
}

//===============================================
// mxm-execute
//===============================================
static uint8_t ursa_run(XMxm_execute_ursa *pxMxm, uint32_t p, uint32_t q, uint32_t m)
{
    uint32_t k;

    XMxm_execute_ursa_Start(pxMxm);

    k = TIMEOUT_STEPS_FOR_OPS * (p * q * m);
    while ((XMxm_execute_ursa_IsDone(pxMxm) == 0) && (k != 0)) {
        usleep(TIMEOUT_USLEEP); k--;
    }
    if (k == 0) return SA_ERROR;

    u32 u32Return = XMxm_execute_ursa_Get_return(pxMxm);

    k = TIMEOUT_STEPS_FOR_OPS;
    while ((XMxm_execute_ursa_IsIdle(pxMxm) == 0) && (k != 0)) {
        usleep(TIMEOUT_USLEEP); k--;
    }
    if (k == 0) return SA_ERROR;

    return (uint8_t)u32Return;
}
uint8_t mxm_execute_ursa(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, uint32_t q, uint32_t m,
    uint32_t addr_a, uint32_t addr_b, uint32_t addr_c)
{
    uint32_t k;

    k = TIMEOUT_STEPS_FOR_REGS;
    while ((XMxm_execute_ursa_IsIdle(pxMxm) == 0) && (k != 0)) {
        usleep(TIMEOUT_USLEEP); k--;
    }
    if (k == 0) { send_status(0, __LINE__); return SA_ERROR; }

    XMxm_execute_ursa_Set_a0_p   (pxMxm, p);
    XMxm_execute_ursa_Set_b0_q   (pxMxm, q);
    XMxm_execute_ursa_Set_m      (pxMxm, m);
    XMxm_execute_ursa_Set_addr_a0(pxMxm, addr_a);
    XMxm_execute_ursa_Set_addr_b0(pxMxm, addr_b);
    XMxm_execute_ursa_Set_addr_c0(pxMxm, addr_c);

    return ursa_run(pxMxm, p, q, m);
}