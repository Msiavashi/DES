`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:56 05/20/2017
// Design Name:   generateSubkeys
// Module Name:   C:/xilinxProjects/DES/test.v
// Project Name:  DES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generateSubkeys
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
	reg clk;
	reg [63:0] key;

	// Outputs
	wire [47:0] sub_key1;
	wire [47:0] sub_key2;
	wire [47:0] sub_key3;
	wire [47:0] sub_key4;
	wire [47:0] sub_key5;
	wire [47:0] sub_key6;
	wire [47:0] sub_key7;
	wire [47:0] sub_key8;
	wire [47:0] sub_key9;
	wire [47:0] sub_key10;
	wire [47:0] sub_key11;
	wire [47:0] sub_key12;
	wire [47:0] sub_key13;
	wire [47:0] sub_key14;
	wire [47:0] sub_key15;
	wire [47:0] sub_key16;

	// Instantiate the Unit Under Test (UUT)
	generateSubkeys uut (
		.clk(clk),
		.key(key), 
		.sub_key1(sub_key1), 
		.sub_key2(sub_key2), 
		.sub_key3(sub_key3), 
		.sub_key4(sub_key4), 
		.sub_key5(sub_key5), 
		.sub_key6(sub_key6), 
		.sub_key7(sub_key7), 
		.sub_key8(sub_key8), 
		.sub_key9(sub_key9), 
		.sub_key10(sub_key10), 
		.sub_key11(sub_key11), 
		.sub_key12(sub_key12), 
		.sub_key13(sub_key13), 
		.sub_key14(sub_key14), 
		.sub_key15(sub_key15), 
		.sub_key16(sub_key16)
	);

	initial begin
		// Initialize Inputs
		//key = 64'd1;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100 key = 64'b0000110000001100000011000000110000001100000011000000110000001100;
        
		// Add stimulus here
		
		$display("%b\n", sub_key1);
		$display("%b\n", sub_key2);
	end
      always begin
			#50;
			clk = ~clk;
		end
endmodule

