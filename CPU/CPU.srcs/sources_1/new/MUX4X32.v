`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 01:25:17
// Design Name: 
// Module Name: MUX4X32
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


module MUX4X32(a0,a1,a2,a3,s,y);
    input [31:0]a0,a1,a2,a3;
    input [1:0]s;
    output [31:0]y;
    wire [31:0]y_0,y_1;
    MUX2X32 ge0(a0,a1,s[0],y_0);
    MUX2X32 ge1(a2,a3,s[0],y_1);
    MUX2X32 two2(y_0,y_1,s[1],y);
endmodule