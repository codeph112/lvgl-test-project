################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/display/screens/notification_bar.c \
../src/display/screens/screen.c \
../src/display/screens/screen_home.c \
../src/display/screens/screen_settings.c \
../src/display/screens/screen_splash.c \
../src/display/screens/screen_warning.c \
../src/display/screens/styles.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/screens/notification_bar.d \
./src/display/screens/screen.d \
./src/display/screens/screen_home.d \
./src/display/screens/screen_settings.d \
./src/display/screens/screen_splash.d \
./src/display/screens/screen_warning.d \
./src/display/screens/styles.d 

OBJS += \
./src/display/screens/notification_bar.o \
./src/display/screens/screen.o \
./src/display/screens/screen_home.o \
./src/display/screens/screen_settings.o \
./src/display/screens/screen_splash.o \
./src/display/screens/screen_warning.o \
./src/display/screens/styles.o 

MAP += \
rn_ra8_fsd.map 


# Each subdirectory must supply rules for building sources it contributes
src/display/screens/%.o: ../src/display/screens/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/timers" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/screens" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/dsi" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/lvgl" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/src/display/touch" -I"." -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/api" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/inc/instances" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/fsp/src/rm_freertos_port" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_gen" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/fsp_cfg" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra_cfg/aws" -I"C:/Users/Bhura Malik/Desktop/lvgl-test-project/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

