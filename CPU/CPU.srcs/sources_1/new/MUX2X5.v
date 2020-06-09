`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 13:11:30
// Design Name: 
// Module Name: MUX2X5
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


module MUX2X5(a0,a1,s,y);
    input [4:0]a0,a1;
    input s;
    output [4:0]y;
    MUX2X1 g0(a0[0],a1[0],s,y[0]);
    MUX2X1 g1(a0[1],a1[1],s,y[1]);
    MUX2X1 g2(a0[2],a1[2],s,y[2]);
    MUX2X1 g3(a0[3],a1[3],s,y[3]);
    MUX2X1 g4(a0[4],a1[4],s,y[4]);
endmodule
