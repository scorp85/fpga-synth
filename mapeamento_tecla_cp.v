module mapeamento_tecla_cp(teclas, cp); //cp é um vetor de words de 18 bits
	//supoe que apenas um tecla estara pressionada em um dado momento,
	//porém isso é extremamente limitado
	parameter NR_TECLAS = 10;
	reg [4:0] i;
	input wire [NR_TECLAS-1:0] teclas;
	reg [NR_TECLAS-1:0][17:0] lut ;
	output reg [NR_TECLAS-1:0][17:0] cp ;
	//cp[0] é uma word de 18bits

	initial begin
		cp = -1;
		lut[0] = 'd143172;
		lut[1] = 'd135139;
		lut[2] = 'd127551;
		lut[3] = 'd120394;
		lut[4] = 'd113636;
		lut[5] = 'd107262;
		lut[6] = 'd101239;
		lut[7] = 'd095557;
		lut[8] = 'd090192;
		lut[9] = 'd085131;
	end
	always@(*) begin
		for(i = 0; i < 10; ++i) begin
			if(teclas[i]) cp[i] = lut[i];
			else cp[i] = -1;	 //esse caso nunca será relevante pois 'instrumento estará desativado;'
		end
	end
endmodule
