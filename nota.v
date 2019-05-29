`include "sample.v"
module nota(ativado, clk, saida);
	input ativado, clk;
	output reg[7:0] saida;

	reg[17:0] counter;
	reg[2:0] index;
	wire[7:0] saidaSample;
	parameter CP = 'd113636;
	//Instanciar sample
	sample s(index, clk, saidaSample);

	initial  begin
		counter = 0;
		index = 0;
	end

	always @(posedge clk & ativado) begin
		counter  = counter + 1;
		//index = floor(counter*resolucao/cp);
		//saida = s[index]
		if(counter == cp)
			counter = 0
	end
endmodule
