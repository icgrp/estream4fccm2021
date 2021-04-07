module handshake_cnt(
    input clk,
    input reset,
    input [31:0] cnt_limit,
    input s_axis_tvalid,
    output s_axis_tready,
    input [63:0] s_axis_tdata,
    output m_axis_tvalid,
    input m_axis_tready,
    output [63:0] m_axis_tdata,
    output reg [31:0] cycle_cnt,
    output reg [31:0] data_cnt
    );

    reg din_cnt;

    //assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tvalid = din_cnt>0 ? 1 : 0;
    
    
    assign m_axis_tdata  = s_axis_tdata;
    
    //assign s_axis_tready = m_axis_tready;
    assign s_axis_tready = 1'b1;
    

    always@(posedge clk) begin
      if(reset) begin
        din_cnt <= 0;
      end else if(s_axis_tvalid&&s_axis_tready) begin
        din_cnt <= din_cnt + 1;
      end else begin
        din_cnt <= din_cnt;
      end
    end

    
    
    always@(posedge clk) begin
      if(reset) begin
        data_cnt <= 0;
      end else if(m_axis_tvalid&&m_axis_tready) begin
        data_cnt <= data_cnt + 1;
      end else begin
        data_cnt <= data_cnt;
      end
    end
    

    always@(posedge clk) begin
      if(reset) begin
        cycle_cnt <= 0;
      end else if(data_cnt > 0 && data_cnt < cnt_limit) begin
        cycle_cnt <= cycle_cnt + 1;
      end else begin
        cycle_cnt <= cycle_cnt;
      end
    end

endmodule


