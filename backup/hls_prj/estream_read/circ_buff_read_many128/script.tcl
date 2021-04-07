############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project estream_read
set_top circ_buff_read_128
add_files estream_read/c_src/circ_buff_read_many_128.cpp
add_files estream_read/c_src/circ_buff_read_128.cpp
open_solution "circ_buff_read_many128"
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 4 -name default
config_export -format ip_catalog -rtl verilog
#source "./estream_read/circ_buff_read_many128/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
