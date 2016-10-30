`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2016 05:46:58 PM
// Design Name: 
// Module Name: mux_21
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


module mux_21(
    input logic a,
    input logic b,
    input logic sel,
    output logic O
    );
   assign O = ((~sel)&a)|(sel&b);
endmodule
