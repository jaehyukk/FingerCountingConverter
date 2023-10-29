`timescale 1ns/1ps
module tb_hamdec();
	reg [8:0] cw;
	wire [4:0] hs;

	a_hamdec hammind_decoder1(cw, hs);

	initial begin
		cw = 9'b000001000;	// information = 00000 , bit position of 1-bit error = 4
		#10
		cw = 9'b001000111;	// information = 00001 , bit position of 1-bit error = 7
		#10
		cw = 9'b100011001;	// information = 00010 , bit position of 1-bit error = 9
		#10
		cw = 9'b000011100;	// information = 00011 , bit position of 1-bit error = 2
		#10
		cw = 9'b010101010;	// information = 00100 , bit position of 1-bit error = 8
		#10
		cw = 9'b000001101;	// information = 00101 , bit position of 1-bit error = 6
		#10
		cw = 9'b000111011;	// information = 00110 , bit position of 1-bit error = 4
		#10
		cw = 9'b000110101;	// information = 00111 , bit position of 1-bit error = 1
		#10
		cw = 9'b001011011;	// information = 01000 , bit position of 1-bit error = 5
		#10
		cw = 9'b001001101;	// information = 01001 , bit position of 1-bit error = 1
		#10
		cw = 9'b000010010;	// information = 01010 , bit position of 1-bit error = 7
		#10
		cw = 9'b001110101;	// information = 01011 , bit position of 1-bit error = 6
		#10
		cw = 9'b001100101;	// information = 01100 , bit position of 1-bit error = 3
		#10
		cw = 9'b101100110;	// information = 01101 , bit position of 1-bit error = 9
		#10
		cw = 9'b001111100;	// information = 01110 , bit position of 1-bit error = 3
		#10
		cw = 9'b001011111;	// information = 01111 , bit position of 1-bit error = 6
		#10
		cw = 9'b110000011;	// information = 10000 , bit position of 1-bit error = 2
		#10
		cw = 9'b110100110;	// information = 10001 , bit position of 1-bit error = 6
		#10
		cw = 9'b111011000;	// information = 10010 , bit position of 1-bit error = 7
		#10
		cw = 9'b110011110;	// information = 10011 , bit position of 1-bit error = 1
		#10
		cw = 9'b110101111;	// information = 10100 , bit position of 1-bit error = 3
		#10
		cw = 9'b110001100;	// information = 10101 , bit position of 1-bit error = 6
		#10
		cw = 9'b010110010;	// information = 10110 , bit position of 1-bit error = 9
		#10
		cw = 9'b110110001;	// information = 10111 , bit position of 1-bit error = 3
		#10
		cw = 9'b111000010;	// information = 11000 , bit position of 1-bit error = 4
		#10
		cw = 9'b011001101;	// information = 11001 , bit position of 1-bit error = 9
		#10
		cw = 9'b101010011;	// information = 11010 , bit position of 1-bit error = 8
		#10
		cw = 9'b111010101;	// information = 11011 , bit position of 1-bit error = 1
		#10
		cw = 9'b111110000;	// information = 11100 , bit position of 1-bit error = 5
		#10
		cw = 9'b011100111;	// information = 11101 , bit position of 1-bit error = 9
		#10
		cw = 9'b011111001;	// information = 11110 , bit position of 1-bit error = 9
		#10
		cw = 9'b101111110;	// information = 11111 , bit position of 1-bit error = 8
	end

endmodule
