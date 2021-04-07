################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

CC_SRCS += \
../src/kernel3.cc \
../src/main.cc 

CC_DEPS += \
./src/kernel3.d \
./src/main.d 

OBJS += \
./src/kernel3.o \
./src/main.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 g++ compiler'
	aarch64-none-elf-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../core3_bsp/psu_cortexa53_3/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


