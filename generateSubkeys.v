`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:08 05/05/2017 
// Design Name: 
// Module Name:    generateSubkeys 
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
module generateSubkeys(
	input [31:0] key,
	output [47:0] sub_key1,
	output [47:0] sub_key2,
	output [47:0] sub_key3,
	output [47:0] sub_key4,
	output [47:0] sub_key5,
	output [47:0] sub_key6,
	output [47:0] sub_key7,
	output [47:0] sub_key8,
	output [47:0] sub_key9,
	output [47:0] sub_key10,
	output [47:0] sub_key11,
	output [47:0] sub_key12,
	output [47:0] sub_key13,
	output [47:0] sub_key14,
	output [47:0] sub_key15,
	output [47:0] sub_key16
    );
	 
	reg [31:0] permuted_key;
	reg [7:0] perm1 [55:0];
	reg [7:0] perm2 [47:0];
	initial begin
		$readmemh("perm1.data", perm1);
		$readmemh("perm2.data", perm2);
	end
	
	
	//perm1
	integer i;
	initial begin
		for (i = 0; i < 48; i = i + 1) begin
			permuted_key[i] = key[perm1[i] - 1];
		end
	end
	
	reg [27:0] C[16:0], D[16:0];
	reg [47:0] K[0:15], key_tmp;
	reg [47:0] subkey;
	
	//rotations
	integer j, k;
	always @(key) begin
	
		C[0] <= key[27:0];
		D[0] <= key[55:28];
		
		for (j = 1; j < 16; j = j+1)begin
			C[j] <= {C[j-1][14:0], C[j-1][15]};
			D[j] <= {D[j-1][14:0], D[j-1][15]};
			if ((j != 1) && (j != 2) && (j != 9) && (j != 16)) begin
            C[j] <= {C[j-1][14:0], C[j-1][15]};
				D[j] <= {D[j-1][14:0], D[j-1][15]};
			end
			subkey <= {C[j], D[j]};
			
			for (k = 0; k < 48; k = k + 1) begin
				key_tmp[k] <= subkey[perm2[k] - 1];
			end
			
			K[j - 1] <= key_tmp;
			
		end
		
	end
	
	 assign sub_key1 = K[1];
    assign sub_key2 = K[2];
    assign sub_key3 = K[3];
    assign sub_key4 = K[4];
    assign sub_key5 = K[5];
    assign sub_key6 = K[6];
    assign sub_key7 = K[7];
    assign sub_key8 = K[8];
    assign sub_key9 = K[9];
    assign sub_key10 = K[10];
    assign sub_key11 = K[11];
    assign sub_key12 = K[12];
    assign sub_key13 = K[13];
    assign sub_key14 = K[14];
    assign sub_key15 = K[15];
    assign sub_key16 = K[16];
	
endmodule
