module clk2prox(clk, cp, prox);
	input clk;
	input[18-1:0] cp;
	output reg prox;

	reg [18-1:0]counter;
	initial begin
		prox = 0;
		counter = 0;
	end

	always @(posedge clk) begin
		prox = 0;
		counter = counter+1;
		if(counter >= cp)begin
			counter = 0;
			prox = 1;
		end
	end
endmodule
