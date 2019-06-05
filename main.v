`include "mapeamento_tecla_cp.v"
`include "instrumento.v"
`include "clk2prox.v"
`include "dac1bit.v"

module main(clk, button, out);
	input clk, button;
	output out;
	reg [10-1:0] teclas;  //assigned ao pino de entrada
	wire [10-1:0] prox;
	wire [10-1:0][18-1:0] cp;
	wire [10-1:0][8-1:0] saida;

	mapeamento_tecla_cp map(teclas, cp);
	clk2prox clk2prx[10-1:0] (clk, cp, prox);
	instrumento inst[10-1:0] (prox, teclas, saida);

	dac1bit dac(clk, saida[9], out);
	//substituir numero paramudar instrumento a ser testado

	initial begin
		teclas = 'b1111111111;
	end

endmodule
