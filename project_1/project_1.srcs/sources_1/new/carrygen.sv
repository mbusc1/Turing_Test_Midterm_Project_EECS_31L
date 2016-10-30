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
module carrygen(opsel, mode, cin);
    input logic [2:0]opsel;
    input logic mode;
    output logic cin;

 
 assign cin = ((mode== 1 & opsel==3'b101)? 1 : 0);
 assign cin = ((mode== 0 & opsel==3'b011)? 1 : 0);
 assign cin = ((mode== 0 & opsel==3'b110)? 1 : 0);
 assign cin = ((mode== 0 & opsel==3'b100)? 1 : 0);
 
 assign cin = ((mode== 0 & opsel==3'b000)? 0 : 1);
 assign cin = ((mode== 0 & opsel==3'b001)? 0 : 1);
 assign cin = ((mode== 0 & opsel==3'b010)? 0 : 1);
 assign cin = ((mode== 0 & opsel==3'b101)? 0 : 1);
 assign cin = ((mode== 1 & opsel==3'b000)? 0 : 1);
 assign cin = ((mode== 1 & opsel==3'b001)? 0 : 1);
 assign cin = ((mode== 1 & opsel==3'b011)? 0 : 1);

 
endmodule
