`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:41 11/02/2017 
// Design Name: 
// Module Name:    Multiplier 
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
module Multiplier(
	input [15:0] a,b,
	output [31:0] m
    );
	/*
	integer index,result;
	integer loops;
	
	always @(a,b) begin
	assign loops = a;
	assign result = 0;
	for(index=0;index<loops;index=index+1)
		 assign result = result + b ;
	end

	assign m = result;
	*/
	assign m = a*b;
endmodule
