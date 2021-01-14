module my_design(
    input [31:0] s_axis_tdata,
    output s_axis_tready,
    input s_axis_tvalid,
    output [31:0] m_axis_tdata,
    input m_axis_tready,
    output m_axis_tvalid
    );
    
    
    assign m_axis_tdata = s_axis_tdata+10;
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = m_axis_tready;
    
endmodule
