#!/usr/bin/tclsh
set core_num "0"
set vivado_prj "./prj/floorplan_static.sdk"
set project_name "dma"
set example_prj "Empty Application"
set language "C++"
set hdf_name "floorplan_static_wrapper"
set core_name "psu_cortexa53_"
set_workspace ./${vivado_prj}



create_project -type hw -name ${hdf_name}_hw_platform_0 -hwspec ./${vivado_prj}/${hdf_name}.hdf
create_project -type bsp -name ${project_name}${core_num}_bsp -hwproject ${hdf_name}_hw_platform_0 -proc ${core_name}${core_num} -os standalone
create_project -type app -name ${project_name}${core_num} -hwproject floorplan_static_wrapper_hw_platform_0 -proc ${core_name}${core_num} -os standalone -lang ${language} -app {Empty Application} -bsp ${project_name}${core_num}_bsp
file delete -force ./${vivado_prj}/${project_name}${core_num}/src/main.cc
importsources -name ${project_name}${core_num} -path ../../input_files/hls_src/rendering/sdk 
file copy -force ../F006_sdk/config_rendering.cc ./${vivado_prj}/${project_name}${core_num}/src/
file copy -force ../F006_sdk/config_rendering.h ./${vivado_prj}/${project_name}${core_num}/src/

#build -type bsp -name ${project_name}${core_num}_bsp
#build -type app -name ${project_name}${core_num}
#clean -type bsp -name ${project_name}${core_num}_bsp
#clean -type all
#build -type all
