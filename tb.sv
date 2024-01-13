`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 19:13:55
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg load;
    reg [511:0] data;
    wire [511:0] q;
    des dut(.clk(clk),.load(load),.data(data),.q(q));
    always #5 clk=~clk;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("time=%t load=%b data=%b q=%b",$time,load,data,q);
    clk<=0;
    load<=1;
    data<=56866875;
    #9 load<=0;
    end
endmodule
