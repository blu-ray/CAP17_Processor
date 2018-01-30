`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:05 11/02/2017 
// Design Name: 
// Module Name:    Subtractor16 
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
module Subtractor16(
	input [15:0] a,b,
	output [15:0] s,
	output cout
    );
	wire [15:0] c;
	wire [15:0] bnot;
		
		not n0(bnot[0],b[0]);
		not n1(bnot[1],b[1]);
		not n2(bnot[2],b[2]);
		not n3(bnot[3],b[3]);
		
		not n4(bnot[4],b[4]);
		not n5(bnot[5],b[5]);
		not n6(bnot[6],b[6]);
		not n7(bnot[7],b[7]);
		
		not n8(bnot[8],b[8]);
		not n9(bnot[9],b[9]);
		not n10(bnot[10],b[10]);
		not n11(bnot[11],b[11]);
		
		not n12(bnot[12],b[12]);
		not n13(bnot[13],b[13]);
		not n14(bnot[14],b[14]);
		not n15(bnot[15],b[15]);
		
		//assign bnot[15:0] = ~b[15:0];
		
		assign c[0] = 1'b1 ;
		FullAdder FA0(.x(a[0]),.y(bnot[0]),.cin(c[0]),.res(s[0]),.cout(c[1]));
		FullAdder FA1(.x(a[1]),.y(bnot[1]),.cin(c[1]),.res(s[1]),.cout(c[2]));
		FullAdder FA2(.x(a[2]),.y(bnot[2]),.cin(c[2]),.res(s[2]),.cout(c[3]));
		FullAdder FA3(.x(a[3]),.y(bnot[3]),.cin(c[3]),.res(s[3]),.cout(c[4]));
		
		FullAdder FA4(.x(a[4]),.y(bnot[4]),.cin(c[4]),.res(s[4]),.cout(c[5]));
		FullAdder FA5(.x(a[5]),.y(bnot[5]),.cin(c[5]),.res(s[5]),.cout(c[6]));
		FullAdder FA6(.x(a[6]),.y(bnot[6]),.cin(c[6]),.res(s[6]),.cout(c[7]));
		FullAdder FA7(.x(a[7]),.y(bnot[7]),.cin(c[7]),.res(s[7]),.cout(c[8]));
		
		FullAdder FA8(.x(a[8]),.y(bnot[8]),.cin(c[8]),.res(s[8]),.cout(c[9]));
		FullAdder FA9(.x(a[9]),.y(bnot[9]),.cin(c[9]),.res(s[9]),.cout(c[10]));
		FullAdder FA10(.x(a[10]),.y(bnot[10]),.cin(c[10]),.res(s[10]),.cout(c[11]));
		FullAdder FA11(.x(a[11]),.y(bnot[11]),.cin(c[11]),.res(s[11]),.cout(c[12]));
		
		FullAdder FA12(.x(a[12]),.y(bnot[12]),.cin(c[12]),.res(s[12]),.cout(c[13]));
		FullAdder FA13(.x(a[13]),.y(bnot[13]),.cin(c[13]),.res(s[13]),.cout(c[14]));
		FullAdder FA14(.x(a[14]),.y(bnot[14]),.cin(c[14]),.res(s[14]),.cout(c[15]));
		FullAdder FA15(.x(a[15]),.y(bnot[15]),.cin(c[15]),.res(s[15]),.cout(cout));
		

endmodule
