module top (
	input wire [7:0] pmod,
	input wire clk48m,

	input wire mii_grxck,
	input wire [3:0] mii_grx,
	input wire mii_grdv,
	input wire mii_grxer,
	input wire mii_gcrs,

	output wire mii_gtxck,
	output wire [3:0] mii_gtx,
	output wire mii_gten,
	output wire mii_gtxer,
	output wire mii_gcol,

	inout wire mii_gmdio,
	inout wire mii_gmdc,

	output wire pdm0_l,
	output wire pdm0_r,
	output wire pdm1_l,
	output wire pdm1_r

);

reg dummy_toggle;

assign pdm0_l = dummy_toggle;
always @(posedge clk48) begin
	dummy_toggle <= ~dummy_toggle;
	if (mii_gcrs) begin
		dummy_toggle <= 1'b0;
	end
end

endmodule
