`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:41:30 06/28/2017
// Design Name:   top
// Module Name:   C:/xilinxProjects/DES/test_top.v
// Project Name:  DES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_top;

	// Inputs
	reg clk;
	reg mode;
	reg [0:63] key;
	reg [0:63] plainText;

	// Outputs
	wire [0:63] encrypted;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.mode(mode), 
		.key(key), 
		.plainText(plainText), 
		.encrypted(encrypted)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		mode = 0;
		key = 64'b0011000000110000001100000011000000110000001100000011000000110000;
		plainText = 64'b0011000100110010001100110011010000110101001101100011011100111000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

