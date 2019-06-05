module KeyboardTest(
  input		CLOCK_50, 
  input		PS2_DAT, // PS2 data line
  input		PS2_CLK, // PS2 clock line
  input		reset,
  output reg LED1,
  output reg LED2,
  output reg LED3,
  output reg LED4
  );
  
  wire [7:0]CODEWORD;
  wire TRIG_ARR;
  reg f0;
  
  initial begin
  f0 <= 0;
  LED1 <= 1;
  LED2 <= 1;
  end
  
  always @(posedge CLOCK_50)begin
	if (CODEWORD == 8'h1C)begin //A
		if(~f0) 	LED1 <= 0;
		else begin
			f0 <= 0;
			LED1 <= 1;
		end
	end
	if (CODEWORD == 8'h1B)begin //S
		if(~f0) 	LED2 <= 0;
		else begin
			f0 <= 0;
			LED2 <= 1;
		end
	end
	if (CODEWORD == 8'h23)begin //D
		if(~f0) 	LED3 <= 0;
		else begin
			f0 <= 0;
			LED3 <= 1;
		end
	end
	if (CODEWORD == 8'h2B)begin //F
		if(~f0) 	LED4 <= 0;
		else begin
			f0 <= 0;
			LED4 <= 1;
		end
	end
	if (CODEWORD == 8'hF0)begin
		f0 <= 1;
	end
  end
	
  
  Keyboard kbd(
	CLOCK_50,	//board clock
	PS2_CLK,	//keyboard clock and data signals
	PS2_DAT,
//	output reg scan_err,			//These can be used if the Keyboard module is used within a another module
//	output reg [10:0] scan_code,
//	output reg [3:0]COUNT,
	TRIG_ARR,
	CODEWORD
   );
  
endmodule

