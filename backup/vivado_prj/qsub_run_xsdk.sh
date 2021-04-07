#!/bin/bash -e
source $1
rm -rf ./u96_demo/u96_demo.sdk
mkdir ./u96_demo/u96_demo.sdk                                              
cp ./u96_demo/u96_demo.runs/impl_1/design_1_wrapper.sysdef ./u96_demo/u96_demo.sdk/design_1_wrapper.hdf
xsdk -batch -source ./project_xsdk_core0.tcl
xsdk -batch -source ./project_xsdk_core1.tcl
xsdk -batch -source ./project_xsdk_core2.tcl
xsdk -batch -source ./project_xsdk_core3.tcl
