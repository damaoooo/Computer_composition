`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 17:51:48
// Design Name: 
// Module Name: MUX2X32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX2X32(A0, A1, S, Y);
    input [31:0] A0,A1;
    input S;
    output [31:0] Y;
    wire [31:0] A0_S, A1_S;
    wire S_n;
    not (S_n, S);
    nand (A0_S[0], A0[0], S_n);
	nand (A1_S[0], A1[0], S);
	nand (Y[0], A0_S[0], A1_S[0]);
	nand (A0_S[1], A0[1], S_n);
	nand (A1_S[1], A1[1], S);
	nand (Y[1], A0_S[1], A1_S[1]);
	nand (A0_S[2], A0[2], S_n);
	nand (A1_S[2], A1[2], S);
	nand (Y[2], A0_S[2], A1_S[2]);
	nand (A0_S[3], A0[3], S_n);
	nand (A1_S[3], A1[3], S);
	nand (Y[3], A0_S[3], A1_S[3]);
	nand (A0_S[4], A0[4], S_n);
	nand (A1_S[4], A1[4], S);
	nand (Y[4], A0_S[4], A1_S[4]);
	nand (A0_S[5], A0[5], S_n);
	nand (A1_S[5], A1[5], S);
	nand (Y[5], A0_S[5], A1_S[5]);
	nand (A0_S[6], A0[6], S_n);
	nand (A1_S[6], A1[6], S);
	nand (Y[6], A0_S[6], A1_S[6]);
	nand (A0_S[7], A0[7], S_n);
	nand (A1_S[7], A1[7], S);
	nand (Y[7], A0_S[7], A1_S[7]);
	nand (A0_S[8], A0[8], S_n);
	nand (A1_S[8], A1[8], S);
	nand (Y[8], A0_S[8], A1_S[8]);
	nand (A0_S[9], A0[9], S_n);
	nand (A1_S[9], A1[9], S);
	nand (Y[9], A0_S[9], A1_S[9]);
	nand (A0_S[10], A0[10], S_n);
	nand (A1_S[10], A1[10], S);
	nand (Y[10], A0_S[10], A1_S[10]);
	nand (A0_S[11], A0[11], S_n);
	nand (A1_S[11], A1[11], S);
	nand (Y[11], A0_S[11], A1_S[11]);
	nand (A0_S[12], A0[12], S_n);
	nand (A1_S[12], A1[12], S);
	nand (Y[12], A0_S[12], A1_S[12]);
	nand (A0_S[13], A0[13], S_n);
	nand (A1_S[13], A1[13], S);
	nand (Y[13], A0_S[13], A1_S[13]);
	nand (A0_S[14], A0[14], S_n);
	nand (A1_S[14], A1[14], S);
	nand (Y[14], A0_S[14], A1_S[14]);
	nand (A0_S[15], A0[15], S_n);
	nand (A1_S[15], A1[15], S);
	nand (Y[15], A0_S[15], A1_S[15]);
	nand (A0_S[16], A0[16], S_n);
	nand (A1_S[16], A1[16], S);
	nand (Y[16], A0_S[16], A1_S[16]);
	nand (A0_S[17], A0[17], S_n);
	nand (A1_S[17], A1[17], S);
	nand (Y[17], A0_S[17], A1_S[17]);
	nand (A0_S[18], A0[18], S_n);
	nand (A1_S[18], A1[18], S);
	nand (Y[18], A0_S[18], A1_S[18]);
	nand (A0_S[19], A0[19], S_n);
	nand (A1_S[19], A1[19], S);
	nand (Y[19], A0_S[19], A1_S[19]);
	nand (A0_S[20], A0[20], S_n);
	nand (A1_S[20], A1[20], S);
	nand (Y[20], A0_S[20], A1_S[20]);
	nand (A0_S[21], A0[21], S_n);
	nand (A1_S[21], A1[21], S);
	nand (Y[21], A0_S[21], A1_S[21]);
	nand (A0_S[22], A0[22], S_n);
	nand (A1_S[22], A1[22], S);
	nand (Y[22], A0_S[22], A1_S[22]);
	nand (A0_S[23], A0[23], S_n);
	nand (A1_S[23], A1[23], S);
	nand (Y[23], A0_S[23], A1_S[23]);
	nand (A0_S[24], A0[24], S_n);
	nand (A1_S[24], A1[24], S);
	nand (Y[24], A0_S[24], A1_S[24]);
	nand (A0_S[25], A0[25], S_n);
	nand (A1_S[25], A1[25], S);
	nand (Y[25], A0_S[25], A1_S[25]);
	nand (A0_S[26], A0[26], S_n);
	nand (A1_S[26], A1[26], S);
	nand (Y[26], A0_S[26], A1_S[26]);
	nand (A0_S[27], A0[27], S_n);
	nand (A1_S[27], A1[27], S);
	nand (Y[27], A0_S[27], A1_S[27]);
	nand (A0_S[28], A0[28], S_n);
	nand (A1_S[28], A1[28], S);
	nand (Y[28], A0_S[28], A1_S[28]);
	nand (A0_S[29], A0[29], S_n);
	nand (A1_S[29], A1[29], S);
	nand (Y[29], A0_S[29], A1_S[29]);
	nand (A0_S[30], A0[30], S_n);
	nand (A1_S[30], A1[30], S);
	nand (Y[30], A0_S[30], A1_S[30]);
	nand (A0_S[31], A0[31], S_n);
	nand (A1_S[31], A1[31], S);
	nand (Y[31], A0_S[31], A1_S[31]);
endmodule
