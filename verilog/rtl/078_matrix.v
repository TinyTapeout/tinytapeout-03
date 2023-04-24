//Matrix multiply two 2x2 matrices, where each entry in each matrix may only be 0 or 1.



module blueintegral_mat_mult(
  input [7:0] io_in,
  output [7:0] io_out
);

reg [1:0] A [1:0][1:0], B [1:0][1:0];
reg [1:0] temp [1:0][1:0];
reg [7:0] output_data_reg;

always @* begin



A[0][0] = io_in[7];
A[0][1] = io_in[6];
A[1][0] = io_in[5];
A[1][1] = io_in[4];

B[0][0] = io_in[3];
B[0][1] = io_in[2];
B[1][0] = io_in[1];
B[1][1] = io_in[0];

temp[0][0] = (A[0][0]*B[0][0]) + (A[0][1]*B[1][0]);
temp[0][1] = (A[0][0]*B[0][1]) + (A[0][1]*B[1][1]);
temp[1][0] = (A[1][0]*B[0][0]) + (A[1][1]*B[1][0]);
temp[1][1] = (A[1][0]*B[0][1]) + (A[1][1]*B[1][1]);



//combine into output

//temp[0][0] = 2;
output_data_reg = 8'b00000000;
output_data_reg = output_data_reg | {temp[0][0], 6'b000000};
output_data_reg = output_data_reg | {2'b00, temp[0][1], 4'b0000};
output_data_reg = output_data_reg | {4'b0000, temp[1][0], 2'b00};
output_data_reg = output_data_reg | {6'b000000, temp[1][1]};


//temp[1][0] = 2;
//output_data = {temp[0][1]};


end

assign io_out = output_data_reg;




endmodule


