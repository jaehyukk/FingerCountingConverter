module b_2_converter(hs, n);
	input [4:0] hs;
	output [3:0] n;

	// fill in your implementation below
wire [3:0] n;
reg [3:0] state; // store the 4-bit unsigned binary number

always @ (hs) begin
case(hs) // convert hand sign to 4-bit unsigned binary number
5'b00001: state = 4'd1;
5'b00011: state = 4'd2;
5'b00111: state = 4'd3;
5'b01111: state = 4'd4;
5'b11111: state = 4'd5;
5'b11110: state = 4'd6;5'b11100: state = 4'd7;
5'b11000: state = 4'd8;
5'b10000: state = 4'd9;
5'b00000: state = 4'd10;
default: state = 4'd0; // exception
endcase
end

assign n = state[3:0]; // output the 4-bit unsigned binary number

endmodule
