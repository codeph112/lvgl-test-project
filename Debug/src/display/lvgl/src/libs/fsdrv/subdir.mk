################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_esp_littlefs.cpp \
../src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_sd.cpp 

C_SRCS += \
../src/display/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../src/display/lvgl/src/libs/fsdrv/lv_fs_win32.c 

SREC += \
rn_ra8_fsd.srec 

C_DEPS += \
./src/display/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_win32.d 

OBJS += \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_esp_littlefs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_sd.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./src/display/lvgl/src/libs/fsdrv/lv_fs_win32.o 

MAP += \
rn_ra8_fsd.map 

CPP_DEPS += \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_esp_littlefs.d \
./src/display/lvgl/src/libs/fsdrv/lv_fs_arduino_sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/display/lvgl/src/libs/fsdrv/%.o: ../src/display/lvgl/src/libs/fsdrv/%.cpp
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"D:/DevOps/Renesas/rn_ra8_fsd/src" -I"." -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/api" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/instances" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/src/rm_freertos_port" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/tes/dave2d/inc" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_gen" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg/bsp" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/aws" -std=gnu++14 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"
src/display/lvgl/src/libs/fsdrv/%.o: ../src/display/lvgl/src/libs/fsdrv/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"D:/DevOps/Renesas/rn_ra8_fsd/src" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/dsi" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/lvgl" -I"D:/DevOps/Renesas/rn_ra8_fsd/src/display/touch" -I"." -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/api" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/inc/instances" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/fsp/src/rm_freertos_port" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/aws/FreeRTOS/FreeRTOS/Source/include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/arm/CMSIS_6/CMSIS/Core/Include" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_gen" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg/bsp" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/fsp_cfg" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra_cfg/aws" -I"D:/DevOps/Renesas/rn_ra8_fsd/ra/tes/dave2d/inc" -std=gnu17 -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

