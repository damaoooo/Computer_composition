`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 21:02:52
// Design Name: 
// Module Name: CONUNIT
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


module CONUNIT(Z, Op, Func, Regrt, Se, Reg2reg, Pcsrc, Wmem, Aluc, Aluqb, Wreg);
    input Z;
    input [5:0] Op, Func;
    output Regrt, Se, Wreg, Aluqb, Wmem, Reg2reg;
    output [1:0] Pcsrc, Aluc;
    
    wire R_type, I_add, I_sub, I_and, I_or, I_addi, I_andi, I_ori, I_lw, I_sw, I_beq, I_bne, I_J;

    wire [5:0] Op_n,Func_n;
    not (Op_n[0],Op[0]);
	not (Op_n[1],Op[1]);
	not (Op_n[2],Op[2]);
	not (Op_n[3],Op[3]);
	not (Op_n[4],Op[4]);
	not (Op_n[5],Op[5]);
	
	not (Func_n[0],Func[0]);
	not (Func_n[1],Func[1]);
	not (Func_n[2],Func[2]);
	not (Func_n[3],Func[3]);
	not (Func_n[4],Func[4]);
	not (Func_n[5],Func[5]);
	
	and (R_type, Op_n[5], Op_n[4], Op_n[3], Op_n[2], Op_n[1], Op_n[0]);
	and (I_add, R_type, Func[5], Func_n[4], Func_n[3], Func_n[2], Func_n[1], Func_n[0]);
	and (I_sub, R_type, Func[5], Func_n[4], Func_n[3], Func_n[2], Func[1], Func_n[0]); 
	and (I_and, R_type, Func[5], Func_n[4], Func_n[3], Func[2], Func_n[1], Func_n[0]);
	and (I_and, R_type, Func[5], Func_n[4], Func_n[3], Func[2], Func_n[1], Func[0]);
	and (I_addi, Op_n[5], Op_n[4], Op[3], Op_n[2], Op_n[1], Op_n[0]);
	and (I_andi, Op_n[5], Op_n[4], Op[3], Op[2], Op_n[1], Op_n[0]);
	and (I_ori, Op_n[5], Op_n[4], Op[3], Op[2], Op_n[1], Op[0]);
	and (I_lw, Op[5], Op_n[4], Op_n[3], Op_n[2], Op[1], Op[0]);
	and (I_sw, Op[5], Op_n[4], Op[3], Op_n[2], Op[1], Op[0]);
	and (I_beq, Op_n[5], Op_n[4], Op_n[3], Op[2], Op_n[1], Op_n[0]);
	and (I_bne, Op_n[5], Op_n[4], Op_n[3], Op[2], Op_n[1], Op[0]);
	and (I_J, Op_n[5], Op_n[4], Op_n[3], Op_n[2], Op[1], Op_n[0]);
	
	wire beq_Z, bne_Z_n, Z_n;
	
	or (Regrt, I_addi, I_andi, I_ori, I_lw, I_sw, I_beq, I_bne, I_J);
	or (Se, I_addi, I_lw, I_sw, I_beq, I_bne);
	or (Wreg, I_add, I_sub, I_and, I_or, I_or, I_addi, I_andi, I_ori, I_lw);
	or (Aluqb, I_add, I_sub, I_and, I_or, I_beq, I_bne, I_J);
	or (Aluc[1], I_and, I_or, I_andi, I_ori);
	or (Aluc[0], I_sub, I_or, I_ori, I_beq, I_bne);
	or (Wmem, I_sw, 1'b0);
	and (beq_Z, I_beq, Z);
	not (Z_n, Z);
	and (bne_Z_n, I_bne, Z_n);
	and (Pcsrc[1], beq_Z, bne_Z_n, I_J);
	or (Pcsrc[0], I_J, 1'b0);
	or (Reg2reg, I_add, I_sub, I_and, I_or, I_addi, I_andi, I_ori, I_sw, I_beq, I_bne, I_J);
endmodule
