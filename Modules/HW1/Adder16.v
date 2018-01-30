`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:46 11/01/2017 
// Design Name: 
// Module Name:    Adder16 
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
module Adder16(
	input [15:0] a,b,
	output [15:0] s,
	output cout
    );
	wire [15:0] c;
		assign c[0] = 1'b0 ;
		FullAdder FA0(.x(a[0]),.y(b[0]),.cin(c[0]),.res(s[0]),.cout(c[1]));
		FullAdder FA1(.x(a[1]),.y(b[1]),.cin(c[1]),.res(s[1]),.cout(c[2]));
		FullAdder FA2(.x(a[2]),.y(b[2]),.cin(c[2]),.res(s[2]),.cout(c[3]));
		FullAdder FA3(.x(a[3]),.y(b[3]),.cin(c[3]),.res(s[3]),.cout(c[4]));
		
		FullAdder FA4(.x(a[4]),.y(b[4]),.cin(c[4]),.res(s[4]),.cout(c[5]));
		FullAdder FA5(.x(a[5]),.y(b[5]),.cin(c[5]),.res(s[5]),.cout(c[6]));
		FullAdder FA6(.x(a[6]),.y(b[6]),.cin(c[6]),.res(s[6]),.cout(c[7]));
		FullAdder FA7(.x(a[7]),.y(b[7]),.cin(c[7]),.res(s[7]),.cout(c[8]));
		
		FullAdder FA8(.x(a[8]),.y(b[8]),.cin(c[8]),.res(s[8]),.cout(c[9]));
		FullAdder FA9(.x(a[9]),.y(b[9]),.cin(c[9]),.res(s[9]),.cout(c[10]));
		FullAdder FA10(.x(a[10]),.y(b[10]),.cin(c[10]),.res(s[10]),.cout(c[11]));
		FullAdder FA11(.x(a[11]),.y(b[11]),.cin(c[11]),.res(s[11]),.cout(c[12]));
		
		FullAdder FA12(.x(a[12]),.y(b[12]),.cin(c[12]),.res(s[12]),.cout(c[13]));
		FullAdder FA13(.x(a[13]),.y(b[13]),.cin(c[13]),.res(s[13]),.cout(c[14]));
		FullAdder FA14(.x(a[14]),.y(b[14]),.cin(c[14]),.res(s[14]),.cout(c[15]));
		FullAdder FA15(.x(a[15]),.y(b[15]),.cin(c[15]),.res(s[15]),.cout(cout));
		
endmodule
