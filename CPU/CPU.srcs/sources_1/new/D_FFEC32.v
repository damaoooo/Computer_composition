`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 23:37:46
// Design Name: 
// Module Name: D_FFEC32
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


module D_FFEC32(D,Clk,En,Clrn,Q,Qn);
    input [31:0] D;
    input Clk,En,Clrn;
    output [31:0] Q,Qn;
    D_FFEC d0 (D[0],Clk,En,Clrn,Q[0],Qn);
    D_FFEC d1 (D[1],Clk,En,Clrn,Q[1],Qn);
    D_FFEC d2 (D[2],Clk,En,Clrn,Q[2],Qn);
    D_FFEC d3 (D[3],Clk,En,Clrn,Q[3],Qn);
    D_FFEC d4 (D[4],Clk,En,Clrn,Q[4],Qn);
    D_FFEC d5 (D[5],Clk,En,Clrn,Q[5],Qn);
    D_FFEC d6 (D[6],Clk,En,Clrn,Q[6],Qn);
    D_FFEC d7 (D[7],Clk,En,Clrn,Q[7],Qn);
    D_FFEC d8 (D[8],Clk,En,Clrn,Q[8],Qn);
    D_FFEC d9 (D[9],Clk,En,Clrn,Q[9],Qn);
    D_FFEC d10 (D[10],Clk,En,Clrn,Q[10],Qn);
    D_FFEC d11 (D[11],Clk,En,Clrn,Q[11],Qn);
    D_FFEC d12 (D[12],Clk,En,Clrn,Q[12],Qn);
    D_FFEC d13 (D[13],Clk,En,Clrn,Q[13],Qn);
    D_FFEC d14 (D[14],Clk,En,Clrn,Q[14],Qn);
    D_FFEC d15 (D[15],Clk,En,Clrn,Q[15],Qn);
    D_FFEC d16 (D[16],Clk,En,Clrn,Q[16],Qn);
    D_FFEC d17 (D[17],Clk,En,Clrn,Q[17],Qn);
    D_FFEC d18 (D[18],Clk,En,Clrn,Q[18],Qn);
    D_FFEC d19 (D[19],Clk,En,Clrn,Q[19],Qn);
    D_FFEC d20 (D[20],Clk,En,Clrn,Q[20],Qn);
    D_FFEC d21 (D[21],Clk,En,Clrn,Q[21],Qn);
    D_FFEC d22 (D[22],Clk,En,Clrn,Q[22],Qn);
    D_FFEC d23 (D[23],Clk,En,Clrn,Q[23],Qn);
    D_FFEC d24 (D[24],Clk,En,Clrn,Q[24],Qn);
    D_FFEC d25 (D[25],Clk,En,Clrn,Q[25],Qn);
    D_FFEC d26 (D[26],Clk,En,Clrn,Q[26],Qn);
    D_FFEC d27 (D[27],Clk,En,Clrn,Q[27],Qn);
    D_FFEC d28 (D[28],Clk,En,Clrn,Q[28],Qn);
    D_FFEC d29 (D[29],Clk,En,Clrn,Q[29],Qn);
    D_FFEC d30 (D[30],Clk,En,Clrn,Q[30],Qn);
    D_FFEC d31 (D[31],Clk,En,Clrn,Q[31],Qn);
endmodule
