`include "main.v"
module tb;
	reg clk, button;
	wire saida;

	main main(clk,button, saida);

	initial begin
		button = 1;
		clk = 0;
		$dumpfile("log.vcd");
		$dumpvars;
		#500 button = 0;
		#1000000 $finish;
	end

	always begin
		//#1 teclas <= teclas << 1;
		#1 clk = ~clk;
		//if(teclas == 0) teclas <= 1;
	end
endmodule
