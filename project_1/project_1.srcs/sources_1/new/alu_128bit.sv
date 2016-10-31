module alu_128bit ( op1 , op2 , opsel , mode , result , c_flag , z_flag , o_flag , s_flag, carry);
parameter DWIDTH = 128;
input logic [ DWIDTH -1:0] op1 ;
input logic [ DWIDTH -1:0] op2 ;
input logic [ 2:0] opsel ;
input logic mode ;
output logic [ DWIDTH -1:0] result ;
output logic c_flag ;
output logic z_flag ;
output logic o_flag ;
output logic s_flag ;
output logic [DWIDTH:0]carry;
wire cin;

carrygen c1(.opsel(opsel[2:0]), .mode(mode), .ci(cin));

alu_1bit a1(.op1(op1[0]), .op2(op2[0]), .opsel(opsel[2:0]), .cin(ci), .mode(mode), .result(result[0]), .cout(carry[1]));

genvar i;
generate
    for(i=1;i<(DWIDTH);i=i+1) begin: alu128
       alu_1bit a1(.op1(op1[i]), .op2(op2[i]), .opsel(opsel[2:0]), .cin(carry[i]), .mode(mode), .result(result[i]), .cout(carry[i+1]));
    end
endgenerate

flaggen f1(.mode(mode), .op1(op1[DWIDTH-1:0]), .op2(op2[DWIDTH-1:0]), .carry(carry[DWIDTH:0]), .result(result[DWIDTH-1:0]), .O_flag(o_flag), .S_flag(s_flag), .C_flag(c_flag), .Z_flag(z_flag));

endmodule