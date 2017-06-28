`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:29:42 06/28/2017 
// Design Name: 
// Module Name:    top 
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
module top(
	input clk,
	input mode, // 1 = decryption and 0 = encryption
	input [0:63] key,
	input [0:63] plainText,
	output [0:63] encrypted
    );
	 
encryption encrypt (
    .plainText(plainText), 
    .key(key), 
    .encrypted(encrypted)
    );




endmodule
