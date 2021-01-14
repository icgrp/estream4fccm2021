# Estream Demo
## Description 
This is a tutorial to show how to use software (SW) stream links and hardware
(HW) stream links to connect 4 ARM cores and FPGA fabrics together. The 4 ARMs
can communicate with each other by SW streams. The Fabrics can ARMs can communicate
with each other by HW streams. For the demo, the data sent by core0 will go through
core1, core2, core3 and final get back to core0, as figure below. 


![](/images/estream.png)


The demo is
developed with vivado 2018.3 and Xilinx SDK 2018.3. 
