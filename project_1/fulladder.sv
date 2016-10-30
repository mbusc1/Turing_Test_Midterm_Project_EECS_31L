`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2016 06:10:50 PM
// Design Name: 
// Module Name: f_adder
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
module f_adder(
    input logic a,
    input logic b,
    input logic c,
    output logic S,
    output logic C1
    );
    assign S = (c^(a^b));
    assign C1 = (a&b)|((a^b)&c);
endmodule
