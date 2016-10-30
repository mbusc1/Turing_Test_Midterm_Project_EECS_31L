module asel2(opsel, cin, out_cin);
    input logic cin;
    input logic opsel;
    output logic out_cin;

 
 assign out_cin = ((opsel==3'b000)? cin==cin : cin);
 assign out_cin = ((opsel==3'b001)? cin==cin : cin);
 assign out_cin = ((opsel==3'b010)? cin==0 : cin);
 assign out_cin = ((opsel==3'b011)? cin==cin : cin);
 assign out_cin = ((opsel==3'b100)? cin==cin : cin);
 assign out_cin = ((opsel==3'b101)? cin==cin : cin);
 assign out_cin = ((opsel==3'b110)? cin==cin : cin);

 
endmodule
