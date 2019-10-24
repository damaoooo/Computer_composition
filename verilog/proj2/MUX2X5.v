module MUX5_2(a0,a1,sw,out);
    input wire[4:0] a0,a1;
    input wire sw;
    output [4:0] out;
    function [4:0] select;
        input [31:0] a0,a1;
        input [1:0] sw
        case(sw)
            1'b0:select = a0;
            1'b1:select = a1;
        endcase
    endfunction
    assign out = select(a0,a1,sw);
endmodule