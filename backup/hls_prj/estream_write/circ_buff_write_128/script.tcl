############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project estream_write
set_top circ_buff_write_128
add_files estream_write/c_src/circ_buff_write_128.cpp
add_files estream_write/c_src/circ_buff_write_many_128.cpp
open_solution "circ_buff_write_128"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 300MHz -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_export -format ip_catalog -rtl verilog -vivado_phys_opt place -vivado_report_level 0
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
config_bind -effort medium
set_clock_uncertainty 12.5%
#source "./estream_write/circ_buff_write_128/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
