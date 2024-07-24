################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../src/display/lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./src/display/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 

OBJS += \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./src/display/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/draw/nxp/pxp/%.o: ../src/display/lvgl/src/draw/nxp/pxp/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/timers" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/screens" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

