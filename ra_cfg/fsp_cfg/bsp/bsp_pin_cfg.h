/* generated configuration header file - do not edit */
#ifndef BSP_PIN_CFG_H_
#define BSP_PIN_CFG_H_
#include "r_ioport.h"

/* Common macro for FSP header files. There is also a corresponding FSP_FOOTER macro at the end of this file. */
FSP_HEADER

#define USER_LED3_RED (BSP_IO_PORT_01_PIN_07)
#define MIPI_DSI_TE (BSP_IO_PORT_02_PIN_06)
#define TDI (BSP_IO_PORT_02_PIN_08)
#define TDO (BSP_IO_PORT_02_PIN_09)
#define SWDIO (BSP_IO_PORT_02_PIN_10)
#define SWCLK (BSP_IO_PORT_02_PIN_11)
#define DISP_BLEN (BSP_IO_PORT_04_PIN_04)
#define USB_VBUS (BSP_IO_PORT_04_PIN_07)
#define USER_LED2_GREEN (BSP_IO_PORT_04_PIN_14)
#define USB_VBUSEN (BSP_IO_PORT_05_PIN_00)
#define USB_OC (BSP_IO_PORT_05_PIN_01)
#define DISP_INT (BSP_IO_PORT_05_PIN_10)
#define USER_LED1_BLUE (BSP_IO_PORT_06_PIN_00)
#define DISP_RST (BSP_IO_PORT_10_PIN_01)
extern const ioport_cfg_t g_bsp_pin_cfg; /* R7FA8D1BHECBD.pincfg */

void BSP_PinConfigSecurityInit();

/* Common macro for FSP header files. There is also a corresponding FSP_HEADER macro at the top of this file. */
FSP_FOOTER
#endif /* BSP_PIN_CFG_H_ */
