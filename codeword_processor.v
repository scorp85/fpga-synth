module codeword_processor
(
	input CLOCK_50,
	input [7:0]CODEWORD,
	output reg [7:0]teclas
);

	reg f0;
	initial begin
		f0 = 0;
		teclas = 8'h0;
	end
	always @(posedge CLOCK_50)begin
		if (CODEWORD == 8'h1C)begin //A
			if(~f0)
				teclas[0] <= 1;
			else begin
				f0 <= 0;
				teclas[0] <= 0;
			end
		end
		if (CODEWORD == 8'h1B)begin //S
			if(~f0)
				teclas[1] <= 1;
			else begin
				f0 <= 0;
				teclas[1] <= 0;
			end
		end
		if (CODEWORD == 8'h23)begin //D
			if(~f0)
				teclas[2] <= 1;
			else begin
				f0 <= 0;
				teclas[2] <= 0;
			end
		end
		if (CODEWORD == 8'h2B)begin //F
			if(~f0)
				teclas[3] <= 1;
			else begin
				f0 <= 0;
				teclas[3] <= 0;
			end
		end
		if (CODEWORD == 8'h34)begin //G
			if(~f0)
				teclas[4] <= 1;
			else begin
				f0 <= 0;
				teclas[4] <= 0;
			end
		end
		if (CODEWORD == 8'h33)begin //H
			if(~f0)
				teclas[5] <= 1;
			else begin
				f0 <= 0;
				teclas[5] <= 0;
			end
		end
		if (CODEWORD == 8'h3B)begin //J
			if(~f0)
				teclas[6] <= 1;
			else begin
				f0 <= 0;
				teclas[6] <= 0;
			end
		end
		if (CODEWORD == 8'h42)begin //K
			if(~f0)
				teclas[7] <= 1;
			else begin
				f0 <= 0;
				teclas[7] <= 0;
			end
		end
		if (CODEWORD == 8'hF0)
			f0 <= 1;
	end
endmodule
