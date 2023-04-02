`default_nettype none

module yannickreiss_dot_op(
  input [0:7] io_in,
  output reg [0:7] io_out
);
  // Inputs
  wire no_clk;
  wire op_code;
  wire [0:2] op1;
  wire [0:2] op2;

  // Outputs
  //    multiplication
  wire [0:5] product;

  //    division
  reg [0:2] quotient;
  reg [0:2] reminder;


  // Here is the connection to input and output
  assign no_clk = io_in[0];
  assign op_code = io_in[1];
  assign op1 = io_in[2:4];
  assign op2 = io_in[5:7];

  always @(io_in) begin
    if (op_code) begin
      io_out[0:2] = quotient;
      io_out[3:5] = reminder;
    end else begin
      io_out[0:5] = product;
    end
     io_out[6:7] = 2'b00;
     
  end

  // Here is the logic
  assign  product = op1 * op2;

  always @(*) begin
    
    // check middle axis
    if (op1 == op2) begin
      quotient = 3'b001;
      reminder =  3'b000;
    end else if ((op1 == 3'b000) | (op2 == 3'b000)) begin
      quotient = 3'b000;
      reminder = 3'b000;
    end else if (op2 == 3'b001) begin
      quotient = op1;
      reminder = 3'b000;
    end else if (op2 == 3'b010) begin
      reminder = {2'b00, op1[2]};
      quotient = {1'b0, op1[0:1]};
    end else if (op2 > op1) begin
      quotient = 3'b000;
      reminder = op1;
    end else if (((op2 == 3'b011) && (op1 > 3'b101))) begin
       quotient = 3'b010;
       reminder = {2'b00, op1[2]};
    end else begin       
      quotient = 3'b001;
      if (op1[2] ^ op2[2]) begin
        reminder = 3'b001;
      end else if (op1[1] ^ op2[1]) begin
        reminder = 3'b010;
      end else reminder = 3'b011;
    end
  end
endmodule
