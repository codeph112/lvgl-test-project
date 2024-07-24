################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.c \
../src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.c \
../src/display/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.c \
../src/display/lvgl/src/draw/vg_lite/lv_vg_lite_grad.c \
../src/display/lvgl/src/draw/vg_lite/lv_vg_lite_math.c \
../src/display/lvgl/src/draw/vg_lite/lv_vg_lite_path.c \
../src/display/lvgl/src/draw/vg_lite/lv_vg_lite_pending.c \
../src/display/lvgl/src/draw/vg_lite/lv_vg_lite_utils.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.d \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.d \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.d \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_grad.d \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_math.d \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_path.d \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_pending.d \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_utils.d 

OBJS += \
./src/display/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.o \
./src/display/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.o \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.o \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_grad.o \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_math.o \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_path.o \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_pending.o \
./src/display/lvgl/src/draw/vg_lite/lv_vg_lite_utils.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/draw/vg_lite/%.o: ../src/display/lvgl/src/draw/vg_lite/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/timers" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/screens" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

