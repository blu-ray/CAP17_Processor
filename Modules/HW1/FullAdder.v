`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:44 11/01/2017 
// Design Name: 
// Module Name:    FullAdder 
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

module FullAdder(
	input x,y,cin,
	output res,cout
	
    );
	
wire xyxor,xyand,xyxor_cin_and;
	xor(xyxor , x , y);
	and(xyand , x , y);
	and(xyxor_cin_and , xyxor , cin);
	
	xor(res , xyxor,cin);
	or(cout , xyxor_cin_and , xyand);
	


endmodule
