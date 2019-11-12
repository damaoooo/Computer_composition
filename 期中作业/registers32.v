module MUX2X1(a0,a1,s,y);
    input a0,a1,s;
    output y;
    not n1(s_n,s);
    and and1(and_1,s_n,a0);
    and and2(and_2,s,a1);
    or or1(y,and_1,and_2);
endmodule
module D_Latch(D,En,Q,Qn);
    input D,En;
    output Q,Qn;
    wire Sn,Rn,Dn;
    not i0(Dn,D);
    nand i1(Sn,D,En);
    nand i2(Rn,En,Dn);
    nand i3(Q,Sn,Qn);
    nand i4(Qn,Q,Rn);
endmodule

module D_FF(D,Clk,Q,Qn);
    input D,Clk;
    output Q,Qn;
    wire Clkn,Q0,Qn0;
    not i0(Clkn,Clk);
    D_Latch d0(D,Clkn,Q0,Qn0);
    D_Latch d1(Q0,Clk,Q,Qn);
endmodule

module D_FFEC(D,Clk,En,Clrn,Q,Qn);
    input D,Clk,En,Clrn;
    output Q,Qn;
    wire Y0,Y_C;
    MUX2X1 m0(Q,D,En,Y0);
    and i0(Y_C,Y0,Clrn);//and or nand?
    D_FF d0(Y_C,Clk,Q,Qn);
endmodule

module D_FFEC32(D,Clk,En,Clrn,Q,Qn);
    input [31:0] D;
    input Clk,En,Clrn;
    output [31:0] Q,Qn;
    D_FFEC d0 (D[0],Clk,En,Clrn,Q[0],Qn);
    D_FFEC d1 (D[1],Clk,En,Clrn,Q[1],Qn);
    D_FFEC d2 (D[2],Clk,En,Clrn,Q[2],Qn);
    D_FFEC d3 (D[3],Clk,En,Clrn,Q[3],Qn);
    D_FFEC d4 (D[4],Clk,En,Clrn,Q[4],Qn);
    D_FFEC d5 (D[5],Clk,En,Clrn,Q[5],Qn);
    D_FFEC d6 (D[6],Clk,En,Clrn,Q[6],Qn);
    D_FFEC d7 (D[7],Clk,En,Clrn,Q[7],Qn);
    D_FFEC d8 (D[8],Clk,En,Clrn,Q[8],Qn);
    D_FFEC d9 (D[9],Clk,En,Clrn,Q[9],Qn);
    D_FFEC d10 (D[10],Clk,En,Clrn,Q[10],Qn);
    D_FFEC d11 (D[11],Clk,En,Clrn,Q[11],Qn);
    D_FFEC d12 (D[12],Clk,En,Clrn,Q[12],Qn);
    D_FFEC d13 (D[13],Clk,En,Clrn,Q[13],Qn);
    D_FFEC d14 (D[14],Clk,En,Clrn,Q[14],Qn);
    D_FFEC d15 (D[15],Clk,En,Clrn,Q[15],Qn);
    D_FFEC d16 (D[16],Clk,En,Clrn,Q[16],Qn);
    D_FFEC d17 (D[17],Clk,En,Clrn,Q[17],Qn);
    D_FFEC d18 (D[18],Clk,En,Clrn,Q[18],Qn);
    D_FFEC d19 (D[19],Clk,En,Clrn,Q[19],Qn);
    D_FFEC d20 (D[20],Clk,En,Clrn,Q[20],Qn);
    D_FFEC d21 (D[21],Clk,En,Clrn,Q[21],Qn);
    D_FFEC d22 (D[22],Clk,En,Clrn,Q[22],Qn);
    D_FFEC d23 (D[23],Clk,En,Clrn,Q[23],Qn);
    D_FFEC d24 (D[24],Clk,En,Clrn,Q[24],Qn);
    D_FFEC d25 (D[25],Clk,En,Clrn,Q[25],Qn);
    D_FFEC d26 (D[26],Clk,En,Clrn,Q[26],Qn);
    D_FFEC d27 (D[27],Clk,En,Clrn,Q[27],Qn);
    D_FFEC d28 (D[28],Clk,En,Clrn,Q[28],Qn);
    D_FFEC d29 (D[29],Clk,En,Clrn,Q[29],Qn);
    D_FFEC d30 (D[30],Clk,En,Clrn,Q[30],Qn);
    D_FFEC d31 (D[31],Clk,En,Clrn,Q[31],Qn);
endmodule
module register32(

    );
endmodule