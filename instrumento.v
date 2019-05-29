module instrumento(prox, play, saida);
	parameter SAMPLE_SIZE = 8;
	parameter RESOLUCAO = 8;

	input prox, play;
	reg [2:0] index;
	output reg[RESOLUCAO-1:0] saida;
	reg [RESOLUCAO-1:0] sample [SAMPLE_SIZE-1:0];

	initial begin

		sample[0] = 127;
		sample[1] = 219;
		sample[2] = 255;
		sample[3] = 215;
		sample[4] = 121;
		sample[5] = 31;
		sample[6] = 0;
		sample[7] = 45;

		saida = sample[0];
		index = 0;
	end

	always @(posedge prox)begin
		if(play) begin
			index = index+1;
			saida = sample[index];
		end else begin
			index = 0;
			saida = 0;
		end
	end
endmodule
