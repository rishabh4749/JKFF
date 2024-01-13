`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 11:05:03
// Design Name: 
// Module Name: JKFF
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


module JKFF(
    input clk,
    input j,
    input k,
    output reg Q
    );
    always @ (posedge clk) begin
    if(j==0 && k==0)
    Q<=Q;
    else if(j==0 && k==1)
    Q<=0;
    else if(j==1 && k==0)
    Q<=1;
    else
    Q<=~Q;
    end
endmodule
