module alu_128bit ( op1 , op2 , opsel , mode , result , c_flag , z_flag , o_flag , s_flag );
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

carrygen(opsel, mode, cin);

genvar i;
generate
    for(i=0;i<(DWIDTH-1);i=i+1) begin: alu128
       
    end
endgenerate

flaggen(.mode(), .op1(), .op2(), .carry(), .result(), .O_flag(o_flag), .S_flag(s_flag), .C_flag(c_flag), .Z_flag(z_flag));

endmodule