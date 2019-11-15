module SHIFTER32_L2(X,Sh);
    input [31:0]X;
    output [31:0]Sh;
    wire [29:0]temp;
    assign temp = X[29:0];
    assign Sh = {X,0,0,0,0};
endmodule