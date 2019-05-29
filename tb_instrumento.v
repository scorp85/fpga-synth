`include "instrumento.v"
module tb;
	reg clk, ativado;
	wire[7:0] saida;

	instrumento ins(clk, ativado, saida);

	initial begin
		$dumpfile("log.vcd");
		$dumpvars;
		clk = 0;
		ativado = 1;
		#50 ativado = 0;
		#100 $finish;
	end

	always begin
		#1 clk = ~clk;
	end

endmodule
