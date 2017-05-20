`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:02:58 05/05/2017 
// Design Name: 
// Module Name:    permute 
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
module permute #(parameter perm_length = 56, parameter key_out_length=32)(
	input [31:0] key,
	input [7:0] perm [perm_length - 1:0],
	output reg  [7:0] key_out [key_out_length - 1:0]
    );


	integer i;
	initial begin
		for (i = 0; i < perm_length; i = i + 1) begin
			key_out[i] <= key[perm[i] - 1];
		end
	end
	

endmodule
