module rom_sample
#(
	parameter SAMPLE_WIDTH = 8,
	parameter SAMPLE_SIZE = 512,
	parameter START_ADDR = 0,
	parameter END_ADDR = SAMPLE_SIZE
)
(
	input clk,
	input [7:0]play, notas,
	output [SAMPLE_WIDTH-1:0]data
);

	reg [7:0]addr[0:7];
	reg [SAMPLE_WIDTH-1:0]rom[0:SAMPLE_SIZE-1];
	
	assign data = rom[addr[0]] + rom[addr[1]] + rom[addr[2]] + rom[addr[3]] + rom[addr[4]] + rom[addr[5]] + rom[addr[6]] + rom[addr[7]];
	
	initial begin
		$readmemh("samples_hex.mem", rom);//, [START_ADDR], [END_ADDR]);
	end

	always @(posedge notas[0]) begin
		if(play[0])
			addr[0] = addr[0] + 8'd1;
		else
			addr[0] = 0;
	end
	
	always @(posedge notas[1]) begin
		if(play[1])
			addr[1] = addr[1] + 8'd1;
		else
			addr[1] = 0;
	end
	
	always @(posedge notas[2]) begin
		if(play[2])
			addr[2] = addr[2] + 8'd1;
		else
			addr[2] = 0;
	end
	
	always @(posedge notas[3]) begin
		if(play[3])
			addr[3] = addr[3] + 8'd1;
		else
			addr[3] = 0;
	end
	
	always @(posedge notas[4]) begin
		if(play[4])
			addr[4] = addr[4] + 8'd1;
		else
			addr[4] = 0;
	end
	
	always @(posedge notas[5]) begin
		if(play[5])
			addr[5] = addr[5] + 8'd1;
		else
			addr[5] = 0;
	end
	
	always @(posedge notas[6]) begin
		if(play[6])
			addr[6] = addr[6] + 8'd1;
		else
			addr[6] = 0;
	end
	
	always @(posedge notas[7]) begin
		if(play[7])
			addr[7] = addr[7] + 8'd1;
		else
			addr[7] = 0;
	end
	
endmodule
