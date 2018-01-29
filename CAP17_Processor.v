`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:06 01/26/2018 
// Design Name: 
// Module Name:    CAP17_Processor 
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
module CAP17_Processor(
	input clki,reset
    );
	 
	 wire [10:0] MemAddress;
	 wire MemWriteEnable,MemTrigger;
	 wire [15:0] MemDatain,MemDataout;
	 
	 wire [15:0] AluDataout_s,AluDataout_hi;
	 wire [2:0] AluUpcode;
	 wire [3:0] AluA,AluB;
	 wire Alu_z,Alu_n,Alu_c,Alu_ov;
	 
	 wire[3:0] RegBankSelect,RegBankLoad;
	 wire RegBankLoadenable,RegBankInc_pc,RegBankEnable,RegBankHi_loadenable,RegBankStatenable,RegBankStatus_z;
	 wire RegBankStatus_n,RegBankStatus_c,RegBankStatus_ov;
	 wire [15:0] RegBankBus , Data0,Data1,Data2,Data3,RegBankPc,RegBankDr,RegBankBa;
	 wire [7:0] RegBankImmediate;
	 wire [11:0] RegBankImmediate12bit;
	 
	 wire [15:0] Instruction;
	 
	 wire [4:0] seq; //test

	 assign MemDatain = RegBankBus;
	 
	 //this part is for activating cpu. can be ignored and commented if force constanting clk for trace and debugging is prefered
	 reg clk;
	 assign reset=0;
	 initial begin 
		clk<=0;
	 end
	 
	 always begin
		#50 clk=~clk;
	 end
	 ////////////////////////////////////////////
	 
	 Mem16 Main_Memory
	 (
	 .clk(clk),
	 .address(MemAddress),
	 .write_enable(MemWriteEnable),
	 .trigger(MemTrigger),
	 //.datain(MemDatain),
	 .datain(RegBankBus),
	 .dataouti(MemDataout)
	 );
	 
	 
	 RegBank Register_Bank
	 (
	 .clk(clk),
	 .mem_data(MemDataout),
	 .alu_data(AluDataout_s),
	 .alu_hi(AluDataout_hi),
	 .select(RegBankSelect),
	 .load(RegBankLoad),
	 .loadenable(RegBankLoadenable),
	 .hi_loadenable(RegBankHi_loadenable),
	 .inc_pc(RegBankInc_pc),
	 .statenable(RegBankStatenable),
	 .enable(RegBankEnable),
	 .bus(RegBankBus),
	 .address_for_mem(MemAddress),
	 .instruction(Instruction),
	 .data0(Data0),
	 .data1(Data1),
	 .data2(Data2),
	 .data3(Data3),
	 .program_counter(RegBankPc),
	 .base_address(RegBankBa),
	 .data_register(RegBankDr),
	 .immediate(RegBankImmediate),
	 .immediate12bit(RegBankImmediate12bit),
	 .z(Alu_z),
	 .n(Alu_n),
	 .c(Alu_c),
	 .ov(Alu_ov),
	 .status_z(RegBankStatus_z),
	 .status_n(RegBankStatus_n),
	 .status_c(RegBankStatus_c),
	 .status_ov(RegBankStatus_ov)	
	 );
	 
	 ControlUnit Control_Unit
	 (
	 .clk(clk),
	 .MemTrigger(MemTrigger),
	 .reset(reset),
	 .instruction(Instruction),
	 .RegBankStatus_z(RegBankStatus_z),
	 .RegBankSelect(RegBankSelect),
	 .RegBankLoad(RegBankLoad),
	 .RegBankLoadenable(RegBankLoadenable),
	 .RegBankHi_loadenable(RegBankHi_loadenable),
	 .RegBankInc_pc(RegBankInc_pc),
	 .RegBankEnable(RegBankEnable),
	 .RegBankStatenable(RegBankStatenable),
	 .MemWrite_enable(MemWriteEnable),
	 .AluUpcode(AluUpcode),
	 .AluA(AluA),
	 .AluB(AluB),
	 .seq(seq) //test
	 );
	 
	 
	 MultiPlexedALU ALU_Unit
	 (
	 .Data0(Data0),
	 .Data1(Data1),
	 .Data2(Data2),
	 .Data3(Data3),
	 .program_counter(RegBankPc),
	 .base_address(RegBankBa),
	 .data_register(RegBankDr),
	 .immediate(RegBankImmediate),
	 .immediate12bit(RegBankImmediate12bit),
	 .AluA(AluA),
	 .AluB(AluB),
	 .AluUpcode(AluUpcode),
	 .s(AluDataout_s),
	 .hi(AluDataout_hi),
	 .z(Alu_z),
	 .n(Alu_n),
	 .c(Alu_c),
	 .ov(Alu_ov)
	 );
	 
	 


endmodule
