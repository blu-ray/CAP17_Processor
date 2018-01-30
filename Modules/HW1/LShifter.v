`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:19 11/02/2017 
// Design Name: 
// Module Name:    LShifter 
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
module LShifter(
	input [15:0] a,b,
	output reg [15:0] shifted
    );
	 integer loops,i,temp;
	 //wire [15:0] shiftedwire;
	
	 
	 always @(a,b) begin
		assign loops = b;
		 shifted = a;
		for(i=0;i<loops;i=i+1)
			begin
				  temp = shifted[15];
				 shifted[15] = shifted[14];
				 shifted[14] = shifted[13];
				 shifted[13] = shifted[12];
				
				 shifted[12] = shifted[11];
				 shifted[11] = shifted[10];
				 shifted[10] = shifted[9];
				 shifted[9] = shifted[8];
				
				 shifted[8] = shifted[7];
				 shifted[7] = shifted[6];
				 shifted[6] = shifted[5];
				 shifted[5] = shifted[4];
				
				 shifted[4] = shifted[3];
				 shifted[3] = shifted[2];
				 shifted[2] = shifted[1];
				 shifted[1] = shifted[0];
				 shifted[0] = temp;
			end
		
	 end


endmodule
