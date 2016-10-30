module arith (op1, op2, opsel, cin, couta, resulta);
input logic op1;
input logic op2;
input logic [2:0]opsel;
input logic cin;
output logic couta;
output logic resulta;

wire net1;
wire net2;

asel1(.opsel(opsel), .op2(op2), .out_op2(net1));
asel2(.opsel(opsel), .cin(cin), .out_cin(net2));

f_adder(.a(op1), .b(net1), .c(net2), .S(resulta), .C1(couta));

endmodule   