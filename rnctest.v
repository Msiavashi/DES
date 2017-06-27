`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:57 06/23/2017
// Design Name:   encryption
// Module Name:   C:/xilinxProjects/DES/rnctest.v
// Project Name:  DES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encryption
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rnctest;

	// Inputs
	reg clk;
	reg [0:63] plainText;
	reg [63:0] key;

	// Outputs
	wire [63:0] encrypted;

	// Instantiate the Unit Under Test (UUT)
	encryption uut (
		.clk(clk), 
		.plainText(plainText), 
		.key(key), 
		.encrypted(encrypted)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		plainText = 64'b0011000100110010001100110011010000110101001101100011011100111000;
		key = 64'b0000110000001100000011000000110000001100000011000000110000001100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
		#50 clk = ~clk;
	end
      
endmodule

