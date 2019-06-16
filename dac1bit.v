module dac1bit
(
	input clk,
	input [15:0]data,
	output PWM_out
);

	reg [16:0] PWM_accumulator;
	
	always @(posedge clk) PWM_accumulator <= PWM_accumulator[15:0] + data;

	assign PWM_out = PWM_accumulator[16];

endmodule
