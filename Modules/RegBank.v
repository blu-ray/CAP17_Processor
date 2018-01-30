`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:23 11/19/2017 
// Design Name: 
// Module Name:    RegBank 
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
module RegBank(
	input [15:0] mem_data,alu_data,alu_hi,
	input z,n,c,ov,
	input [3:0] select,
	input [3:0] load,
	input loadenable,hi_loadenable,inc_pc,statenable,
	input enable,clk,
	output reg [15:0] bus,
	output [10:0] address_for_mem,
	output [15:0] instruction,data0,data1,data2,data3,program_counter,base_address,data_register,
	output [7:0] immediate,
	output [11:0] immediate12bit,
	output status_z,status_n,status_c,status_ov
    );
	 
	 reg [15:0] inputreg,outputreg;
	 reg [15:0] d0,d1,d2,d3,dr; //Data
	 reg [10:0] a0,a1,a2,a3; //Address
	 reg [15:0] ba; //Base Address
	 reg [15:0] pc; //program counter
	 reg [15:0] sr; //Status
	 reg [15:0] zero; //Zero
	 reg [15:0] hi; //High 
	 reg [15:0] lo; //Low
	 reg [15:0] ir; //Instruction Reg
	 //reg [4:0] sc; //Sequence Counter
	 //reg [15:0] bus;
	 
	 initial begin
		pc <= 0;
		ba <= 1;
		//sc <= 0;
		
		d0 <= 7;
		d1 <= 13;
		d2 <= 22;
		d3 <= 0;
		dr <= 0;
		
		assign zero = 4'h0000;
	 end
	/*
	 always @(posedge clk)begin
		case(sc)
			0'd0: 	//Fetch
				begin
					a0 = pc;
				end
			0'd1:		
	 
	 end
	 */
	 always @(inc_pc)
		begin
			if(inc_pc)
				pc = pc + 1 ;
		end
		
	 assign address_for_mem=a0;
	 assign instruction=ir;
	 assign data0=d0;
	 assign data1=d1;
	 assign data2=d2;
	 assign data3=d3;
	 assign program_counter = pc;
	 assign base_address = ba;
	 assign data_register = dr;
	 assign immediate = ir[7:0];
	 assign immediate12bit = ir[11:0];
	 assign status_z = sr[15];
	 assign status_n = sr[14];
	 assign status_c = sr[13];
	 assign status_ov = sr[12];
	 
	 //flags
	 always @(z,statenable)	if(statenable) sr[15] = z; //zero
	 always @(n,statenable) if(statenable)	sr[14] = n; //negative
	 always @(c,statenable) if(statenable)	sr[13] = c; //carry
	 always @(ov,statenable) if(statenable) 	sr[12] = ov; //overflow
	 
	 always @(hi_loadenable) begin
		if(hi_loadenable)	hi=alu_hi; //hi part of multiply
	 end
	 
	 //select part (to load it's contents on the bus)
	 always @(clk,enable,loadenable)
		begin
			if(enable)
				case (select)
				4'd0:
					 bus = zero;	 
				4'd1:
					 bus = d0;
				4'd2:
					 bus = d1;
				4'd3:
					 bus = d2;
				4'd4:
					 bus = d3;
				4'd5:
					 bus = a0;
				4'd6:
					 bus = a1;
				
				/*0'd7:
					bus = a2;
				0'd8:
					bus = a3;
				*/
				4'd8:
					bus = dr;
				4'd9:
					bus = sr;
				4'd10:
					bus = ba;
				4'd11:
					bus = pc;
				4'd12:
					bus = hi;
				4'd13:
					bus = lo;
				4'd15:
					bus = mem_data;
				4'd14:
					bus = alu_data;
				endcase
			
			//load part (to get it's content from the bus)
			if(enable && loadenable)
				case (load)
					 
				4'd1:
					 d0 = bus;
				4'd2:
					 d1 = bus;
				4'd3:
					 d2 = bus;
				4'd4:
					 d3 = bus;
				4'd5:
					 a0 = bus;
				4'd6:
					 a1 = bus;
				/*
				0'd7:
					a2 = bus;
				0'd8:
					a3 = bus;
				*/
				4'd8:
					dr = bus;
				4'd9:
					sr = bus;
				4'd10:
					ba = bus;
				4'd11:
					pc = bus;
				4'd12:
					hi = bus;
				4'd13:
					lo = bus;
				4'd14:
					ir = bus;
				endcase			
	 
	 
		end


endmodule
