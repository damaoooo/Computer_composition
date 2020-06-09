`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 23:40:36
// Design Name: 
// Module Name: DEC5T32E
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


module DEC5T32E(i,en,y);
    input [4:0] i;
    input en;
    output [31:0]y;
    wire in[4:0];
    not(in[0],i[0]);
    not(in[1],i[1]);
    not(in[2],i[2]);
    not(in[3],i[3]);
    not(in[4],i[4]);
    and a0 (y[0],in[0],in[1],in[2],in[3],in[4],en);
    and a1 (y[1],i[0],in[1],in[2],in[3],in[4],en);
    and a2 (y[2],in[0],i[1],in[2],in[3],in[4],en);
    and a3 (y[3],i[0],i[1],in[2],in[3],in[4],en);
    and a4 (y[4],in[0],in[1],i[2],in[3],in[4],en);
    and a5 (y[5],i[0],in[1],i[2],in[3],in[4],en);
    and a6 (y[6],in[0],i[1],i[2],in[3],in[4],en);
    and a7 (y[7],i[0],i[1],i[2],in[3],in[4],en);
    and a8 (y[8],in[0],in[1],in[2],i[3],in[4],en);
    and a9 (y[9],i[0],in[1],in[2],i[3],in[4],en);
    and a10 (y[10],in[0],i[1],in[2],i[3],in[4],en);
    and a11 (y[11],i[0],i[1],in[2],i[3],in[4],en);
    and a12 (y[12],in[0],in[1],i[2],i[3],in[4],en);
    and a13 (y[13],i[0],in[1],i[2],i[3],in[4],en);
    and a14 (y[14],in[0],i[1],i[2],i[3],in[4],en);
    and a15 (y[15],i[0],i[1],i[2],i[3],in[4],en);
    and a16 (y[16],in[0],in[1],in[2],in[3],i[4],en);
    and a17 (y[17],i[0],in[1],in[2],in[3],i[4],en);
    and a18 (y[18],in[0],i[1],in[2],in[3],i[4],en);
    and a19 (y[19],i[0],i[1],in[2],in[3],i[4],en);
    and a20 (y[20],in[0],in[1],i[2],in[3],i[4],en);
    and a21 (y[21],i[0],in[1],i[2],in[3],i[4],en);
    and a22 (y[22],in[0],i[1],i[2],in[3],i[4],en);
    and a23 (y[23],i[0],i[1],i[2],in[3],i[4],en);
    and a24 (y[24],in[0],in[1],in[2],i[3],i[4],en);
    and a25 (y[25],i[0],in[1],in[2],i[3],i[4],en);
    and a26 (y[26],in[0],i[1],in[2],i[3],i[4],en);
    and a27 (y[27],i[0],i[1],in[2],i[3],i[4],en);
    and a28 (y[28],in[0],in[1],i[2],i[3],i[4],en);
    and a29 (y[29],i[0],in[1],i[2],i[3],i[4],en);
    and a30 (y[30],in[0],i[1],i[2],i[3],i[4],en);
    and a31 (y[31],i[0],i[1],i[2],i[3],i[4],en);
endmodule

