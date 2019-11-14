`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/14 19:17:31
// Design Name: 
// Module Name: ALU
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

module MUX2X1(a0,a1,s,y);
    input a0,a1,s;
    output y;
    not n1(s_n,s);
    and and1(and_1,s_n,a0);
    and and2(and_2,s,a1);
    or or1(y,and_1,and_2);
endmodule

module MUX2X32(a0,a1,s,y);
    input [31:0]a0,a1;
    input s;
    output [31:0]y;
    MUX2X1 g0(a0[0],a1[0],s,y[0]);
    MUX2X1 g1(a0[1],a1[1],s,y[1]);
    MUX2X1 g2(a0[2],a1[2],s,y[2]);
    MUX2X1 g3(a0[3],a1[3],s,y[3]);
    MUX2X1 g4(a0[4],a1[4],s,y[4]);
    MUX2X1 g5(a0[5],a1[5],s,y[5]);
    MUX2X1 g6(a0[6],a1[6],s,y[6]);
    MUX2X1 g7(a0[7],a1[7],s,y[7]);
    MUX2X1 g8(a0[8],a1[8],s,y[8]);
    MUX2X1 g9(a0[9],a1[9],s,y[9]);
    MUX2X1 g10(a0[10],a1[10],s,y[10]);
    MUX2X1 g11(a0[11],a1[11],s,y[11]);
    MUX2X1 g12(a0[12],a1[12],s,y[12]);
    MUX2X1 g13(a0[13],a1[13],s,y[13]);
    MUX2X1 g14(a0[14],a1[14],s,y[14]);
    MUX2X1 g15(a0[15],a1[15],s,y[15]);
    MUX2X1 g16(a0[16],a1[16],s,y[16]);
    MUX2X1 g17(a0[17],a1[17],s,y[17]);
    MUX2X1 g18(a0[18],a1[18],s,y[18]);
    MUX2X1 g19(a0[19],a1[19],s,y[19]);
    MUX2X1 g20(a0[20],a1[20],s,y[20]);
    MUX2X1 g21(a0[21],a1[21],s,y[21]);
    MUX2X1 g22(a0[22],a1[22],s,y[22]);
    MUX2X1 g23(a0[23],a1[23],s,y[23]);
    MUX2X1 g24(a0[24],a1[24],s,y[24]);
    MUX2X1 g25(a0[25],a1[25],s,y[25]);
    MUX2X1 g26(a0[26],a1[26],s,y[26]);
    MUX2X1 g27(a0[27],a1[27],s,y[27]);
    MUX2X1 g28(a0[28],a1[28],s,y[28]);
    MUX2X1 g29(a0[29],a1[29],s,y[29]);
    MUX2X1 g30(a0[30],a1[30],s,y[30]);
    MUX2X1 g31(a0[31],a1[31],s,y[31]);
endmodule

module CLA_4(x,y,cin,s,cout);
    input [3:0]x,y;
    input cin;
    output [3:0]s;
    output cout;
    wire [3:0]p,g,ng,couts;
    and a0(g[0],x[0],y[0]);
    or o0(p[0],x[0],y[0]);
    and a1(g[1],x[1],y[1]);
    or o1(p[1],x[1],y[1]);
    and a2(g[2],x[2],y[2]);
    or o2(p[2],x[2],y[2]);
    and a3(g[3],x[3],y[3]);
    or o3(p[3],x[3],y[3]);
    not n0 (ng[0],g[0]);
    not n1 (ng[1],g[1]);
    not n2 (ng[2],g[2]);
    not n3 (ng[3],g[3]);
    //cout0
    and cout00 (t01,p[0],cin);
    or cout01 (couts[0],g[0],t1);
    //cout1
    and cout10 (t11,p[1],g[0]);
    and cout11 (t12,p[1],p[0],cin);
    or cout12 (couts[1],g[1],t11,t12);
    //cout2
    and cout20 (t21,p[2],g[1]);
    and cout21 (t22,p[2],p[1],g[0]);
    and cout22 (t23,p[2],p[1],p[0],cin);
    or cout23 (couts[2],g[2],t21,t22,t23);
    //cout3
    and cout30(t31,p[3],g[2]);
    and cout31(t32,p[3],p[2],g[1]);
    and cout32(t33,p[3],p[2],p[1],g[0]);
    and cout33(t34,p[3],p[2],p[1],p[0],cin);
    or cout34(couts[3],g[3],t31,t32,t33,t34);
    //sum
    and sum31(t3,p[3],ng[3]);xor sum32(s[3],t3,couts[2]);
    and sum21(t2,p[2],ng[2]);xor sum22(s[2],t2,couts[1]);
    and sum11(t1,p[1],ng[1]);xor sum12(s[1],t1,couts[0]);
    and sum01(t0,p[0],ng[0]);xor sum02(s[0],t0,cin);
    assign cout = couts[3];
endmodule

module CLA_32(X,Y,Cin,S,Cout);
    input [31:0] X,Y;
    input Cin;
    output [31:0]S;
    output Cout;
    wire Cout0,Cout1,Cout2,Cout3,Cout4,Cout5,Cout6;
    CLA_4 add0 (X[3:0],Y[3:0],Cin,S[3:0],Cout0);
    CLA_4 add1 (X[7:4],Y[7:4],Cout0,S[7:4],Cout1);
    CLA_4 add2 (X[11:8],Y[11:8],Cout1,S[11:8],Cout2);
    CLA_4 add3 (X[15:12],Y[15:12],Cout2,S[15:12],Cout3);
    CLA_4 add4 (X[19:16],Y[19:16],Cout3,S[19:16],Cout4);
    CLA_4 add5 (X[23:20],Y[23:20],Cout4,S[23:20],Cout5);
    CLA_4 add6 (X[27:24],Y[27:24],Cout5,S[27:24],Cout6);
    CLA_4 add7 (X[31:28],Y[31:28],Cout6,S[31:28],Cout);
endmodule

module ADDSUB_32(X,Y,Sub,S,Cout);
    input [31:0]X,Y;
    input Sub;
    output [31:0]S;
    output Cout;
    CLA_32 adder0(X,Y^{16{Sub}},Sub,S,Cout);
endmodule

module AND32(X,Y,S);
    input[31:0] X,Y;
    output [31:0]S;
    and a0 (S[0],X[0],Y[0]);
    and a1 (S[1],X[1],Y[1]);
    and a2 (S[2],X[2],Y[2]);
    and a3 (S[3],X[3],Y[3]);
    and a4 (S[4],X[4],Y[4]);
    and a5 (S[5],X[5],Y[5]);
    and a6 (S[6],X[6],Y[6]);
    and a7 (S[7],X[7],Y[7]);
    and a8 (S[8],X[8],Y[8]);
    and a9 (S[9],X[9],Y[9]);
    and a10 (S[10],X[10],Y[10]);
    and a11 (S[11],X[11],Y[11]);
    and a12 (S[12],X[12],Y[12]);
    and a13 (S[13],X[13],Y[13]);
    and a14 (S[14],X[14],Y[14]);
    and a15 (S[15],X[15],Y[15]);
    and a16 (S[16],X[16],Y[16]);
    and a17 (S[17],X[17],Y[17]);
    and a18 (S[18],X[18],Y[18]);
    and a19 (S[19],X[19],Y[19]);
    and a20 (S[20],X[20],Y[20]);
    and a21 (S[21],X[21],Y[21]);
    and a22 (S[22],X[22],Y[22]);
    and a23 (S[23],X[23],Y[23]);
    and a24 (S[24],X[24],Y[24]);
    and a25 (S[25],X[25],Y[25]);
    and a26 (S[26],X[26],Y[26]);
    and a27 (S[27],X[27],Y[27]);
    and a28 (S[28],X[28],Y[28]);
    and a29 (S[29],X[29],Y[29]);
    and a30 (S[30],X[30],Y[30]);
    and a31 (S[31],X[31],Y[31]);
endmodule

module OR32(X,Y,S);
    input [31:0]X,Y;
    output [31:0]S;
    or o0 (S[0],X[0],Y[0]);
    or o1 (S[1],X[1],Y[1]);
    or o2 (S[2],X[2],Y[2]);
    or o3 (S[3],X[3],Y[3]);
    or o4 (S[4],X[4],Y[4]);
    or o5 (S[5],X[5],Y[5]);
    or o6 (S[6],X[6],Y[6]);
    or o7 (S[7],X[7],Y[7]);
    or o8 (S[8],X[8],Y[8]);
    or o9 (S[9],X[9],Y[9]);
    or o10 (S[10],X[10],Y[10]);
    or o11 (S[11],X[11],Y[11]);
    or o12 (S[12],X[12],Y[12]);
    or o13 (S[13],X[13],Y[13]);
    or o14 (S[14],X[14],Y[14]);
    or o15 (S[15],X[15],Y[15]);
    or o16 (S[16],X[16],Y[16]);
    or o17 (S[17],X[17],Y[17]);
    or o18 (S[18],X[18],Y[18]);
    or o19 (S[19],X[19],Y[19]);
    or o20 (S[20],X[20],Y[20]);
    or o21 (S[21],X[21],Y[21]);
    or o22 (S[22],X[22],Y[22]);
    or o23 (S[23],X[23],Y[23]);
    or o24 (S[24],X[24],Y[24]);
    or o25 (S[25],X[25],Y[25]);
    or o26 (S[26],X[26],Y[26]);
    or o27 (S[27],X[27],Y[27]);
    or o28 (S[28],X[28],Y[28]);
    or o29 (S[29],X[29],Y[29]);
    or o30 (S[30],X[30],Y[30]);
    or o31 (S[31],X[31],Y[31]);
endmodule

module NOT32(X,S);
    input [31:0]X;
    output [31:0]S;
    not n0 (S[0],X[0]);
    not n1 (S[1],X[1]);
    not n2 (S[2],X[2]);
    not n3 (S[3],X[3]);
    not n4 (S[4],X[4]);
    not n5 (S[5],X[5]);
    not n6 (S[6],X[6]);
    not n7 (S[7],X[7]);
    not n8 (S[8],X[8]);
    not n9 (S[9],X[9]);
    not n10 (S[10],X[10]);
    not n11 (S[11],X[11]);
    not n12 (S[12],X[12]);
    not n13 (S[13],X[13]);
    not n14 (S[14],X[14]);
    not n15 (S[15],X[15]);
    not n16 (S[16],X[16]);
    not n17 (S[17],X[17]);
    not n18 (S[18],X[18]);
    not n19 (S[19],X[19]);
    not n20 (S[20],X[20]);
    not n21 (S[21],X[21]);
    not n22 (S[22],X[22]);
    not n23 (S[23],X[23]);
    not n24 (S[24],X[24]);
    not n25 (S[25],X[25]);
    not n26 (S[26],X[26]);
    not n27 (S[27],X[27]);
    not n28 (S[28],X[28]);
    not n29 (S[29],X[29]);
    not n30 (S[30],X[30]);
    not n31 (S[31],X[31]);
endmodule

module isZero(X,Z);
    input[31:0]X;
    output Z;
    and a1(Z_n,X[0],X[1],X[2],X[3],X[4],X[5],X[6],X[7],X[8],X[9],X[10],X[11],X[12],X[13],X[14],X[15],X[16],X[17],X[18],X[19],X[20],X[21],X[22],X[23],X[24],X[25],X[26],X[27],X[28],X[29],X[30],X[31]);   
    not n1(Z,Z_n);
endmodule

module ALU(X,Y,Aluc,R,Z);
    input [31:0]X,Y;
    input [1:0] Aluc;
    output [31:0]R;
    output Z;
    wire [31:0]d_as,d_and,d_or,d_and_or;
    ADDSUB_32 as32(X,Y,Aluc[0],d_as);
    AND32 a32(X,Y,d_and);
    OR32 o32(X,Y,d_or);
    MUX2X32 select1(d_and,d_or,Aluc[0],d_and_or);
    MUX2X32 select2(d_as,d_and_or,Aluc[1],R);
    isZero i1(R,Z);
endmodule