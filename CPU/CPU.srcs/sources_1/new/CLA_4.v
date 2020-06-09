`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/23 01:46:58
// Design Name: 
// Module Name: CLA_4
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