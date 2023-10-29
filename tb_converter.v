`timescale 1ns/1ps
module tb_converter();
	reg [4:0] hs;
	wire [3:0] n1, n2;

	b_1_converter converter1(hs, n1);
	b_2_converter converter2(hs, n2);

	initial begin
		hs = 5'd0;
		#10
		hs = 5'd1;
		#10
		hs = 5'd2;
		#10
		hs = 5'd3;
		#10
		hs = 5'd4;
		#10
		hs = 5'd5;
		#10
		hs = 5'd6;
		#10
		hs = 5'd7;
		#10
		hs = 5'd8;
		#10
		hs = 5'd9;
		#10
		hs = 5'd10;
		#10
		hs = 5'd11;
		#10
		hs = 5'd12;
		#10
		hs = 5'd13;
		#10
		hs = 5'd14;
		#10
		hs = 5'd15;
		#10
		hs = 5'd16;
		#10
		hs = 5'd17;
		#10
		hs = 5'd18;
		#10
		hs = 5'd19;
		#10
		hs = 5'd20;
		#10
		hs = 5'd21;
		#10
		hs = 5'd22;
		#10
		hs = 5'd23;
		#10
		hs = 5'd24;
		#10
		hs = 5'd25;
		#10
		hs = 5'd26;
		#10
		hs = 5'd27;
		#10
		hs = 5'd28;
		#10
		hs = 5'd29;
		#10
		hs = 5'd30;
		#10
		hs = 5'd31;
	end

endmodule
