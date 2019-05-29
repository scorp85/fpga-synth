`include "mapeamento_tecla_cp.v"
`include "instrumento.v"
`include "clk2prox.v"
module tb;
	reg clk;
	reg [10-1:0] teclas;  //assigned ao pino de entrada
	wire [10-1:0][18-1:0] cp;
	wire [10-1:0] prox;
	wire [10-1:0][8-1:0] saida;

	mapeamento_tecla_cp map(teclas, cp);
	clk2prox clk2prx[10-1:0] (clk, cp, prox);
	instrumento inst[10-1:0] (prox, teclas, saida);

	initial begin
		clk =0;
		$dumpfile("log.vcd");
		$dumpvars;
		teclas = 'b11111_11111;
		#1000000 $finish;
	end

	always begin
		//#1 teclas <= teclas << 1;
		#1 clk = ~clk;
		//if(teclas == 0) teclas <= 1;
	end
endmodule
