`include "mapeamento_tecla_cp.v"
module tb;
	reg [10-1:0] teclas;
	wire [10-1:0][18-1:0] cp;

	mapeamento_tecla_cp ins(teclas, cp);

	initial begin
		$dumpfile("log.vcd");
		$dumpvars;
		teclas = 1;
		#100 $finish;
	end

	always begin
		#1 teclas <= teclas << 1;
		if(teclas == 512) teclas <= 1;
	end
endmodule
