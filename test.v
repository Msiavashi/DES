`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:47:46 05/20/2017
// Design Name:   permute
// Module Name:   C:/xilinxProjects/DES/test.v
// Project Name:  DES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: permute
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [31:0] key;
	reg [7:0] perm;

	// Instantiate the Unit Under Test (UUT)
	permute uut (
		.key(key), 
		.perm(perm)
	);

	initial begin
		// Initialize Inputs
		key = 0;
		perm = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

