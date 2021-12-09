//
// Source: https://github.com/hamsternz/second_order_sigma_delta_DAC
`timescale 1ns / 1ps
module so_pdm #(
parameter INPUT_WIDTH = 8
)(
  input wire i_clk,
  input wire i_res,
  input wire i_ce,
  input wire [INPUT_WIDTH-1:0] i_func, 
  output wire o_DAC
);

  reg this_bit;
 
  reg [(INPUT_WIDTH):0] DAC_acc_1st;
  reg [(INPUT_WIDTH):0] DAC_acc_2nd;
  reg [(INPUT_WIDTH):0] i_func_extended;
   
  assign o_DAC = this_bit;

  always @(*)
     i_func_extended = {i_func[INPUT_WIDTH-1],i_func};
    
  always @(posedge i_clk) begin
	  if(i_ce == 1'b1) begin
		  if(this_bit == 1'b1) begin
			  DAC_acc_1st = DAC_acc_1st + i_func_extended - (2**(INPUT_WIDTH-1));
			  DAC_acc_2nd = DAC_acc_2nd + DAC_acc_1st     - (2**(INPUT_WIDTH-1));
		  end
		  else begin
			  DAC_acc_1st = DAC_acc_1st + i_func_extended + (2**(INPUT_WIDTH-1));
			  DAC_acc_2nd = DAC_acc_2nd + DAC_acc_1st + (2**(INPUT_WIDTH-1));
		  end
		  // When the high bit is set (a negative value) we need to output a 0 and when it is clear we need to output a 1.
		  this_bit = ~DAC_acc_2nd[INPUT_WIDTH];
	  end
	  if (i_res==1'b1) begin
		  DAC_acc_1st<={INPUT_WIDTH{1'b0}};
		  DAC_acc_2nd<={INPUT_WIDTH{1'b0}};
		  this_bit = 1'b0;
	  end
  end
endmodule
