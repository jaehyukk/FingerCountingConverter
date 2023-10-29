module top(cw, result);
	input [8:0] cw;
	output [3:0] result;

	// fill in your implementation below
wire [4:0] correct;
wire [3:0] result;

a_hamdec hamdec (.cw(cw), .hs(correct)); // module instantiation
b_1_converter converter1 (.hs(correct), .n(result)); 

endmodule
