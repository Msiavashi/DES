`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:17 06/27/2017
// Design Name:   decryption
// Module Name:   C:/xilinxProjects/DES/dec_test.v
// Project Name:  DES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decryption
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec_test;

	// Inputs
	reg clk;
	reg [0:63] plainText;
	reg [0:63] key;

	// Outputs
	wire [63:0] encrypted;

	// Instantiate the Unit Under Test (UUT)
	decryption uut (
		.clk(clk), 
		.plainText(plainText), 
		.key(key), 
		.encrypted(encrypted)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		plainText = 64'b1000010110001011000101110110110110101000101100010010010100000011;
		key = 64'b0011000000110000001100000011000000110000001100000011000000110000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

