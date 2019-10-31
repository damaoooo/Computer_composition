module shifter32_func(x,sa,arith,right,sh);
    input [31:0]x;
    input [4:0] sa;
    input arith,right;
    output[31:0] sh;
    integer shiftAmount;
    integer res;
    always @(sa) begin
        shiftAmount = sa;
    end
    always @(*) 
        begin
            if(arith == 0)
                begin
                    if(right == 0)
                    res = x<<shiftAmount;
                else
                    res = x>>shiftAmount;
                end
            else
                begin
                    if(right == 0)
                    res = x<<<shiftAmount;
                    else
                    res = x>>>shiftAmount;
                end
        end
    assign sh = res;
endmodule