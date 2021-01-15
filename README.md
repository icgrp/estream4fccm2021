# Estream Demo
## Description 
This is a tutorial to show how to use software (SW) stream links and hardware
(HW) stream links to connect 4 ARM cores and FPGA fabrics together. The 4 ARMs
can communicate with each other by SW streams. The FPGA fabrics and ARMs can communicate
with each other by HW streams. For this demo, the data sent by core0 will go through
core1, core2, core3 and final get back to core0, as figure below. 

![](/images/estream.png)

By using SW streams, core0 will final get data_send\*2\*2-2. If we use HW streams,
the 'my_design' in the FPGA fabrics will add extra 10 to the data. By using HW 
streams, the core0 will finally get data_send\*2\*2-2+10.
 

## Tutorial 1
1. The demo is developed with vivado 2018.3 and Xilinx SDK 2018.3. You can install
[vivado 2018.3](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html).
2. The out-of-box vivado does not include u96-v2 board definition. You can download
the bdf from [here](https://github.com/Avnet/bdf). Copy **./ultra96v2** to **\<Vivado directory\>/Vivado/2018.3/data/boards/board_files/**.
3. In the terminal source your settings.sh file according to your vivado installation
location.
```c
source /opt/Xilinx/Vivado/2018.3/settings64.sh
```
4. In the home directory of this repo, type **make**. The final SDK project could
be found under **estream4fccm2021/workspace/vivado_prj/u96_demo/u96_demo.sdk**.
5. Launch Xilinx SDK by type **xsdk**. If you open a new terminal, you should
source the settings64.sh file again as step 3.
6. Set the SDK workspace to **estream4fccm2021/workspace/vivado_prj/u96_demo/u96_demo.sdk**.
7. Build the 4 SDK projects manually for the 4 ARM cores.
  * From Welcome Stream: Create Application Project (any name)
  * File>Import Projects From File System
    *  and point to **estream4fccm2021/workspace/vivado_prj/u96_demo/u96_demo.sdk**.
  * Project > Build All	

![Build Image](images/build.jpg)

8. Before running the 4 cores, we should connect the UART to the board. Click the green
plus sign in **SDK Terminal** console. 

![UART Selection](images/UART.png)

Select the right UART port.

![](/images/PORT.jpg)

9. Try to launch on hardware once to let SDK automatically create a run configuration.
We can modify it next.

![](/images/run_config.jpg)

10. Click Run->Run Configurations. Make sure you check **Reset entire system**, 
**Reset APU**, and **Program FPGA**.
![](/images/download.jpg)

10. Select **Application** tab, and select the elf for 4 cores.
![](/images/elf.jpg)

11. Click **Run**. You should see the results in **SDK Terminal** console.

![](/images/results.png)

## Tutorial 2
The Tutorial 1 can show you how to run the software ARM cores. This tutorial will
show you how to modify the FPGA Fabrics.
1. Open the vivado project under **estream_fccm2021/estream4fccm2021/workspace/vivado_prj/u96_demo**.

![](/images/my_design.png)

2. You can see **my_design** moudle in the block diagram. Open the corresponding
verilog file, you can see the data is increased by 10. You can modify the verilog
by adding 100.

![](/images/add10.png)

3. Recompile the vivado vivado project. You may have some frequency attributes erros.
Double click the stream port for **my_design** module, and change the frequency 
attributes to 300000000.

![](/images/300M.png)

4. After compilation, export the hdf file as below.

![](/images/export.jpg)

Check including bitstream.

![](/images/bit.png)


5. Go back to SDK project, and update the hdf files by clicking OK.

![](/images/update.png)


6. Recompile every SDK projects for the 4 cores and launch the hardware debugging
as step 10 in tutorial 1. You should see the core0 will final get data_send\*2\*2-2+100.

![](/images/add100.png)
























