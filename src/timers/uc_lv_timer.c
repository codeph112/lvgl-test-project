/*
 * uc_lv_timer.c
 *
 *  Created on: 22-Jul-2024
 *      Author: Bhura Malik
 */

#include "uc_lv_timer.h"


void timer_tick_callback(timer_callback_args_t *p_args)
{
    FSP_PARAMETER_NOT_USED(p_args);
    lv_tick_inc(1);
}


void uc_lv_timer_init( void ) {
    fsp_err_t err;
    err = R_GPT_Open(&g_timer0_ctrl, &g_timer0_cfg);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0);
    }

    err = R_GPT_Start(&g_timer0_ctrl);
    if (FSP_SUCCESS != err)
    {
        __BKPT(0);
    }
}
