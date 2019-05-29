`include "clk2prox.v"
module tb;
	reg clk;
	wire saida;
	reg[17:0] cp;

	clk2prox instancia(clk, cp, saida);

	initial begin
		cp = 18'd113636;
		$dumpfile("log.vcd");
		$dumpvars;
		clk = 0;
		#227400 $finish;
	end

	always begin
		#1 clk = ~clk;
	end

endmodule
