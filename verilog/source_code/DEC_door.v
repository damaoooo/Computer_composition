module DEC2T4E_door(i0,i1,en,y0,y1,y2,y3);
    input i0,i1,en;
    output y0,y1,y2,y3;
    not n1(i0_n,i0);
    not n2(i1_n,i1);
    and(y0,i0_n,i1_n,en);
    and(y1,i0_n,i1,en);
    and(y2,i0,i1_n,en);
    and(y3,i0,i1,en);
endmodule