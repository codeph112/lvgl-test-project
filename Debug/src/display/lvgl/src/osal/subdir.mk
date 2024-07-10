################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/lvgl/src/osal/lv_cmsis_rtos2.c \
../src/display/lvgl/src/osal/lv_freertos.c \
../src/display/lvgl/src/osal/lv_mqx.c \
../src/display/lvgl/src/osal/lv_os.c \
../src/display/lvgl/src/osal/lv_os_none.c \
../src/display/lvgl/src/osal/lv_pthread.c \
../src/display/lvgl/src/osal/lv_rtthread.c \
../src/display/lvgl/src/osal/lv_windows.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/osal/lv_cmsis_rtos2.d \
./src/display/lvgl/src/osal/lv_freertos.d \
./src/display/lvgl/src/osal/lv_mqx.d \
./src/display/lvgl/src/osal/lv_os.d \
./src/display/lvgl/src/osal/lv_os_none.d \
./src/display/lvgl/src/osal/lv_pthread.d \
./src/display/lvgl/src/osal/lv_rtthread.d \
./src/display/lvgl/src/osal/lv_windows.d 

OBJS += \
./src/display/lvgl/src/osal/lv_cmsis_rtos2.o \
./src/display/lvgl/src/osal/lv_freertos.o \
./src/display/lvgl/src/osal/lv_mqx.o \
./src/display/lvgl/src/osal/lv_os.o \
./src/display/lvgl/src/osal/lv_os_none.o \
./src/display/lvgl/src/osal/lv_pthread.o \
./src/display/lvgl/src/osal/lv_rtthread.o \
./src/display/lvgl/src/osal/lv_windows.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/osal/%.o: ../src/display/lvgl/src/osal/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

