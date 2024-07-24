################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/misc/lv_anim.c \
../src/display/lvgl/src/misc/lv_anim_timeline.c \
../src/display/lvgl/src/misc/lv_area.c \
../src/display/lvgl/src/misc/lv_array.c \
../src/display/lvgl/src/misc/lv_async.c \
../src/display/lvgl/src/misc/lv_bidi.c \
../src/display/lvgl/src/misc/lv_color.c \
../src/display/lvgl/src/misc/lv_color_op.c \
../src/display/lvgl/src/misc/lv_event.c \
../src/display/lvgl/src/misc/lv_fs.c \
../src/display/lvgl/src/misc/lv_ll.c \
../src/display/lvgl/src/misc/lv_log.c \
../src/display/lvgl/src/misc/lv_lru.c \
../src/display/lvgl/src/misc/lv_math.c \
../src/display/lvgl/src/misc/lv_palette.c \
../src/display/lvgl/src/misc/lv_profiler_builtin.c \
../src/display/lvgl/src/misc/lv_rb.c \
../src/display/lvgl/src/misc/lv_style.c \
../src/display/lvgl/src/misc/lv_style_gen.c \
../src/display/lvgl/src/misc/lv_templ.c \
../src/display/lvgl/src/misc/lv_text.c \
../src/display/lvgl/src/misc/lv_text_ap.c \
../src/display/lvgl/src/misc/lv_timer.c \
../src/display/lvgl/src/misc/lv_utils.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/misc/lv_anim.d \
./src/display/lvgl/src/misc/lv_anim_timeline.d \
./src/display/lvgl/src/misc/lv_area.d \
./src/display/lvgl/src/misc/lv_array.d \
./src/display/lvgl/src/misc/lv_async.d \
./src/display/lvgl/src/misc/lv_bidi.d \
./src/display/lvgl/src/misc/lv_color.d \
./src/display/lvgl/src/misc/lv_color_op.d \
./src/display/lvgl/src/misc/lv_event.d \
./src/display/lvgl/src/misc/lv_fs.d \
./src/display/lvgl/src/misc/lv_ll.d \
./src/display/lvgl/src/misc/lv_log.d \
./src/display/lvgl/src/misc/lv_lru.d \
./src/display/lvgl/src/misc/lv_math.d \
./src/display/lvgl/src/misc/lv_palette.d \
./src/display/lvgl/src/misc/lv_profiler_builtin.d \
./src/display/lvgl/src/misc/lv_rb.d \
./src/display/lvgl/src/misc/lv_style.d \
./src/display/lvgl/src/misc/lv_style_gen.d \
./src/display/lvgl/src/misc/lv_templ.d \
./src/display/lvgl/src/misc/lv_text.d \
./src/display/lvgl/src/misc/lv_text_ap.d \
./src/display/lvgl/src/misc/lv_timer.d \
./src/display/lvgl/src/misc/lv_utils.d 

OBJS += \
./src/display/lvgl/src/misc/lv_anim.o \
./src/display/lvgl/src/misc/lv_anim_timeline.o \
./src/display/lvgl/src/misc/lv_area.o \
./src/display/lvgl/src/misc/lv_array.o \
./src/display/lvgl/src/misc/lv_async.o \
./src/display/lvgl/src/misc/lv_bidi.o \
./src/display/lvgl/src/misc/lv_color.o \
./src/display/lvgl/src/misc/lv_color_op.o \
./src/display/lvgl/src/misc/lv_event.o \
./src/display/lvgl/src/misc/lv_fs.o \
./src/display/lvgl/src/misc/lv_ll.o \
./src/display/lvgl/src/misc/lv_log.o \
./src/display/lvgl/src/misc/lv_lru.o \
./src/display/lvgl/src/misc/lv_math.o \
./src/display/lvgl/src/misc/lv_palette.o \
./src/display/lvgl/src/misc/lv_profiler_builtin.o \
./src/display/lvgl/src/misc/lv_rb.o \
./src/display/lvgl/src/misc/lv_style.o \
./src/display/lvgl/src/misc/lv_style_gen.o \
./src/display/lvgl/src/misc/lv_templ.o \
./src/display/lvgl/src/misc/lv_text.o \
./src/display/lvgl/src/misc/lv_text_ap.o \
./src/display/lvgl/src/misc/lv_timer.o \
./src/display/lvgl/src/misc/lv_utils.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/misc/%.o: ../src/display/lvgl/src/misc/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/timers" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/screens" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

