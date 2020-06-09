`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 11:57:19
// Design Name: 
// Module Name: DATAMEM
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


module DATAMEM(Addr, Din, Clk, We, Dout);
    input [31:0] Addr, Din;
    input Clk, We;
    output [31:0] Dout;
    reg [31:0] Ram [31:0];
    assign Dout = Ram[Addr[6:2]];
    always @ (posedge Clk) begin
        if(We) Ram[Addr[6:2]] <= Din;
    end
    integer i;
    initial begin
        for (i = 2; i<32; i = i+1)
            Ram[i] = 0;
    end
endmodule
