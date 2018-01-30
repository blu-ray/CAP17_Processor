`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:44 11/19/2017 
// Design Name: 
// Module Name:    Mem16 
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
module Mem16(
	input [10:0] address,
	input [15:0] datain,
	input clk,write_enable,
	output [15:0] dataouti,
	output trigger
    );
	 
	//reg [7:0] datain8,dataout8;
	reg [15:0] dataout16;
	reg [11:0] address12;
	reg [7:0] mem[4095:0];
	//reg [27:0] statuschanged;
	reg  statuschanged=0;
	reg  clk_con_at_statuschange = 0;
	reg  trig=0;
	
	initial begin
			//statuschanged=2'b00;
			//trig=0;
			//oldstatus = {address,datain,write_enable};
			
			
			//different scenarios
			/*
			mem[1] <= 8'b00000001 ;
			mem[0] <= 8'b00100000 ;
			mem[3] <= 8'b00000001 ;
			mem[2] <= 8'b00110000 ;
			//add r0,r1  --- add r0,r2
			*/
			
			/*
			mem[1] <= 8'b00010001 ;
			mem[0] <= 8'b00000100 ;
			mem[3] <= 8'b00000001 ;
			mem[2] <= 8'b00110000 ;
			mem[11] <= 8'b00000000;
			mem[10] <= 8'b00101001;
			//add r0,4  --- add r0,r2
			*/
			
			/*
			mem[1] <= 8'b00100001 ;
			mem[0] <= 8'b00100000 ;
			mem[3] <= 8'b00100001 ;
			mem[2] <= 8'b00110000 ;
			//sub r0,r1  --- sub r0,r2
			*/
			
			/*
			mem[1] <= 8'b00110001 ;
			mem[0] <= 8'b00100000 ;
			mem[3] <= 8'b00110011 ;
			mem[2] <= 8'b00110000 ;
			//add r0,32  --- add r2,48	
			*/
			
			/*
			mem[1] <= 8'b01000001 ;
			mem[0] <= 8'b00100000 ;
			mem[3] <= 8'b01000001 ;
			mem[2] <= 8'b00110000 ;
			//mull r0,r1  --- mul r0,r2	
			*/

			/*
			mem[1] <= 8'b01010001 ;
			mem[0] <= 8'b00100000 ;
			mem[3] <= 8'b01010001 ;
			mem[2] <= 8'b00110000 ;
			//and r0,r1  --- and r0,r2	
			*/
			
			/*
			mem[1] <= 8'b01100001 ;
			mem[0] <= 8'b00000011 ;
			mem[3] <= 8'b01100011 ;
			mem[2] <= 8'b00000100 ;
			//shift r0,3  --- shift r2,4				
			*/
			
			/*
			mem[1] <= 8'b01110001 ;
			mem[0] <= 8'b00000100 ;
			mem[3] <= 8'b00000001 ;
			mem[2] <= 8'b00110000 ;
			mem[11] <= 8'b00000000;
			mem[10] <= 8'b00101001;
			//load r0,4  --- add r0,r2
			*/
			
			/*
			mem[1] <= 8'b10000001 ;
			mem[0] <= 8'b00000111 ;
			mem[3] <= 8'b00000001 ;
			mem[2] <= 8'b00110000 ;
			mem[11] <= 8'b00000000;
			mem[10] <= 8'b00101001;
			mem[17] <= 8'b00000000;
			mem[16] <= 8'b00000101;
			//indirect_load r0,7  --- add r0,r2		
			*/

			/*
			mem[1] <= 8'b10010001 ;
			mem[0] <= 8'b01010101 ;
			mem[3] <= 8'b01110011 ;
			mem[2] <= 8'b01010101 ;
			//store r0,?  --- load r2,?	
			*/
			
			/*
			mem[1] <= 8'b10100001 ;
			mem[0] <= 8'b00000100 ;
			mem[3] <= 8'b01110011 ;
			mem[2] <= 8'b00101000 ;
			mem[11] <= 8'b00000000;
			mem[10] <= 8'b00101001;
			//store_indirect r0,4  --- load r2,40			
			*/
			
			/*
			mem[1] <= 8'b10110001 ;
			mem[0] <= 8'b00000000 ;
			mem[3] <= 8'b10110011 ;
			mem[2] <= 8'b00000000 ;
			//Clr r0  --- Clr r2	
			*/
			
			/*
			mem[1] <= 8'b11000001 ;
			mem[0] <= 8'b00011110 ;
			mem[3] <= 8'b11000011 ;
			mem[2] <= 8'b00101011 ;
			//mov r0,30 --- mov r2,43	
			*/
			
			/*
			mem[1] <= 8'b11010001 ;
			mem[0] <= 8'b00110000 ;
			mem[3] <= 8'b11010011 ;
			mem[2] <= 8'b00100000 ;
			mem[5] <= 8'b11010001 ;
			mem[4] <= 8'b00010000 ;
			//Cmp r0,r2 --- Cmp r2,r1 --- Cmp r0,r0
			*/
			
			
			
			mem[1] <= 8'b11000001 ;
			mem[0] <= 8'b10000000 ; //128
			
			mem[3] <= 8'b11000010 ;
			mem[2] <= 8'b00000100 ; //4
			
			mem[5] <= 8'b10110011 ;
			mem[4] <= 8'b00000000 ;
			
			mem[7] <= 8'b00110011 ;
			mem[6] <= 8'b00000001 ;
			
			mem[9] <= 8'b00100001 ;
			mem[8] <= 8'b00100000 ;
			
			mem[11] <= 8'b11100000 ;
			mem[10] <= 8'b00000001 ;
			
			mem[13] <= 8'b11110000 ;
			mem[12] <= 8'b00001000 ;
			
			mem[15] <= 8'b11110000 ;
			mem[14] <= 8'b00000011 ;
			//divider (divide 128 to 4)
			
		end
		
	//Memory mem8(.address(address12) , .datain(datain8) , .write_enable(write_enable) , .clk(clk) , .dataout(dataout8));
	always @(posedge clk )
		begin
			if (write_enable)
				begin
				mem[2*address] = datain[7:0];
				address12 = 2*address;
				end
			else	
				dataout16[7:0] = mem[2*address];	
				
			if(statuschanged)
				if(!clk_con_at_statuschange)
					begin
					trig = 1;
					statuschanged = 0;
					end
		
		end
		
	always @(negedge clk )
		
		begin
			if (write_enable)
				begin
				mem[2*address +1] = datain[15:8];
				address12 = 2*address +1;
				end
			else	
				dataout16[15:8] = mem[2*address+1];		
		
		
			case (statuschanged)
			1:
				if(clk_con_at_statuschange)
					begin
					trig = 1;
					statuschanged = 0;
					end
			0:
				if(clk_con_at_statuschange) trig = 0;
				else clk_con_at_statuschange = 1 ;
					
			endcase 
			
		end

	always @(write_enable,address,datain)
		begin
		statuschanged = 1;
		if(clk) clk_con_at_statuschange = 1;
		else clk_con_at_statuschange = 0;
		end
		
	assign dataouti = dataout16;
	assign trigger = trig;
	
endmodule
