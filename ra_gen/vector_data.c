/* generated vector source file - do not edit */
#include "bsp_api.h"
/* Do not build these data structures if no interrupts are currently allocated because IAR will have build errors. */
#if VECTOR_DATA_IRQ_COUNT > 0
        BSP_DONT_REMOVE const fsp_vector_t g_vector_table[BSP_ICU_VECTOR_MAX_ENTRIES] BSP_PLACE_IN_SECTION(BSP_SECTION_APPLICATION_VECTORS) =
        {
                        [0] = iic_master_rxi_isr, /* IIC1 RXI (Receive data full) */
            [1] = iic_master_txi_isr, /* IIC1 TXI (Transmit data empty) */
            [2] = iic_master_tei_isr, /* IIC1 TEI (Transmit end) */
            [3] = iic_master_eri_isr, /* IIC1 ERI (Transfer error) */
            [4] = r_icu_isr, /* ICU IRQ3 (External pin interrupt 3) */
            [5] = gpt_counter_overflow_isr, /* GPT0 COUNTER OVERFLOW (Overflow) */
            [6] = drw_int_isr, /* DRW INT (DRW interrupt) */
            [7] = glcdc_line_detect_isr, /* GLCDC LINE DETECT (Specified line) */
            [8] = glcdc_underflow_1_isr, /* GLCDC UNDERFLOW 1 (Graphic 1 underflow) */
            [9] = mipi_dsi_seq0, /* MIPIDSI SEQ0 (Sequence operation channel 0 interrupt) */
            [10] = mipi_dsi_seq1, /* MIPIDSI SEQ1 (Sequence operation channel 1 interrupt) */
            [11] = mipi_dsi_vin1, /* MIPIDSI VIN1 (Video-Input operation channel1 interrupt) */
            [12] = mipi_dsi_rcv, /* MIPIDSI RCV (DSI packet receive interrupt) */
            [13] = mipi_dsi_ferr, /* MIPIDSI FERR (DSI fatal error interrupt) */
            [14] = mipi_dsi_ppi, /* MIPIDSI PPI (DSI D-PHY PPI interrupt) */
        };
        #if BSP_FEATURE_ICU_HAS_IELSR
        const bsp_interrupt_event_t g_interrupt_event_link_select[BSP_ICU_VECTOR_MAX_ENTRIES] =
        {
            [0] = BSP_PRV_VECT_ENUM(EVENT_IIC1_RXI,GROUP0), /* IIC1 RXI (Receive data full) */
            [1] = BSP_PRV_VECT_ENUM(EVENT_IIC1_TXI,GROUP1), /* IIC1 TXI (Transmit data empty) */
            [2] = BSP_PRV_VECT_ENUM(EVENT_IIC1_TEI,GROUP2), /* IIC1 TEI (Transmit end) */
            [3] = BSP_PRV_VECT_ENUM(EVENT_IIC1_ERI,GROUP3), /* IIC1 ERI (Transfer error) */
            [4] = BSP_PRV_VECT_ENUM(EVENT_ICU_IRQ3,GROUP4), /* ICU IRQ3 (External pin interrupt 3) */
            [5] = BSP_PRV_VECT_ENUM(EVENT_GPT0_COUNTER_OVERFLOW,GROUP5), /* GPT0 COUNTER OVERFLOW (Overflow) */
            [6] = BSP_PRV_VECT_ENUM(EVENT_DRW_INT,GROUP6), /* DRW INT (DRW interrupt) */
            [7] = BSP_PRV_VECT_ENUM(EVENT_GLCDC_LINE_DETECT,GROUP7), /* GLCDC LINE DETECT (Specified line) */
            [8] = BSP_PRV_VECT_ENUM(EVENT_GLCDC_UNDERFLOW_1,GROUP0), /* GLCDC UNDERFLOW 1 (Graphic 1 underflow) */
            [9] = BSP_PRV_VECT_ENUM(EVENT_MIPIDSI_SEQ0,GROUP1), /* MIPIDSI SEQ0 (Sequence operation channel 0 interrupt) */
            [10] = BSP_PRV_VECT_ENUM(EVENT_MIPIDSI_SEQ1,GROUP2), /* MIPIDSI SEQ1 (Sequence operation channel 1 interrupt) */
            [11] = BSP_PRV_VECT_ENUM(EVENT_MIPIDSI_VIN1,GROUP3), /* MIPIDSI VIN1 (Video-Input operation channel1 interrupt) */
            [12] = BSP_PRV_VECT_ENUM(EVENT_MIPIDSI_RCV,GROUP4), /* MIPIDSI RCV (DSI packet receive interrupt) */
            [13] = BSP_PRV_VECT_ENUM(EVENT_MIPIDSI_FERR,GROUP5), /* MIPIDSI FERR (DSI fatal error interrupt) */
            [14] = BSP_PRV_VECT_ENUM(EVENT_MIPIDSI_PPI,GROUP6), /* MIPIDSI PPI (DSI D-PHY PPI interrupt) */
        };
        #endif
        #endif
