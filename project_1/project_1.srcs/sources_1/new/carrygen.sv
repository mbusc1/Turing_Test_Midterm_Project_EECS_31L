`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2016 05:43:29 PM
// Design Name: 
// Module Name: carrygen
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

// mode 1 101 pass carry in as 1 
module carrygen(
    input logic [2:0]opsel,
    input logic mode,
    output logic cin
);
 
 assign cin = (({mode,opsel}==4'b0011)? 1'b1 : 
 ({mode,opsel}==4'b0110)? 1'b1 : 
 ({mode,opsel}==4'b0100)? 1'b1 : 
 ({mode,opsel}==4'b1101)? 1'b1 : 1'b0);

 
endmodule
