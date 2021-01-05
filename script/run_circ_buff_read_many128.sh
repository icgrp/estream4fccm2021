#!/bin/bash -e
source /opt/Xilinx/SDx/2018.2/settings64.sh
vivado_hls -f ./estream_read/circ_buff_read_many128/script.tcl

