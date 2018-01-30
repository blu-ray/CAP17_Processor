`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:37 11/19/2017 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
	input [7:0] datain,
	input [11:0] address,
	input write_enable,clk,
	output [7:0] dataout
    );
	reg [7:0] mem[4095:0];
	reg [7:0] out;
	
	always @(clk)
		begin
		if (write_enable)
			begin
				mem[address] = datain;
			end
		else
			begin
				out=mem[address];
			end
		end
	
	assign dataout=out;
endmodule
