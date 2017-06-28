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
	input [0:63] key,
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
	 
	reg [0:55] permuted_key;
	reg [7:0] perm1 [55:0];
	reg [7:0] perm2 [47:0];
	initial begin
		$readmemh("perm1.data", perm1);
		$readmemh("perm2.data", perm2);
	end
	
	
	integer i;
	always @(*) begin
		for (i = 0; i < 56; i = i + 1) begin
			permuted_key[i] <= key[perm1[i] - 1'h1];
		end
	end
	
	reg [27:0] C[16:0], D[16:0];
	reg [55:0] K[0:15];
	reg [47:0] Keys [0:15];
	reg [0:47] key_tmp;
	reg [55:0] subkey;
	
	//rotations
	integer j, k;
	reg flag = 1;
	always @(*) begin
		C[0] = permuted_key[0:27];
		D[0] = permuted_key[28:55];

		for (j = 1; j <= 16; j = j+1)begin
			C[j] = {C[j-1][26:0], C[j-1][27]};
			D[j] = {D[j-1][26:0], D[j-1][27]};

			if ((j != 1) && (j != 2) && (j != 9) && (j != 16)) begin
            C[j] = {C[j][26:0], C[j][27]};
				D[j] = {D[j][26:0], D[j][27]};
			end
			subkey = {C[j], D[j]};
			K[j - 1] = subkey;
			
		end
	end
	
	reg [10:0] counter = 0;
	reg [0:55] tmp;
	integer h;
	//second perm and assignments
	always @(*) begin
		for(h = 0; h < 16; h = h + 1)begin
			tmp[0:55] = K[h][55:0];
			for (k = 0; k < 48; k = k + 1) begin
				key_tmp[k] = tmp[perm2[k] - 1'h1];
			end
			Keys[h] = key_tmp;
			
		end
	end
	
	 assign sub_key1 = Keys[0];
    assign sub_key2 = Keys[1];
    assign sub_key3 = Keys[2];
    assign sub_key4 = Keys[3];
    assign sub_key5 = Keys[4];
    assign sub_key6 = Keys[5];
    assign sub_key7 = Keys[6];
    assign sub_key8 = Keys[7];
    assign sub_key9 = Keys[8];
    assign sub_key10 = Keys[9];
    assign sub_key11 = Keys[10];
    assign sub_key12 = Keys[11];
    assign sub_key13 = Keys[12];
    assign sub_key14 = Keys[13];
    assign sub_key15 = Keys[14];
    assign sub_key16 = Keys[15];
	
endmodule
