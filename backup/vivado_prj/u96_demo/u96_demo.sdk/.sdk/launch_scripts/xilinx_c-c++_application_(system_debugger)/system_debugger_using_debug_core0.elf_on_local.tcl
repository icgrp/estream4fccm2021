connect -url tcp:127.0.0.1:3121
source /opt/Xilinx/SDK/2018.3/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
reset_apu
targets -set -nocase -filter {name =~"RPU*" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
clear_rpu_reset
targets -set -filter {jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A" && level==0} -index 0
fpga -file /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
loadhw -hw /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
source /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/design_1_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
rst -processor
dow /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/core0/Debug/core0.elf
targets -set -nocase -filter {name =~"*A53*1" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
rst -processor
dow /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/core1/Debug/core1.elf
targets -set -nocase -filter {name =~"*A53*2" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
rst -processor
dow /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/core2/Debug/core2.elf
targets -set -nocase -filter {name =~"*A53*3" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
rst -processor
dow /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.sdk/core3/Debug/core3.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
con
targets -set -nocase -filter {name =~"*A53*1" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
con
targets -set -nocase -filter {name =~"*A53*2" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
con
targets -set -nocase -filter {name =~"*A53*3" && jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A"} -index 1
con
