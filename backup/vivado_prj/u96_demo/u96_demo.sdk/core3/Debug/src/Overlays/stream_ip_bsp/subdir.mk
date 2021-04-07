################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Overlays/stream_ip_bsp/bsp_jump_table.c 

OBJS += \
./src/Overlays/stream_ip_bsp/bsp_jump_table.o 

C_DEPS += \
./src/Overlays/stream_ip_bsp/bsp_jump_table.d 


# Each subdirectory must supply rules for building sources it contributes
src/Overlays/stream_ip_bsp/%.o: ../src/Overlays/stream_ip_bsp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 g++ compiler'
	aarch64-none-elf-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../core3_bsp/psu_cortexa53_3/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


