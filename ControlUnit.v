`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:05:02 01/26/2018 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
	input clk,MemTrigger,reset,
	input [15:0] instruction,
	input RegBankStatus_z,
	output reg [3:0] RegBankSelect,RegBankLoad,
	output reg RegBankLoadenable,RegBankInc_pc,RegBankEnable,RegBankHi_loadenable,RegBankStatenable,
	output reg MemWrite_enable,
	output reg [2:0] AluUpcode,
	output reg [3:0] AluA,AluB,
	output [4:0] seq //test
    );
	 
	 reg [4:0] sc; //Sequence Counter
	
	 assign seq=sc; //test
	 initial begin
		 sc<=0;
		 RegBankSelect <= 0;
		 RegBankLoad <= 0;
		 RegBankLoadenable <= 0;
		 RegBankHi_loadenable <= 0;
		 RegBankStatenable <= 0;
		 RegBankInc_pc <= 0;
		 RegBankEnable <= 0;
		 MemWrite_enable <= 0;
		 AluUpcode <= 0;
		 AluA <= 0;
		 AluB <= 0;
	 end
	 
	 always @(reset) begin
		if(reset) assign sc=0;
		else deassign sc;
		end
		
	 always @(posedge clk)begin
		case(sc)
			
			
			5'd0: 	//Fetch 1
				begin
					//a0 = pc;
				RegBankEnable = 1'b1;
				RegBankSelect = 4'd11; //pc
				RegBankLoad = 4'd5; //a0
				RegBankLoadenable = 1'b1;
				RegBankStatenable = 1'b0;
				sc = sc+1;
				end
			
			
			5'd1:	//Fetch 2
				begin
				RegBankLoadenable = 1'b0;
				RegBankStatenable = 1'b0;
				MemWrite_enable = 1'b0;
				sc = sc+1;				
				end
			
		
		   5'd2: //Fetch 3
				//if (MemTrigger) begin
				begin
				RegBankEnable = 1'b1;
				RegBankSelect = 4'd15; //memory
				RegBankLoad = 4'd14; //ir
				RegBankLoadenable = 1'b1;
				RegBankStatenable = 1'b0;
				RegBankInc_pc = 1'b1;
				sc = sc+1;				
				end
				
				
				
			5'd3: // Decode Exec
				begin
					RegBankInc_pc = 1'b0;
					case(instruction[15:12])
						4'b0000:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = instruction[7:4];
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //Bus Loads From ALU
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b1;
						end
						
						4'b0001:begin
							RegBankEnable = 1'b1;
							AluA = 4'd6;
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
						end
						
						4'b0010:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = instruction[7:4];
							AluUpcode = 3'b001;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b1;
						end
						
						4'b0011:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b1;
						end
						
						4'b0100:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = instruction[7:4];
							AluUpcode = 3'b010;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = 4'd13; // lo
							RegBankLoadenable = 1'b1;
							RegBankHi_loadenable = 1'b1;
							RegBankStatenable = 1'b1;
						end
						
						4'b0101:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = instruction[7:4];
							AluUpcode = 3'b101;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = instruction[11:8]	;
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b1;
						end
						
						4'b0110:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = 4'd0;
							AluUpcode = 3'b100;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b1;
						end
						
						4'b0111:begin
							RegBankEnable = 1'b1;
							AluA = 4'd6;
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
						end
						
						4'b1000:begin
							RegBankEnable = 1'b1;
							AluA = 4'd6;
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
						end
						
						4'b1001:begin
							RegBankEnable = 1'b1;
							AluA = 4'd6;
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
						end
						
						4'b1010:begin
							RegBankEnable = 1'b1;
							AluA = 4'd6;
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
						end
						
						4'b1011:begin
							RegBankEnable = 1'b1;
							RegBankSelect = 4'd0; //zero
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
						end
						
						4'b1100:begin
							RegBankEnable = 1'b1;
							AluA = 4'd8;
							AluB = 4'd0;
							AluUpcode = 3'b000;
							RegBankSelect = 4'b1110; //alu
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;	
							RegBankStatenable = 1'b0;
						end
						
						4'b1101:begin
							RegBankEnable = 1'b1;
							AluA = instruction[11:8];
							AluB = instruction[7:4];
							AluUpcode = 3'b001;
							RegBankSelect = 4'b1110; //alu
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b1;
						end
						
						4'b1110:begin
							if(!RegBankStatus_z) begin
								RegBankEnable = 1'b1;
								AluA = 4'd5;
								AluB = 4'd9;
								AluUpcode = 3'b000;
								RegBankSelect = 4'b1110; //alu
								RegBankLoad = 4'd11;
								RegBankLoadenable = 1'b1;	
								RegBankStatenable = 1'b0;	
							end
						end
						
						4'b1111:begin
								RegBankEnable = 1'b1;
								AluA = 4'd9;
								AluB = 4'd8;
								AluUpcode = 3'b000;
								RegBankSelect = 4'b1110; //alu
								RegBankLoad = 4'd11;
								RegBankLoadenable = 1'b1;	
								RegBankStatenable = 1'b0;
						end
					endcase
					sc = sc + 1;
				end
				
				
				
			5'd4:
				begin
					case(instruction[15:12])
					
						4'b0000:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b0001:begin
							//regbankenable
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							MemWrite_enable = 1'b0;
							sc = sc + 1;							
						end

						4'b0010:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b0011:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b0100:begin
							RegBankLoadenable = 1'b0;
							RegBankHi_loadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b0101:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b0110:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b0111:begin
							RegBankLoadenable = 1'b0;
							MemWrite_enable = 1'b0;
							RegBankStatenable = 1'b0;
							sc = sc + 1;
						end
						
						4'b1000:begin
							RegBankLoadenable = 1'b0;
							MemWrite_enable = 1'b0;
							RegBankStatenable = 1'b0;
							sc = sc + 1;
						end
						
						4'b1001:begin
							RegBankEnable = 1'b1;
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							RegBankSelect = instruction[11:8];
							//MemWrite_enable = 1'b1;
							sc = sc + 1;
						end
						
						4'b1010:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							MemWrite_enable = 1'b0;
							sc = sc + 1;
						end
						
						4'b1011:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b1100:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;
						end
						
						4'b1101:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;						
						end
						
						4'b1110:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;	
						end
						
						4'b1111:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc=0;	
						end
					endcase
				end
				
				
				
			5'd5:
				begin
					case(instruction[15:12])
						4'b0001:begin
							//if trigger ...
							RegBankEnable = 1'b1;
							RegBankSelect = 4'd15; //memory
							RegBankLoad = 4'd8; //dr
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
							sc = sc + 1;	
						end
						
						4'b0111:begin
							//if trigger ...
							RegBankEnable = 1'b1;
							RegBankSelect = 4'd15; //memory
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
							sc = sc + 1;	
						end
						
						4'b1000:begin
							//if trigger ...
							RegBankEnable = 1'b1;
							RegBankSelect = 4'd15; //memory
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
							sc = sc + 1;	
						end
						
						4'b1001:begin
							RegBankEnable = 1'b1;
							RegBankLoadenable = 1'b0;
							MemWrite_enable = 1'b1;	
							RegBankStatenable = 1'b0;
							sc = sc + 1;
						end
						
						4'b1010:begin
							RegBankEnable = 1'b1;
							RegBankSelect = 4'd15; //memory
							RegBankLoad = 4'd5; //a0
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
							sc = sc + 1;	
						end
						
					endcase
				end
				
				
				
			5'd6:
				begin
					case(instruction[15:12])
						4'b0001:begin
								RegBankEnable = 1'b1;
								AluA = instruction[11:8];
								AluB = 4'd7;
								AluUpcode = 3'b000;
								RegBankSelect = 4'b1110; //Bus Loads From ALU
								RegBankLoad = instruction[11:8];
								RegBankLoadenable = 1'b1;
								RegBankStatenable = 1'b1;
								sc = sc + 1;
						end
						
						4'b0111:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							sc = 0;
						end
						
						4'b1000:begin
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							MemWrite_enable = 1'b0;
							sc = sc + 1;
						end

						4'b1001:begin
							//if trigger ...
							RegBankEnable = 1'b1;
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							MemWrite_enable = 1'b0;
							sc = sc + 1;
						end
						
						4'b1010:begin
							RegBankEnable = 1'b1;
							RegBankLoadenable = 1'b0;
							RegBankStatenable = 1'b0;
							RegBankSelect = instruction[11:8];
							//MemWrite_enable = 1'b1;
							sc = sc + 1;
						end
					endcase
				end
				
				
				
			5'd7:
				case(instruction[15:12])
					4'b0001:begin
						RegBankLoadenable = 1'b0;
						RegBankStatenable = 1'b0;
						sc = 0;
					end
					
					4'b1000:begin
							RegBankEnable = 1'b1;
							RegBankSelect = 4'd15; //memory
							RegBankLoad = instruction[11:8];
							RegBankLoadenable = 1'b1;
							RegBankStatenable = 1'b0;
							sc = sc + 1;	
					end
					
					4'b1001:begin
						RegBankLoadenable = 1'b0;
						RegBankStatenable = 1'b0;
						sc = 0;
					end
					
					4'b1010:begin
							RegBankEnable = 1'b1;
							RegBankLoadenable = 1'b0;
							MemWrite_enable = 1'b1;
							RegBankStatenable = 1'b0;
							sc = sc + 1;
					end
				endcase
				
			5'd8:
				case(instruction[15:12])
					4'b1000:begin
						RegBankLoadenable = 1'b0;
						RegBankStatenable = 1'b0;
						sc = 0;
					end
					
					4'b1010:begin
							//if trigger ...
							RegBankEnable = 1'b1;
							RegBankLoadenable = 1'b0;
							MemWrite_enable = 1'b0;
							RegBankStatenable = 1'b0;
							sc = sc + 1;
					end
				endcase
				
			5'd9:	
				case(instruction[15:12])
					4'b1010:begin
						RegBankLoadenable = 1'b0;
						RegBankStatenable = 1'b0;
						sc = 0;
					end
				endcase
		endcase
	 end
	 
	 
	 
	 always @(negedge clk) begin
		case(sc)
			5'd4:
				//if upcode = 0000 0010 0011 0100 0101 0110 0111 1000 1001 1010
				begin
					RegBankLoadenable = 1'b0;
					RegBankStatenable = 1'b0;
					RegBankHi_loadenable = 1'b0;
				end
			5'd6:
				if(instruction[15:12] == 4'b1010) begin
					RegBankLoadenable = 1'b0;
					RegBankStatenable = 1'b0;
				end
			5'd7:
				begin
					RegBankLoadenable = 1'b0;
					RegBankStatenable = 1'b0;
				end
		endcase
	 end



endmodule
