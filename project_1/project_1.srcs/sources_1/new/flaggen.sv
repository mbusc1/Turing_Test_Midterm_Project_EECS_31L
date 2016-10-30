module flaggen(mode, op1, op2, carry, result, C_flag, Z_flag, S_flag, O_flag);
    input mode; 
    input op1[127:0]; 
    input op2[127:0];
    input carry;
    input result[127:0];
    output logic C_flag;
    output logic Z_flag; 
    output logic S_flag;
    output logic O_flag;
    wire zero; 
    parameter DWIDTH = 128;
    //Code Starts Here
    assign C_flag = carry;
    genvar i; 
    generate
        for (i = 0; i < (DWIDTH-1); i=i+1) begin: g
            assign zero = ((result[i] == 0 )? zero+0: 1);  
        end 
    endgenerate     
    assign Z_flag = ((zero == 0)? 1 : 0); 
    assign S_flag = ((result[127] == 0)? 1 : 0);
    assign O_flag = ((mode == 0 && result[127] == 1 && op1[127] == 0 && op2[127]== 0)? 1 : 0);
    assign O_flag = ((mode == 0 && result[127] == 0 && op1[127] == 1 && op2[127]== 1)? 1 : 0);

endmodule

