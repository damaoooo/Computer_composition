`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/22 22:16:20
// Design Name: 
// Module Name: door_simulation
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


module door_simulation();
reg x,y,z;
wire f;
door_design door1 (.X(x),.Y(y),.Z(z),.F(f));
initial begin
    x = 0;y = 0;z = 0;
    #20
    x = 0;y = 0;z = 1;
    #20
    x = 0;y = 1;z = 0;
    #20
    x = 0;y = 1;z = 1;
    #20
    x = 1;y = 0;z = 0;
    #20
    x = 1;y = 0;z = 1;
    #20
    x = 1;y = 1;z = 0;
    #20
    x = 1;y = 1;z = 1;
    #20
    x = 1;y = 1;z = 1;
    #20
    $finish;
end 
endmodule
