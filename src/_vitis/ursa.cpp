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
XMxm_execute_ursa xUrsa0, xUrsa1;
uint16_t          labft_count_0 = 0;
uint16_t          labft_count_1 = 0;

/*****************************************************************************************************
 Inicialização do IP URSA
******************************************************************************************************/
int ursa_init(XMxm_execute_ursa* pxMxm,  UINTPTR baseaddr)
{
    int xil_status;
    XMxm_execute_ursa_Config *xMxmConfigPtr;
    XMxm_execute_ursa_Config xMxmConfig;

    // xMxmConfigPtr = XMxm_execute_ursa_LookupConfig(XPAR_MXM_EXECUTE_URSA_0_BASEADDR);
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
        // xil_printf("[init] URSA CONTROL FOUND: 0x%08x\n\r", baseaddr);
        xil_printf("[init] URSA CONTROL FOUND:\n\r");
        xil_printf("[init] AP CONTROL    0x%08x \n\r", xMxmConfigPtr->Ap_BaseAddress);
        xil_printf("[init] MEM CONTROL   0x%08x \n\r", xMxmConfigPtr->Control_BaseAddress);
#ifdef LABFT
        xil_printf("[init] LABFT CONTROL 0x%08x\n\r", xMxmConfigPtr->Labft_ctrl_BaseAddress);
#endif
    }

        // NOTA: Vivado 2023.2 gera Ap e Control invertidos no LookupConfig
        // A troca abaixo é intencional!
#ifdef LABFT
    xMxmConfig.Ap_BaseAddress      = xMxmConfigPtr->Control_BaseAddress;
    xMxmConfig.Control_BaseAddress = xMxmConfigPtr->Labft_ctrl_BaseAddress;
    xMxmConfig.Labft_ctrl_BaseAddress = xMxmConfigPtr->Ap_BaseAddress;
#else
    xMxmConfig.Ap_BaseAddress      = xMxmConfigPtr->Control_BaseAddress;
    xMxmConfig.Control_BaseAddress = xMxmConfigPtr->Ap_BaseAddress;
#endif    


    xil_status = XMxm_execute_ursa_CfgInitialize(pxMxm, &xMxmConfig);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[init] MXM Init failed: %d.\n\r", xil_status);
        return xil_status;
    }
    return EXIT_SUCCESS;
}

/*****************************************************************************************************
 Configuração pós-reset
******************************************************************************************************/
int ursa_post_reset_setup(XMxm_execute_ursa *pxMxm)
{
    XMxm_execute_ursa_InterruptGlobalDisable(pxMxm);
    XMxm_execute_ursa_DisableAutoRestart(pxMxm);
    XMxm_execute_ursa_InterruptClear(pxMxm, 0xFFFFFFFF);
    XMxm_execute_ursa_InterruptEnable(pxMxm, 1);
    return EXIT_SUCCESS;
}


/*****************************************************************************************************
 Execução MxM sem LABFT
******************************************************************************************************/
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

    XMxm_execute_ursa_Set_a0_p(pxMxm, p);
    XMxm_execute_ursa_Set_b0_q(pxMxm, q);
    XMxm_execute_ursa_Set_m(pxMxm, m);
    XMxm_execute_ursa_Set_addr_a0(pxMxm, addr_a);
    XMxm_execute_ursa_Set_addr_b0(pxMxm, addr_b);
    XMxm_execute_ursa_Set_addr_c0(pxMxm, addr_c);

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

/*****************************************************************************************************
 Execução MxM com LABFT
 - labft_irq → IRQ_F2P[0] → ISR → g_labft_irq_count  (contagem no ARM, por pulso)
 - labft_count → s_axi_labft_ctrl (0x40020010) → lido via Xil_In32  (contagem no PL, ao final)
******************************************************************************************************/
uint8_t mxm_execute_ursa_LABFT(
    XMxm_execute_ursa *pxMxm,
    uint32_t p, 
    uint32_t q, 
    uint32_t m,
    uint32_t addr_a, 
    uint32_t addr_b, 
    uint32_t addr_c,
    int ursa_id
)
{
    uint32_t k;

    k = TIMEOUT_STEPS_FOR_REGS;
    while ((XMxm_execute_ursa_IsIdle(pxMxm) == 0) && (k != 0)) {
        usleep(TIMEOUT_USLEEP); k--;
    }
    if (k == 0) { send_status(0, __LINE__); return SA_ERROR; }

    XMxm_execute_ursa_Set_a0_p(pxMxm, p);
    XMxm_execute_ursa_Set_b0_q(pxMxm, q);
    XMxm_execute_ursa_Set_m(pxMxm, m);
    XMxm_execute_ursa_Set_addr_a0(pxMxm, addr_a);
    XMxm_execute_ursa_Set_addr_b0(pxMxm, addr_b);
    XMxm_execute_ursa_Set_addr_c0(pxMxm, addr_c);

    XMxm_execute_ursa_Start(pxMxm);

    k = TIMEOUT_STEPS_FOR_OPS * (p * q * m);
    while ((XMxm_execute_ursa_IsDone(pxMxm) == 0) && (k != 0)) {
        usleep(TIMEOUT_USLEEP); k--;
    }
    if (k == 0) return SA_ERROR;

    // u32 u32Return = XMxm_execute_ursa_Get_return(pxMxm);

    // uint16_t count=0;
    // count = (uint16_t)XMxm_execute_ursa_Get_labft_count(pxMxm);
    // if(ursa_id==0) labft_count_0 = count;
    // else           labft_count_1 = count;

    k = TIMEOUT_STEPS_FOR_OPS;
    while ((XMxm_execute_ursa_IsIdle(pxMxm) == 0) && (k != 0)) {
        usleep(TIMEOUT_USLEEP); k--;
    }
    if (k == 0) return SA_ERROR;

    labft_count_0 = XMxm_execute_ursa_Get_labft_count(&xUrsa0);
    labft_count_1 = XMxm_execute_ursa_Get_labft_count(&xUrsa1);
    // xil_printf("labft_count: URSA_0=%d URSA_1=%d\n\r", labft_count_0, labft_count_1);


    // return (uint8_t)u32Return;
    return 0;
}
