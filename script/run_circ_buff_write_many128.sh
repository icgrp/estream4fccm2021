#!/bin/bash -e
source /opt/Xilinx/SDx/2018.2/settings64.sh
vivado_hls -f ./estream_write/circ_buff_write_many128/script.tcl

