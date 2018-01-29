`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:11:29 01/26/2018 
// Design Name: 
// Module Name:    MultiPlexedALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MultiPlexedALU(
	input [15:0] Data0,Data1,Data2,Data3,program_counter,base_address,data_register, //inputs
	input [7:0] immediate,
	input [11:0] immediate12bit,
	input [3:0] AluA,AluB, // AluA and AluB defines which two of the inputs must involve 
	input [2:0] AluUpcode,
	output [15:0] s,hi,
	output z,n,c,ov
    );
	 
	 reg [15:0] a,b;
	 
	 ALU SingleALU
	 (
	 .a(a),
	 .b(b),
	 .upcode(AluUpcode),
	 .s(s),
	 .hi(hi),
	 .z(z),
	 .n(n),
	 .c(c),
	 .ov(ov)
	 );
	 
	 always @(*) begin
		case (AluA)
		4'd0:
			a = {8'b00000000,immediate};
		4'd1:
			a = Data0;
		4'd2:
			a = Data1;
		4'd3:
			a = Data2;
		4'd4:
			a = Data3;
		4'd5:
			a = program_counter;
		4'd6:
			a = base_address;
		4'd7:
			a = data_register;
		4'd8:
			a = 16'h0000;
		4'd9:
			a = {4'b0000,immediate12bit};
		endcase
	 end
	 
	 always @(*) begin
		case (AluB)
		4'd0:
			b = {8'b00000000,immediate};
		4'd1:
			b = Data0;
		4'd2:
			b = Data1;
		4'd3:
			b = Data2;
		4'd4:
			b = Data3;
		4'd5:
			b = program_counter;
		4'd6:
			b = base_address;
		4'd7:
			b = data_register;
		4'd8:
			b = 16'h0000;
		4'd9:
			b = {4'b0000,immediate12bit};
		endcase
	 end
	 
	 



endmodule
