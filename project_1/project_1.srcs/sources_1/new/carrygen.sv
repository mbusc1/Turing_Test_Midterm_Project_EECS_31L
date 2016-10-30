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

 
 assign cin = ((mode== 1 & opsel==3'b101)? cin==1 : cin==0);
 assign cin = ((mode== 0 & opsel==3'b011)? cin==1 : cin==0);
 assign cin = ((mode== 0 & opsel==3'b110)? cin==1 : cin==0);
 assign cin = ((mode== 0 & opsel==3'b100)? cin==1 : cin==0);
 
 assign cin = ((mode== 0 & opsel==3'b000)? cin==0 : cin==1);
 assign cin = ((mode== 0 & opsel==3'b001)? cin==0 : cin==1);
 assign cin = ((mode== 0 & opsel==3'b010)? cin==0 : cin==1);
 assign cin = ((mode== 0 & opsel==3'b101)? cin==0 : cin==1);
 assign cin = ((mode== 1 & opsel==3'b000)? cin==0 : cin==1);
 assign cin = ((mode== 1 & opsel==3'b001)? cin==0 : cin==1);
 assign cin = ((mode== 1 & opsel==3'b011)? cin==0 : cin==1);

 
endmodule
