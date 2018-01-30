`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:10:00 11/03/2017 
// Design Name: 
// Module Name:    XOR16 
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
module XOR16(
	input [15:0] a,b,
	output [15:0] xored
    );
	assign xored= a ^ b;

endmodule
