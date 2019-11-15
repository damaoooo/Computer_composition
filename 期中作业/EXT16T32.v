module EXT16T32(imm,Se,y);
    input [15:0]imm;
    input Se;
    output [31:0]y;
    wire Sign;
    and (Sign,imm[15],Se);
    assign y = {Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,Sign,imm[15:0]};
endmodule