################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.c \
../src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.c \
../src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 

OBJS += \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./src/display/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/draw/sw/blend/%.o: ../src/display/lvgl/src/draw/sw/blend/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/timers" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/screens" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

