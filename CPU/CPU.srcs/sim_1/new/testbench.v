`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 22:26:05
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg Clrn,Clk;
    wire [31:0]Inst,Dread,Daddr,Dwrite;
    wire [31:0]Iaddr=32'h00000000;
    wire Wmem;
    INSTMEM inst1(.Addr(Iaddr),.Inst(Inst));
    CPU cpu1(.Inst(Inst),.Clrn(Clrn),.Clk(Clk),.Dread(Dread),.Iaddr(Iaddr),.Wmem(Wmem),.Daddr(Daddr),.Dwrite(Dwrite));
    DATAMEM data1(.We(Wmem),.Addr(Daddr),.Din(Dwrite),.Clk(Clk),.Dout(Dread));
    initial begin
    Clrn = 1'b1;
    Clk = 1'b0;
    end
    always begin
    #10 Clk = ~Clk;
    end
endmodule
