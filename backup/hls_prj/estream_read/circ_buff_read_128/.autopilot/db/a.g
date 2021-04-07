#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/hls_prj/estream_read/circ_buff_read_128/.autopilot/db/a.g.bc ${1+"$@"}
