`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 02:55:37
// Design Name: 
// Module Name: EXT16T32
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


module EXT16T32(imm,Se,y);
    input [15:0]imm;
    input Se;
    output [31:0]y;
    wire Sign;
    and (Sign,imm[15],Se);
    assign y = {Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,imm[15:0]};
endmodule
