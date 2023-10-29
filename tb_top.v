`timescale 1ns/1ps
module tb_top();
	reg [8:0] cw;
	wire [3:0] result;

	// fill in your implementation below
top top_test (cw, result); // Module Instantiation

initial begin // Test Case
		cw = 9'b001000111;	// information = 00001 , result = 0001
		#10
		cw = 9'b000011100;	// information = 00011 , result = 0010
		#10
		cw = 9'b000110101;	// information = 00111 , result = 0011
		#10
		cw = 9'b001011111;	// information = 01111 , result = 0100
		#10
		cw = 9'b101111110;	// information = 11111 , result = 0101
                #10
		cw = 9'b011111001;	// information = 11110 , result = 0110
		#10
		cw = 9'b111110000;	// information = 11100 , result = 0111
		#10
		cw = 9'b111000010;	// information = 11000 , result = 1000
		#10
		cw = 9'b110000011;	// information = 10000 , result = 1001
		#10
		cw = 9'b000001000;	// information = 00000 , result = 1010
		#10
                cw = 9'b011001101;	// information = 11001 , result = 0000
		#10
		cw = 9'b101010011;	// information = 11010 , result = 0000
		#10
		cw = 9'b111010101;	// information = 11011 , result = 0000

end

endmodule
