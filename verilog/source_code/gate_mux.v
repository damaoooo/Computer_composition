module MUX2X1_gate(a0,a1,s,y);
    input a0,a1,s;
    output y;
    not n1(s_n,s);
    and and1(and_1,s_n,a0);
    and and2(and_2,s,a1);
    or or1(y,and_1,and_2);
endmodule

module MUX2X5_gate(a0,a1,s,y);
    input [4:0]a0,a1;
    input s;
    output [4:0]y;
    MUX2X1_gate g0(a0[0],a1[0],s,y[0]);
    MUX2X1_gate g1(a0[1],a1[1],s,y[1]);
    MUX2X1_gate g2(a0[2],a1[2],s,y[2]);
    MUX2X1_gate g3(a0[3],a1[3],s,y[3]);
    MUX2X1_gate g4(a0[4],a1[4],s,y[4]);
endmodule

module MUX2X32_gate(a0,a1,s,y);
    input [31:0]a0,a1;
    input s;
    output [31:0]y;
    MUX2X1_gate g0(a0[0],a1[0],s,y[0]);
    MUX2X1_gate g1(a0[1],a1[1],s,y[1]);
    MUX2X1_gate g2(a0[2],a1[2],s,y[2]);
    MUX2X1_gate g3(a0[3],a1[3],s,y[3]);
    MUX2X1_gate g4(a0[4],a1[4],s,y[4]);
    MUX2X1_gate g5(a0[5],a1[5],s,y[5]);
    MUX2X1_gate g6(a0[6],a1[6],s,y[6]);
    MUX2X1_gate g7(a0[7],a1[7],s,y[7]);
    MUX2X1_gate g8(a0[8],a1[8],s,y[8]);
    MUX2X1_gate g9(a0[9],a1[9],s,y[9]);
    MUX2X1_gate g10(a0[10],a1[10],s,y[10]);
    MUX2X1_gate g11(a0[11],a1[11],s,y[11]);
    MUX2X1_gate g12(a0[12],a1[12],s,y[12]);
    MUX2X1_gate g13(a0[13],a1[13],s,y[13]);
    MUX2X1_gate g14(a0[14],a1[14],s,y[14]);
    MUX2X1_gate g15(a0[15],a1[15],s,y[15]);
    MUX2X1_gate g16(a0[16],a1[16],s,y[16]);
    MUX2X1_gate g17(a0[17],a1[17],s,y[17]);
    MUX2X1_gate g18(a0[18],a1[18],s,y[18]);
    MUX2X1_gate g19(a0[19],a1[19],s,y[19]);
    MUX2X1_gate g20(a0[20],a1[20],s,y[20]);
    MUX2X1_gate g21(a0[21],a1[21],s,y[21]);
    MUX2X1_gate g22(a0[22],a1[22],s,y[22]);
    MUX2X1_gate g23(a0[23],a1[23],s,y[23]);
    MUX2X1_gate g24(a0[24],a1[24],s,y[24]);
    MUX2X1_gate g25(a0[25],a1[25],s,y[25]);
    MUX2X1_gate g26(a0[26],a1[26],s,y[26]);
    MUX2X1_gate g27(a0[27],a1[27],s,y[27]);
    MUX2X1_gate g28(a0[28],a1[28],s,y[28]);
    MUX2X1_gate g29(a0[29],a1[29],s,y[29]);
    MUX2X1_gate g30(a0[30],a1[30],s,y[30]);
    MUX2X1_gate g31(a0[31],a1[31],s,y[31]);
endmodule

module MUX4X32(a0,a1,a2,a3,s,y);
    input [31:0]a0,a1,a2,a3;
    input [1:0]s;
    output [31:0]y;
    MUX2X32_gate ge0(a0,a1,s[0],y_0);
    MUX2X32_gate ge1(a2,a3,s[0],y_1);
    MUX2X32_gate two2(y_0,y_1,s[1],y);
endmodule