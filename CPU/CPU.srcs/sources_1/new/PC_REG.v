`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 14:42:49
// Design Name: 
// Module Name: PC_REG
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


module PC_REG(D, Clk, Clrn, Q);
    input [31:0] D;
    input Clk, Clrn;
    output [31:0] Q;
    wire [31:0] Qn;
    D_FFEC32 d_ffec(D, Clk, 1, Clrn, Q, Qn);
endmodule
