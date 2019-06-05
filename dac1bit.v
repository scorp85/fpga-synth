module dac1bit(clk, data, out);
	input clk;
	input [7:0] data;
	output out;
	reg [8:0] accumulator;

	initial begin
		accumulator = 0;
	end

	always @(posedge clk)
		accumulator <= accumulator[7:0] + data;

	assign out = accumulator[8];
endmodule
