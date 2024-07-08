################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/drivers/glfw/lv_glfw_mouse.c \
../src/display/lvgl/src/drivers/glfw/lv_glfw_mouse_private.c \
../src/display/lvgl/src/drivers/glfw/lv_glfw_window.c \
../src/display/lvgl/src/drivers/glfw/lv_opengles_debug.c \
../src/display/lvgl/src/drivers/glfw/lv_opengles_driver.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/drivers/glfw/lv_glfw_mouse.d \
./src/display/lvgl/src/drivers/glfw/lv_glfw_mouse_private.d \
./src/display/lvgl/src/drivers/glfw/lv_glfw_window.d \
./src/display/lvgl/src/drivers/glfw/lv_opengles_debug.d \
./src/display/lvgl/src/drivers/glfw/lv_opengles_driver.d 

OBJS += \
./src/display/lvgl/src/drivers/glfw/lv_glfw_mouse.o \
./src/display/lvgl/src/drivers/glfw/lv_glfw_mouse_private.o \
./src/display/lvgl/src/drivers/glfw/lv_glfw_window.o \
./src/display/lvgl/src/drivers/glfw/lv_opengles_debug.o \
./src/display/lvgl/src/drivers/glfw/lv_opengles_driver.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/drivers/glfw/%.o: ../src/display/lvgl/src/drivers/glfw/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"D:/DevOps/Renesas/rn_ra8_fsd/src" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/dsi" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/lvgl" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/touch" -I"." -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/api" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/instances" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/src/rm_freertos_port" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_gen" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg/bsp" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/aws" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

