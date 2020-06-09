`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 00:32:08
// Design Name: 
// Module Name: MUX32X1
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


module MUX32X1(s,en,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,y);
    input [31:0]s;
    input en;
    input a31,a30,a29,a28,a27,a26,a25,a24,a23,a22,a21,a20,a19,a18,a17,a16,a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0;
    output y;
    and and31 (d31,a31,s[31],en);
    and and30 (d30,a30,s[30],en);
    and and29 (d29,a29,s[29],en);
    and and28 (d28,a28,s[28],en);
    and and27 (d27,a27,s[27],en);
    and and26 (d26,a26,s[26],en);
    and and25 (d25,a25,s[25],en);
    and and24 (d24,a24,s[24],en);
    and and23 (d23,a23,s[23],en);
    and and22 (d22,a22,s[22],en);
    and and21 (d21,a21,s[21],en);
    and and20 (d20,a20,s[20],en);
    and and19 (d19,a19,s[19],en);
    and and18 (d18,a18,s[18],en);
    and and17 (d17,a17,s[17],en);
    and and16 (d16,a16,s[16],en);
    and and15 (d15,a15,s[15],en);
    and and14 (d14,a14,s[14],en);
    and and13 (d13,a13,s[13],en);
    and and12 (d12,a12,s[12],en);
    and and11 (d11,a11,s[11],en);
    and and10 (d10,a10,s[10],en);
    and and9 (d9,a9,s[9],en);
    and and8 (d8,a8,s[8],en);
    and and7 (d7,a7,s[7],en);
    and and6 (d6,a6,s[6],en);
    and and5 (d5,a5,s[5],en);
    and and4 (d4,a4,s[4],en);
    and and3 (d3,a3,s[3],en);
    and and2 (d2,a2,s[2],en);
    and and1 (d1,a1,s[1],en);
    and and0 (d0,a0,s[0],en);
    or (y,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31);
endmodule 
