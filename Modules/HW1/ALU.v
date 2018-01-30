`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:15:05 11/03/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [15:0] a,b,
	input [2:0] upcode,
	output reg [15:0] s,hi,
	output reg z,n,c,ov
    );
	 
	 wire [15:0] addres;
	 wire addc;
	 Adder16 add(.a(a),.b(b),.s(addres),.cout(addc));
	 
	 wire [15:0] subres;
	 wire subc;
	 Subtractor16 sub(.a(a),.b(b),.s(subres),.cout(subc));
	 
	 wire [31:0] mulres;
	 Multiplier mul(.a(a),.b(b),.m(mulres));
	 
	 wire [15:0] xorres;
	 XOR16 xo(.a(a),.b(b),.xored(xorres));
	 
	 wire [15:0] lshiftres;
	 LShifter lshif(.a(a),.b(b),.shifted(lshiftres));
	 
	 wire pwr,gnd,zwir;
	 assign pwr=1;
	 assign gnd=0;
	 
	 wire s15;
	 assign s15=s[15];
	 
	 always @(a,b,upcode)
	 begin
	 case (upcode)
	 3'b000:
		begin
		  assign s = addres;
		  assign c = addc;
		end
	 3'b001:
		begin
			assign s=subres;
			assign c=subc;
		end
	 3'b010:
		begin
			assign s=mulres[15:0];
			assign hi=mulres[31:16];
		end
	 3'b011:
		begin
			assign s=xorres;
		end
	 3'b100:
		begin
			assign s=lshiftres;
		end
	 3'b101:
		begin
			assign s = a & b;
		end
	 endcase
	 #20
	 if(s == 4'h0000)
		begin
		if (upcode == 3'b010)
			begin
			if(hi == 4'h0000)
				 assign z=1;
			else
				 assign z=0;
			end
		else assign z=1;
		end
	 else
		 assign z=0;
	
	//$monitor(s15);
	if(s[15] == 1'b1)
		begin
		assign n=1;  
		if(upcode == 3'b010)
			assign n=0;
		else assign n=1;
		end
		
	else
		assign n=0;
	if(upcode == 3'b000)
	begin
		if((a[15] ==1'b1 ) && (b[15]==1'b1) && (s[15] ==1'b0))
			assign ov=1;
		else if((a[15] =='b0 ) && (b[15]==1'b0) && (s[15] ==1'b1))
			assign ov=1;
		else assign ov=0;
	end
	else if(upcode == 3'b001)
	begin
		if((a[15] ==1'b1 ) && (b[15]==1'b0) && (s[15] ==1'b0))
			assign ov=1;
		else if((a[15] =='b0 ) && (b[15]==1'b1) && (s[15] ==1'b1))
			assign ov=1;
		else assign ov=0;
	end
	else ov=0;
	end

	
endmodule
