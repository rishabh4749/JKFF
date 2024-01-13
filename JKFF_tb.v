`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 11:05:33
// Design Name: 
// Module Name: JKFF_tb
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


module JKFF_tb(

    );
    reg clk;
    reg j;
    reg k;
    wire q;
    always #5 clk=~clk;
    JKFF dut(.clk(clk),.j(j),.k(k),.Q(q));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t j=%b k=%b q=%b",$time,j,k,q);
    clk<=0;
    #4;
    j<=1;
    k<=0;
    #5;
    j<=0;
    k<=0;
    #5;
    j<=0;
    k<=1;
    #30 $finish;
    
    end
    
endmodule
