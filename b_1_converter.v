module b_1_converter(hs, n);
	input [4:0] hs;
	output [3:0] n;

	// fill in your implementation below
wire [3:0] temp;

// 2-level AND-OR circuit
assign temp[0] = ((~hs[4])&(~hs[3])&(~hs[2])&(~hs[1])&hs[0])|((~hs[4])&(~hs[3])&hs[2]&hs[1]&hs[0])|(hs[4]&(~hs[3])&(~hs[2])&(~hs[1])&(~hs[0]))|(hs[4]&hs[3]&hs[2]&(~hs[1])&(~hs[0]))|(hs[4]&hs[3]&hs[2]&hs[1]&hs[0]); // first bit
assign temp[1] = ((~hs[4])&(~hs[3])&hs[1]&hs[0])|(hs[4]&hs[3]&hs[2]&(~hs[0]))|((~hs[4])&(~hs[3])&(~hs[2])&(~hs[1])&(~hs[0])); // second bit
assign temp[2] = ((~hs[4])&hs[3]&hs[2]&hs[1]&hs[0])|(hs[4]&hs[3]&hs[2]&hs[1])|(hs[4]&hs[3]&hs[2]&(~hs[0])); // third bit
assign temp[3] = (hs[4]&(~hs[2])&(~hs[1])&(~hs[0]))|((~hs[4])&(~hs[3])&(~hs[2])&(~hs[1])&(~hs[0])); // forth bit

assign n = temp[3:0]; // put the total output after combine the each bits

endmodule
