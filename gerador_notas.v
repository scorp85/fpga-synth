module gerador_notas
(
	input clk,
	output reg [7:0]notas //nota[0] = do, nota[1] = re...
);
	parameter CLOCK = 50000000;
	parameter SAMPLE_SIZE = 512;
	parameter integer DO 	= CLOCK/(261.6256 * SAMPLE_SIZE);
	parameter integer RE 	= CLOCK/(293.6648 * SAMPLE_SIZE);
	parameter integer MI 	= CLOCK/(329.6276 * SAMPLE_SIZE);
	parameter integer FA 	= CLOCK/(349.2282 * SAMPLE_SIZE);
	parameter integer SOL 	= CLOCK/(391.9954 * SAMPLE_SIZE);
	parameter integer LA 	= CLOCK/(440.0000 * SAMPLE_SIZE);
	parameter integer SI 	= CLOCK/(493.8833 * SAMPLE_SIZE);
	parameter integer DO_5	= CLOCK/(523.2511 * SAMPLE_SIZE);

	reg [12:0]count_0, count_1, count_2, count_3, count_4, count_5, count_6, count_7;

	always @(posedge clk) begin
		count_0 = count_0 + 13'd1;
		count_1 = count_1 + 13'd1;
		count_2 = count_2 + 13'd1;
		count_3 = count_3 + 13'd1;
		count_4 = count_4 + 13'd1;
		count_5 = count_5 + 13'd1;
		count_6 = count_6 + 13'd1;
		count_7 = count_7 + 13'd1;
		
		if(count_0 >= DO)begin
			count_0 = 0;
			notas[0] = ~notas[0];
		end
		if(count_1 >= RE)begin
			count_1 = 0;
			notas[1] = ~notas[1];
		end
		if(count_2 >= MI)begin
			count_2 = 0;
			notas[2] = ~notas[2];
		end
		if(count_3 >= FA)begin
			count_3 = 0;
			notas[3] = ~notas[3];
		end
		if(count_4 >= SOL)begin
			count_4 = 0;
			notas[4] = ~notas[4];
		end
		if(count_5 >= LA)begin
			count_5 = 0;
			notas[5] = ~notas[5];
		end
		if(count_6 >= SI)begin
			count_6 = 0;
			notas[6] = ~notas[6];
		end
		if(count_7 >= DO_5)begin
			count_7 = 0;
			notas[7] = ~notas[7];
		end		
	end

endmodule
