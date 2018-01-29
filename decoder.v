`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:37 10/24/2017 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
decoder_in,
decoder_out,
enable
    );
input [2:0] decoder_in; //bar aks ham mishe tarif kard . faghat ta akhar bayad hamontori estefade kard
input enable;
output [7:0] decoder_out;
always @(enable or decoder_in)

begin

end

endmodule
