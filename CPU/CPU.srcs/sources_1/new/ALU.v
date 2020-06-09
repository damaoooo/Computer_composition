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