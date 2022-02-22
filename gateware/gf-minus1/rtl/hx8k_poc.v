module hx8k_poc (
	output wire [7:0] pmod,
	input wire clk12m,
	
	input wire SCK,
	input wire MCLK,
	input wire LRCLK,
	input wire SDATA,

	output wire out_clk,

	output wire pdm0_l,
	output wire pdm0_r,
	output wire pdm1_l,
	output wire pdm1_r
);

wire clk48m;
wire pll_locked; //TODO: Hold logic in reset until pll is locked.

hx8k_pll u_hx8k_pll(
	.clock_in(clk12m),
	.clock_out(clk48m),
	.locked(pll_locked)
);

reg sys_reset = 1'b0;
always @(posedge clk12m) begin
	sys_reset <= ~pll_locked;
end

i2s_placeholder u_i2s_rx (
	.sys_clk(clk12m),
	.SCK(SCK),
	.MCLK(MCLK),
	.LRCLK(LRCLK),
	.SDATA(SDATA),

	.m_axis_tdata_l(i2s_l_axis_tdata),
    .m_axis_tkeep_l(),
    .m_axis_tvalid_l(i2s_l_axis_tvalid),
    .m_axis_tready_l(i2s_l_axis_tready),
    .m_axis_tlast_l(i2s_l_axis_tlast),
    .m_axis_tid_l(),
    .m_axis_tdest_l(),
    .m_axis_tuser_l(i2s_l_axis_tuser),

	.m_axis_tdata_r(i2s_r_axis_tdata),
    .m_axis_tkeep_r(),
    .m_axis_tvalid_r(i2s_r_axis_tvalid),
    .m_axis_tready_r(i2s_r_axis_tready),
    .m_axis_tlast_r(i2s_r_axis_tlast),
    .m_axis_tid_r(),
    .m_axis_tdest_r(),
    .m_axis_tuser_r(i2s_r_axis_tuser)

);

axis_dac inst_axis_dac_l (
	.clk(clk48m),
	.rst(sys_reset),

	.s_axis_tdata(i2s_l_axis_tdata),
    .s_axis_tkeep(0),
    .s_axis_tvalid(i2s_l_axis_tvalid),
    .s_axis_tready(i2s_l_axis_tready),
    .s_axis_tlast(i2s_l_axis_tlast),
    .s_axis_tid(0),
    .s_axis_tdest(0),
    .s_axis_tuser(i2s_l_axis_tuser),

	.dac_out(pdm0_l)
);

axis_dac inst_axis_dac_r (
	.clk(clk48m),
	.rst(sys_reset),

	.s_axis_tdata(i2s_r_axis_tdata),
    .s_axis_tkeep(0),
    .s_axis_tvalid(i2s_r_axis_tvalid),
    .s_axis_tready(i2s_r_axis_tready),
    .s_axis_tlast(i2s_r_axis_tlast),
    .s_axis_tid(0),
    .s_axis_tdest(0),
    .s_axis_tuser(i2s_r_axis_tuser),

	.dac_out(pdm0_r)
);

endmodule
