module i2s_placeholder (
	input wire sys_clk,

	input wire SCK,
	input wire MCLK,
	input wire LRCLK,
	input wire SDATA,

	output wire [7:0] m_axis_tdata_l,
    output wire m_axis_tkeep_l,
    output wire m_axis_tvalid_l,
    output wire m_axis_tlast_l,
    output wire m_axis_tid_l,
    output wire m_axis_tdest_l,
    output wire m_axis_tuser_l,
    input wire m_axis_tready_l,

	output wire [7:0] m_axis_tdata_r,
    output wire m_axis_tkeep_r,
    output wire m_axis_tvalid_r,
    output wire m_axis_tlast_r,
    output wire m_axis_tid_r,
    output wire m_axis_tdest_r,
    output wire m_axis_tuser_r,
    input wire m_axis_tready_r

);
reg [7:0] l_data = 8'd1;
reg [7:0] r_data = 8'd255;

reg [7:0] divider_48k = 8'd0;
reg sample_tick = 1'b0;

assign m_axis_tdata_l = l_data;
assign m_axis_tdata_r = r_data;

assign m_axis_tkeep_l = 1'b0;
assign m_axis_tvalid_l = sample_tick;
assign m_axis_tlast_l = 1'b0;
assign m_axis_tuser_l = 1'b0;
assign m_axis_tid_l = 1'b0;
assign m_axis_tdest_l = 1'b0;

assign m_axis_tkeep_r = 1'b0;
assign m_axis_tvalid_r = sample_tick;
assign m_axis_tlast_r = 1'b0;
assign m_axis_tuser_r = 1'b0;
assign m_axis_tid_r = 1'b0;
assign m_axis_tdest_r = 1'b0;

always @(posedge sys_clk) begin
	sample_tick <= 1'b0;
	divider_48k <= divider_48k + 8'd1;
	if (divider_48k == 8'd249) begin
		sample_tick <= 1'b1;
		divider_48k <= 8'd0;
	end
end
always @(posedge sys_clk) begin
	l_data <= l_data + m_axis_tready_l;
	r_data <= r_data - m_axis_tready_r;
end

endmodule
