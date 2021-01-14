# Estream Demo
## Description 
This is a tutorial to show how to use software (SW) stream links and hardware
(HW) stream links to connect 4 ARM cores and FPGA fabrics together. The 4 ARMs
can communicate with each other by SW streams. The Fabrics can ARMs can communicate
with each other by HW streams. For the demo, the data sent by core0 will go through
core1, core2, core3 and final get back to core0, as figure below. 

![](/images/estream.png)

By using SW streams, core0 will final get data_send*2*2-2. If we use HW streams,
the 'my_design' in the FPGA fabrics will add extra 10 to the data. By using HW 
streams, the core0 will finally get data_send*2*2-2+10.
 

## Tutorial
1. The demo is developed with vivado 2018.3 and Xilinx SDK 2018.3. You can install
[vivado 2018.3](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html).
2. The out-of-box vivado does not include u96-v2 board definition. You can download
the bdf from [here](https://github.com/Avnet/bdf). Copy **./ultra96v2** to **\<Vivado directory\>/Vivado/2018.3/data/boards/board_files/**.
3. In the terminal source your settings.sh file according to your vivado installation
location.
````c
source /opt/Xilinx/Vivado/2018.3/settings64.sh
4. In the home directory of this repo, type **make**. The final SDK project could
be found under **estream4fccm2021/workspace/vivado_prj/u96_demo/u96_demo.sdk**.
5. Launch Xilinx SDK by type **xsdk**. If you open a new terminal, you should
source the settings64.sh file again as step 3.
6. Set the SDK workspace to **\<your local machine\>/workspace/vivado_prj/u96_demo/u96_demo.sdk**.
7. Build the 4 SDK projects mannually for the 4 ARM cores.
~[](images/build.jpg)


