`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 12:42:38
// Design Name: 
// Module Name: CPU
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


module CPU(Inst,  Clrn, Clk, Dread, Iaddr, Wmem, Daddr, Dwrite);
    input [31:0] Inst, Dread;
    input Clrn, Clk;
    output [31:0] Iaddr, Daddr, Dwrite;
    output Wmem;
    
    wire Z, Regrt, Se, Wreg, Aluqb, Wmem, Reg2reg, cout1, cout2;
    wire [1:0] Aluc, Pcsrc;
    wire [4:0] Wr;
    wire [31:0] Qa, D, extimm, sh_extimm, sh_addr, Y;
    CONUNIT con(Inst[31:26], Inst[5:0], Z, Regrt, Se, Wreg, Aluqb, Aluc, Wmem, Pcsrc, Reg2reg);
    MUX2X5 mux1(Inst[15:11], Inst[20:16], Regrt, Wr);
    REGFILE regfile(Inst[25:21] ,Inst[20:16] ,D ,Wr ,Wreg , Clk ,Clrn, Qa, Dwrite);
    EXT16T32 ext(Inst[15:0], Se, extimm);
    SHIFTER32_L2 shift1(extimm, sh_extimm);
    SHIFTER32_L2 shift2({6'b000000,Inst[25:1]}, sh_addr);
    
    wire [31:0] Iaddr_4, Ib_addr, Pc_addr;
    CLA_32 cla1(Iaddr, 4, 0, Iaddr_4, cout1);
    
    wire [31:0] join_sh_addr = {Iaddr_4[31:28], sh_addr[27:0]};
    MUX2X32 mux2(extimm, Dwrite, Aluqb, Y);
    ALU alu(Qa, Y, Aluc, Daddr, Z);
    MUX2X32 mux3(Dread, Daddr, Reg2reg, D);
    
    CLA_32 cla2(Iaddr_4, sh_extimm, 0, Ib_addr, cout2);
    
    MUX4X32 mux4(Iaddr_4, 0, Ib_addr, join_sh_addr, Pcsrc, Pc_addr);
    PC_REG pc(Pc_addr, Clk, Clrn, Iaddr);
endmodule
