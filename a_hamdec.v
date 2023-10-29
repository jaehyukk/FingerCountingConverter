module a_hamdec(cw, hs); //Error correcting, Decoding -> 5 bit original hand sign
	input [8:0] cw;
	output [4:0] hs;

	// fill in your implementation below
reg [4:0] infor; // information bits
reg [3:0] par; // parity bits
reg [3:0] even_par; // put the compared bits using the even parity codes
reg [3:0] syndrome; // syndrome

always @ (*) begin
infor = { cw[8], cw[6:4], cw[2] }; // put information bits
par = { cw[7], cw[3], cw[1:0] }; // put parity bits

//(A xor B xor C xor D)
even_par[0] = infor[4]^infor[3]^infor[1]^infor[0]; // p1
//(A xor B)C'+(AB+A'B')C
even_par[1] = (infor[3]^infor[2])&(~infor[0])|(((infor[3]&infor[2])|((~infor[3])&(~infor[2])))&infor[0]); // p2
even_par[2] = (infor[3]^infor[2])&(~infor[1])|(((infor[3]&infor[2])|((~infor[3])&(~infor[2])))&infor[1]); // p3
even_par[3] = infor[4]; // p4

syndrome[0] = even_par[0]^par[0]; // syndrome code(A'B+AB'=A xor B)
syndrome[1] = even_par[1]^par[1];
syndrome[2] = even_par[2]^par[2]; 
syndrome[3] = even_par[3]^par[3]; 

// put the corrected information bits
if (syndrome == 4'd3) begin // syndrome == 3 
infor = { cw[8], cw[6:4], (~cw[2]) }; end 
else if (syndrome == 4'd5) begin // syndrome == 5
infor = { cw[8], cw[6], cw[5], (~cw[4]), cw[2] }; end
else if (syndrome == 4'd6) begin // syndrome == 6
infor = { cw[8], cw[6], (~cw[5]), cw[4], cw[2] }; end
else if (syndrome == 4'd7) begin // syndrome == 7
infor = { cw[8], (~cw[6]), cw[5], cw[4], cw[2] }; end
else if (syndrome == 4'd9) begin // syndrome == 9
infor = { (~cw[8]), cw[6:4], cw[2] }; end

end
assign hs = infor[4:0]; // assign the original hand sign

endmodule
