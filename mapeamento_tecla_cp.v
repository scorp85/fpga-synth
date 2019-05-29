module mapeamento_tecla_cp(teclas, cp);
	parameter NR_TECLAS = 10;

	input wire [NR_TECLAS-1:0] teclas;
	output [17:0] cp ;

	assign cp =
		(teclas == 'd1)? 'd143172:
		(teclas == 'd2)? 'd135139:
		(teclas == 'd4)? 'd127551:
		(teclas == 'd8)? 'd120394:
		(teclas == 'd16)? 'd113636:
		(teclas == 'd32)? 'd107262:
		(teclas == 'd64)? 'd101239:
		(teclas == 'd128)? 'd095557:
		(teclas == 'd256)? 'd090192: 'd085131;
endmodule
