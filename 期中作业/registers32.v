module MUX2X1(a0,a1,s,y);
    input a0,a1,s;
    output y;
    not n1(s_n,s);
    and and1(and_1,s_n,a0);
    and and2(and_2,s,a1);
    or or1(y,and_1,and_2);
endmodule
module DEC5T32E(i,en,y);
    input [4:0] i;
    input en;
    output [31:0]y;
    wire in[4:0];
    not(in[0],i[0]);
    not(in[1],i[1]);
    not(in[2],i[2]);
    not(in[3],i[3]);
    not(in[4],i[4]);
    and a0 (y[0],in[0],in[1],in[2],in[3],in[4],en);
    and a1 (y[1],i[0],in[1],in[2],in[3],in[4],en);
    and a2 (y[2],in[0],i[1],in[2],in[3],in[4],en);
    and a3 (y[3],i[0],i[1],in[2],in[3],in[4],en);
    and a4 (y[4],in[0],in[1],i[2],in[3],in[4],en);
    and a5 (y[5],i[0],in[1],i[2],in[3],in[4],en);
    and a6 (y[6],in[0],i[1],i[2],in[3],in[4],en);
    and a7 (y[7],i[0],i[1],i[2],in[3],in[4],en);
    and a8 (y[8],in[0],in[1],in[2],i[3],in[4],en);
    and a9 (y[9],i[0],in[1],in[2],i[3],in[4],en);
    and a10 (y[10],in[0],i[1],in[2],i[3],in[4],en);
    and a11 (y[11],i[0],i[1],in[2],i[3],in[4],en);
    and a12 (y[12],in[0],in[1],i[2],i[3],in[4],en);
    and a13 (y[13],i[0],in[1],i[2],i[3],in[4],en);
    and a14 (y[14],in[0],i[1],i[2],i[3],in[4],en);
    and a15 (y[15],i[0],i[1],i[2],i[3],in[4],en);
    and a16 (y[16],in[0],in[1],in[2],in[3],i[4],en);
    and a17 (y[17],i[0],in[1],in[2],in[3],i[4],en);
    and a18 (y[18],in[0],i[1],in[2],in[3],i[4],en);
    and a19 (y[19],i[0],i[1],in[2],in[3],i[4],en);
    and a20 (y[20],in[0],in[1],i[2],in[3],i[4],en);
    and a21 (y[21],i[0],in[1],i[2],in[3],i[4],en);
    and a22 (y[22],in[0],i[1],i[2],in[3],i[4],en);
    and a23 (y[23],i[0],i[1],i[2],in[3],i[4],en);
    and a24 (y[24],in[0],in[1],in[2],i[3],i[4],en);
    and a25 (y[25],i[0],in[1],in[2],i[3],i[4],en);
    and a26 (y[26],in[0],i[1],in[2],i[3],i[4],en);
    and a27 (y[27],i[0],i[1],in[2],i[3],i[4],en);
    and a28 (y[28],in[0],in[1],i[2],i[3],i[4],en);
    and a29 (y[29],i[0],in[1],i[2],i[3],i[4],en);
    and a30 (y[30],in[0],i[1],i[2],i[3],i[4],en);
    and a31 (y[31],i[0],i[1],i[2],i[3],i[4],en);
endmodule

module MUX32X1(s,en,a31,a30,a29,a28,a27,a26,a25,a24,a23,a22,a21,a20,a19,a18,a17,a16,a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0,y);
    input [31:0]s;
    input en;
    input a31,a30,a29,a28,a27,a26,a25,a24,a23,a22,a21,a20,a19,a18,a17,a16,a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0;
    output y;
    and and31 (d31,a31,s[31],en);
    and and30 (d30,a30,s[30],en);
    and and29 (d29,a29,s[29],en);
    and and28 (d28,a28,s[28],en);
    and and27 (d27,a27,s[27],en);
    and and26 (d26,a26,s[26],en);
    and and25 (d25,a25,s[25],en);
    and and24 (d24,a24,s[24],en);
    and and23 (d23,a23,s[23],en);
    and and22 (d22,a22,s[22],en);
    and and21 (d21,a21,s[21],en);
    and and20 (d20,a20,s[20],en);
    and and19 (d19,a19,s[19],en);
    and and18 (d18,a18,s[18],en);
    and and17 (d17,a17,s[17],en);
    and and16 (d16,a16,s[16],en);
    and and15 (d15,a15,s[15],en);
    and and14 (d14,a14,s[14],en);
    and and13 (d13,a13,s[13],en);
    and and12 (d12,a12,s[12],en);
    and and11 (d11,a11,s[11],en);
    and and10 (d10,a10,s[10],en);
    and and9 (d9,a9,s[9],en);
    and and8 (d8,a8,s[8],en);
    and and7 (d7,a7,s[7],en);
    and and6 (d6,a6,s[6],en);
    and and5 (d5,a5,s[5],en);
    and and4 (d4,a4,s[4],en);
    and and3 (d3,a3,s[3],en);
    and and2 (d2,a2,s[2],en);
    and and1 (d1,a1,s[1],en);
    and and0 (d0,a0,s[0],en);
    or (y,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31);
endmodule 

module MUX32X32(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,s,y);
    input [31:0]a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31;
    input [4:0]s;
    output [31:0]y;
    wire [31:0] sw;
    DEC5T32E s1(s,1,sw);
    MUX32X1 m0(sw[0],1,a0[0],a1[0],a2[0],a3[0],a4[0],a5[0],a6[0],a7[0],a8[0],a9[0],a10[0],a11[0],a12[0],a13[0],a14[0],a15[0],a16[0],a17[0],a18[0],a19[0],a20[0],a21[0],a22[0],a23[0],a24[0],a25[0],a26[0],a27[0],a28[0],a29[0],a30[0],a31[0]);
    MUX32X1 m1(sw[1],1,a0[1],a1[1],a2[1],a3[1],a4[1],a5[1],a6[1],a7[1],a8[1],a9[1],a10[1],a11[1],a12[1],a13[1],a14[1],a15[1],a16[1],a17[1],a18[1],a19[1],a20[1],a21[1],a22[1],a23[1],a24[1],a25[1],a26[1],a27[1],a28[1],a29[1],a30[1],a31[1]);
    MUX32X1 m2(sw[2],1,a0[2],a1[2],a2[2],a3[2],a4[2],a5[2],a6[2],a7[2],a8[2],a9[2],a10[2],a11[2],a12[2],a13[2],a14[2],a15[2],a16[2],a17[2],a18[2],a19[2],a20[2],a21[2],a22[2],a23[2],a24[2],a25[2],a26[2],a27[2],a28[2],a29[2],a30[2],a31[2]);
    MUX32X1 m3(sw[3],1,a0[3],a1[3],a2[3],a3[3],a4[3],a5[3],a6[3],a7[3],a8[3],a9[3],a10[3],a11[3],a12[3],a13[3],a14[3],a15[3],a16[3],a17[3],a18[3],a19[3],a20[3],a21[3],a22[3],a23[3],a24[3],a25[3],a26[3],a27[3],a28[3],a29[3],a30[3],a31[3]);
    MUX32X1 m4(sw[4],1,a0[4],a1[4],a2[4],a3[4],a4[4],a5[4],a6[4],a7[4],a8[4],a9[4],a10[4],a11[4],a12[4],a13[4],a14[4],a15[4],a16[4],a17[4],a18[4],a19[4],a20[4],a21[4],a22[4],a23[4],a24[4],a25[4],a26[4],a27[4],a28[4],a29[4],a30[4],a31[4]);
    MUX32X1 m5(sw[5],1,a0[5],a1[5],a2[5],a3[5],a4[5],a5[5],a6[5],a7[5],a8[5],a9[5],a10[5],a11[5],a12[5],a13[5],a14[5],a15[5],a16[5],a17[5],a18[5],a19[5],a20[5],a21[5],a22[5],a23[5],a24[5],a25[5],a26[5],a27[5],a28[5],a29[5],a30[5],a31[5]);
    MUX32X1 m6(sw[6],1,a0[6],a1[6],a2[6],a3[6],a4[6],a5[6],a6[6],a7[6],a8[6],a9[6],a10[6],a11[6],a12[6],a13[6],a14[6],a15[6],a16[6],a17[6],a18[6],a19[6],a20[6],a21[6],a22[6],a23[6],a24[6],a25[6],a26[6],a27[6],a28[6],a29[6],a30[6],a31[6]);
    MUX32X1 m7(sw[7],1,a0[7],a1[7],a2[7],a3[7],a4[7],a5[7],a6[7],a7[7],a8[7],a9[7],a10[7],a11[7],a12[7],a13[7],a14[7],a15[7],a16[7],a17[7],a18[7],a19[7],a20[7],a21[7],a22[7],a23[7],a24[7],a25[7],a26[7],a27[7],a28[7],a29[7],a30[7],a31[7]);
    MUX32X1 m8(sw[8],1,a0[8],a1[8],a2[8],a3[8],a4[8],a5[8],a6[8],a7[8],a8[8],a9[8],a10[8],a11[8],a12[8],a13[8],a14[8],a15[8],a16[8],a17[8],a18[8],a19[8],a20[8],a21[8],a22[8],a23[8],a24[8],a25[8],a26[8],a27[8],a28[8],a29[8],a30[8],a31[8]);
    MUX32X1 m9(sw[9],1,a0[9],a1[9],a2[9],a3[9],a4[9],a5[9],a6[9],a7[9],a8[9],a9[9],a10[9],a11[9],a12[9],a13[9],a14[9],a15[9],a16[9],a17[9],a18[9],a19[9],a20[9],a21[9],a22[9],a23[9],a24[9],a25[9],a26[9],a27[9],a28[9],a29[9],a30[9],a31[9]);
    MUX32X1 m10(sw[10],1,a0[10],a1[10],a2[10],a3[10],a4[10],a5[10],a6[10],a7[10],a8[10],a9[10],a10[10],a11[10],a12[10],a13[10],a14[10],a15[10],a16[10],a17[10],a18[10],a19[10],a20[10],a21[10],a22[10],a23[10],a24[10],a25[10],a26[10],a27[10],a28[10],a29[10],a30[10],a31[10]);
    MUX32X1 m11(sw[11],1,a0[11],a1[11],a2[11],a3[11],a4[11],a5[11],a6[11],a7[11],a8[11],a9[11],a10[11],a11[11],a12[11],a13[11],a14[11],a15[11],a16[11],a17[11],a18[11],a19[11],a20[11],a21[11],a22[11],a23[11],a24[11],a25[11],a26[11],a27[11],a28[11],a29[11],a30[11],a31[11]);
    MUX32X1 m12(sw[12],1,a0[12],a1[12],a2[12],a3[12],a4[12],a5[12],a6[12],a7[12],a8[12],a9[12],a10[12],a11[12],a12[12],a13[12],a14[12],a15[12],a16[12],a17[12],a18[12],a19[12],a20[12],a21[12],a22[12],a23[12],a24[12],a25[12],a26[12],a27[12],a28[12],a29[12],a30[12],a31[12]);
    MUX32X1 m13(sw[13],1,a0[13],a1[13],a2[13],a3[13],a4[13],a5[13],a6[13],a7[13],a8[13],a9[13],a10[13],a11[13],a12[13],a13[13],a14[13],a15[13],a16[13],a17[13],a18[13],a19[13],a20[13],a21[13],a22[13],a23[13],a24[13],a25[13],a26[13],a27[13],a28[13],a29[13],a30[13],a31[13]);
    MUX32X1 m14(sw[14],1,a0[14],a1[14],a2[14],a3[14],a4[14],a5[14],a6[14],a7[14],a8[14],a9[14],a10[14],a11[14],a12[14],a13[14],a14[14],a15[14],a16[14],a17[14],a18[14],a19[14],a20[14],a21[14],a22[14],a23[14],a24[14],a25[14],a26[14],a27[14],a28[14],a29[14],a30[14],a31[14]);
    MUX32X1 m15(sw[15],1,a0[15],a1[15],a2[15],a3[15],a4[15],a5[15],a6[15],a7[15],a8[15],a9[15],a10[15],a11[15],a12[15],a13[15],a14[15],a15[15],a16[15],a17[15],a18[15],a19[15],a20[15],a21[15],a22[15],a23[15],a24[15],a25[15],a26[15],a27[15],a28[15],a29[15],a30[15],a31[15]);
    MUX32X1 m16(sw[16],1,a0[16],a1[16],a2[16],a3[16],a4[16],a5[16],a6[16],a7[16],a8[16],a9[16],a10[16],a11[16],a12[16],a13[16],a14[16],a15[16],a16[16],a17[16],a18[16],a19[16],a20[16],a21[16],a22[16],a23[16],a24[16],a25[16],a26[16],a27[16],a28[16],a29[16],a30[16],a31[16]);
    MUX32X1 m17(sw[17],1,a0[17],a1[17],a2[17],a3[17],a4[17],a5[17],a6[17],a7[17],a8[17],a9[17],a10[17],a11[17],a12[17],a13[17],a14[17],a15[17],a16[17],a17[17],a18[17],a19[17],a20[17],a21[17],a22[17],a23[17],a24[17],a25[17],a26[17],a27[17],a28[17],a29[17],a30[17],a31[17]);
    MUX32X1 m18(sw[18],1,a0[18],a1[18],a2[18],a3[18],a4[18],a5[18],a6[18],a7[18],a8[18],a9[18],a10[18],a11[18],a12[18],a13[18],a14[18],a15[18],a16[18],a17[18],a18[18],a19[18],a20[18],a21[18],a22[18],a23[18],a24[18],a25[18],a26[18],a27[18],a28[18],a29[18],a30[18],a31[18]);
    MUX32X1 m19(sw[19],1,a0[19],a1[19],a2[19],a3[19],a4[19],a5[19],a6[19],a7[19],a8[19],a9[19],a10[19],a11[19],a12[19],a13[19],a14[19],a15[19],a16[19],a17[19],a18[19],a19[19],a20[19],a21[19],a22[19],a23[19],a24[19],a25[19],a26[19],a27[19],a28[19],a29[19],a30[19],a31[19]);
    MUX32X1 m20(sw[20],1,a0[20],a1[20],a2[20],a3[20],a4[20],a5[20],a6[20],a7[20],a8[20],a9[20],a10[20],a11[20],a12[20],a13[20],a14[20],a15[20],a16[20],a17[20],a18[20],a19[20],a20[20],a21[20],a22[20],a23[20],a24[20],a25[20],a26[20],a27[20],a28[20],a29[20],a30[20],a31[20]);
    MUX32X1 m21(sw[21],1,a0[21],a1[21],a2[21],a3[21],a4[21],a5[21],a6[21],a7[21],a8[21],a9[21],a10[21],a11[21],a12[21],a13[21],a14[21],a15[21],a16[21],a17[21],a18[21],a19[21],a20[21],a21[21],a22[21],a23[21],a24[21],a25[21],a26[21],a27[21],a28[21],a29[21],a30[21],a31[21]);
    MUX32X1 m22(sw[22],1,a0[22],a1[22],a2[22],a3[22],a4[22],a5[22],a6[22],a7[22],a8[22],a9[22],a10[22],a11[22],a12[22],a13[22],a14[22],a15[22],a16[22],a17[22],a18[22],a19[22],a20[22],a21[22],a22[22],a23[22],a24[22],a25[22],a26[22],a27[22],a28[22],a29[22],a30[22],a31[22]);
    MUX32X1 m23(sw[23],1,a0[23],a1[23],a2[23],a3[23],a4[23],a5[23],a6[23],a7[23],a8[23],a9[23],a10[23],a11[23],a12[23],a13[23],a14[23],a15[23],a16[23],a17[23],a18[23],a19[23],a20[23],a21[23],a22[23],a23[23],a24[23],a25[23],a26[23],a27[23],a28[23],a29[23],a30[23],a31[23]);
    MUX32X1 m24(sw[24],1,a0[24],a1[24],a2[24],a3[24],a4[24],a5[24],a6[24],a7[24],a8[24],a9[24],a10[24],a11[24],a12[24],a13[24],a14[24],a15[24],a16[24],a17[24],a18[24],a19[24],a20[24],a21[24],a22[24],a23[24],a24[24],a25[24],a26[24],a27[24],a28[24],a29[24],a30[24],a31[24]);
    MUX32X1 m25(sw[25],1,a0[25],a1[25],a2[25],a3[25],a4[25],a5[25],a6[25],a7[25],a8[25],a9[25],a10[25],a11[25],a12[25],a13[25],a14[25],a15[25],a16[25],a17[25],a18[25],a19[25],a20[25],a21[25],a22[25],a23[25],a24[25],a25[25],a26[25],a27[25],a28[25],a29[25],a30[25],a31[25]);
    MUX32X1 m26(sw[26],1,a0[26],a1[26],a2[26],a3[26],a4[26],a5[26],a6[26],a7[26],a8[26],a9[26],a10[26],a11[26],a12[26],a13[26],a14[26],a15[26],a16[26],a17[26],a18[26],a19[26],a20[26],a21[26],a22[26],a23[26],a24[26],a25[26],a26[26],a27[26],a28[26],a29[26],a30[26],a31[26]);
    MUX32X1 m27(sw[27],1,a0[27],a1[27],a2[27],a3[27],a4[27],a5[27],a6[27],a7[27],a8[27],a9[27],a10[27],a11[27],a12[27],a13[27],a14[27],a15[27],a16[27],a17[27],a18[27],a19[27],a20[27],a21[27],a22[27],a23[27],a24[27],a25[27],a26[27],a27[27],a28[27],a29[27],a30[27],a31[27]);
    MUX32X1 m28(sw[28],1,a0[28],a1[28],a2[28],a3[28],a4[28],a5[28],a6[28],a7[28],a8[28],a9[28],a10[28],a11[28],a12[28],a13[28],a14[28],a15[28],a16[28],a17[28],a18[28],a19[28],a20[28],a21[28],a22[28],a23[28],a24[28],a25[28],a26[28],a27[28],a28[28],a29[28],a30[28],a31[28]);
    MUX32X1 m29(sw[29],1,a0[29],a1[29],a2[29],a3[29],a4[29],a5[29],a6[29],a7[29],a8[29],a9[29],a10[29],a11[29],a12[29],a13[29],a14[29],a15[29],a16[29],a17[29],a18[29],a19[29],a20[29],a21[29],a22[29],a23[29],a24[29],a25[29],a26[29],a27[29],a28[29],a29[29],a30[29],a31[29]);
    MUX32X1 m30(sw[30],1,a0[30],a1[30],a2[30],a3[30],a4[30],a5[30],a6[30],a7[30],a8[30],a9[30],a10[30],a11[30],a12[30],a13[30],a14[30],a15[30],a16[30],a17[30],a18[30],a19[30],a20[30],a21[30],a22[30],a23[30],a24[30],a25[30],a26[30],a27[30],a28[30],a29[30],a30[30],a31[30]);
    MUX32X1 m31(sw[31],1,a0[31],a1[31],a2[31],a3[31],a4[31],a5[31],a6[31],a7[31],a8[31],a9[31],a10[31],a11[31],a12[31],a13[31],a14[31],a15[31],a16[31],a17[31],a18[31],a19[31],a20[31],a21[31],a22[31],a23[31],a24[31],a25[31],a26[31],a27[31],a28[31],a29[31],a30[31],a31[31]);
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

module REG32(D,En,Clk,Clrn,Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0);
    input [31:0]D,En;
    input Clk,Clrn;
    output [31:0] Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0;
    D_FFEC32 q31 (D,Clk,En[31],Clrn,Q31);
    D_FFEC32 q30 (D,Clk,En[30],Clrn,Q30);
    D_FFEC32 q29 (D,Clk,En[29],Clrn,Q29);
    D_FFEC32 q28 (D,Clk,En[28],Clrn,Q28);
    D_FFEC32 q27 (D,Clk,En[27],Clrn,Q27);
    D_FFEC32 q26 (D,Clk,En[26],Clrn,Q26);
    D_FFEC32 q25 (D,Clk,En[25],Clrn,Q25);
    D_FFEC32 q24 (D,Clk,En[24],Clrn,Q24);
    D_FFEC32 q23 (D,Clk,En[23],Clrn,Q23);
    D_FFEC32 q22 (D,Clk,En[22],Clrn,Q22);
    D_FFEC32 q21 (D,Clk,En[21],Clrn,Q21);
    D_FFEC32 q20 (D,Clk,En[20],Clrn,Q20);
    D_FFEC32 q19 (D,Clk,En[19],Clrn,Q19);
    D_FFEC32 q18 (D,Clk,En[18],Clrn,Q18);
    D_FFEC32 q17 (D,Clk,En[17],Clrn,Q17);
    D_FFEC32 q16 (D,Clk,En[16],Clrn,Q16);
    D_FFEC32 q15 (D,Clk,En[15],Clrn,Q15);
    D_FFEC32 q14 (D,Clk,En[14],Clrn,Q14);
    D_FFEC32 q13 (D,Clk,En[13],Clrn,Q13);
    D_FFEC32 q12 (D,Clk,En[12],Clrn,Q12);
    D_FFEC32 q11 (D,Clk,En[11],Clrn,Q11);
    D_FFEC32 q10 (D,Clk,En[10],Clrn,Q10);
    D_FFEC32 q9 (D,Clk,En[9],Clrn,Q9);
    D_FFEC32 q8 (D,Clk,En[8],Clrn,Q8);
    D_FFEC32 q7 (D,Clk,En[7],Clrn,Q7);
    D_FFEC32 q6 (D,Clk,En[6],Clrn,Q6);
    D_FFEC32 q5 (D,Clk,En[5],Clrn,Q5);
    D_FFEC32 q4 (D,Clk,En[4],Clrn,Q4);
    D_FFEC32 q3 (D,Clk,En[3],Clrn,Q3);
    D_FFEC32 q2 (D,Clk,En[2],Clrn,Q2);
    D_FFEC32 q1 (D,Clk,En[1],Clrn,Q1);
    D_FFEC32 q0 (D,Clk,En[0],Clrn,Q0);
    assign Q0 = 0;
endmodule

module REGFILE(Ra,Rb,D,Wr,We,Clk,Clrn,Qa,Qb);
    input [4:0] Ra,Rb,Wr;
    input [31:0] D;
    input We,Clk,Clrn;
    output [31:0]Qa,Qb;
    wire [31:0] Y_mux,Q31_reg32,Q30_reg32,Q29_reg32,Q28_reg32,Q27_reg32,Q26_reg32,Q25_reg32,Q24_reg32,Q23_reg32,Q22_reg32,Q21_reg32,Q20_reg32,Q19_reg32,Q18_reg32,Q17_reg32,Q16_reg32,Q15_reg32,Q14_reg32,Q13_reg32,Q12_reg32,Q11_reg32,Q10_reg32,Q9_reg32,Q8_reg32,Q7_reg32,Q6_reg32,Q5_reg32,Q4_reg32,Q3_reg32,Q2_reg32,Q1_reg32,Q0_reg32;
    DEC5T32E dec(Wr,We,Y_mux);
    REG32 r1 (D,Y_mux,Clk,Clrn,Q31_reg32,Q30_reg32,Q29_reg32,Q28_reg32,Q27_reg32,Q26_reg32,Q25_reg32,Q24_reg32,Q23_reg32,Q22_reg32,Q21_reg32,Q20_reg32,Q19_reg32,Q18_reg32,Q17_reg32,Q16_reg32,Q15_reg32,Q14_reg32,Q13_reg32,Q12_reg32,Q11_reg32,Q10_reg32,Q9_reg32,Q8_reg32,Q7_reg32,Q6_reg32,Q5_reg32,Q4_reg32,Q3_reg32,Q2_reg32,Q1_reg32,Q0_reg32);
    MUX32X32 select1();
    MUX32X32 select2();
endmodule