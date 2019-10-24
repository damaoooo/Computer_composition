`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/22 22:07:29
// Design Name: 
// Module Name: door_design
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


module door_design(X,Y,Z,F);
    input wire X,Y,Z;
    output wire F;
    and a1 (andXY,X,Y);
    and a2 (andYZ,Y,Z);
    not n1 (Z_n,Z);
    nor nor1 (f1,andXY,Z_n);
    or (F,f1,andYZ);
endmodule
