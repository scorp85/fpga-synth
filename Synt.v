module Synt
(
	input clk,
	input PS2_DAT,
	input PS2_CLK,
	output out0,
	output out1,
	output out2,
	output out3,
	output out4,
	output out5,
	output out6,
	output out7
);
	
	wire [7:0]notas, teclas;
	wire [7:0]som;
	
	assign out0 = som[0];
	assign out1 = som[7];
	assign out2 = som[5];
	assign out3 = som[4];
	assign out4 = som[3];
	assign out5 = som[2];
	assign out6 = som[1];
	assign out7 = som[0];
	
	gerador_notas gn(clk, notas);
	rom_sample sample(clk, teclas, notas, som);
	
	wire [7:0]CODEWORD;
	Keyboard kbd(clk, PS2_CLK, PS2_DAT, CODEWORD);
	codeword_processor cwp(clk, CODEWORD, teclas);
	
endmodule
