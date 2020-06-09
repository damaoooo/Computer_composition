`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 01:50:42
// Design Name: 
// Module Name: SHIFTER32_L2
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


module SHIFTER32_L2(X,Sh);
    input [31:0]X;
    output [31:0]Sh;
    wire [29:0]temp;
    assign temp = X[29:0];
    assign Sh = {X,1'b0,1'b0};
endmodule
