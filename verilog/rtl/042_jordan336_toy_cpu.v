module jordan336_toy_cpu (input [7:0] io_in,
                          output [7:0] io_out);
  wire clk;
  wire rst;
  wire op_valid;
  wire [2:0] opcode;
  wire [2:0] src_a;
  wire [2:0] src_b;
  wire [2:0] dest;
  wire [7:0] imm;

  assign clk = io_in[0];
  assign rst = io_in[1];

  instr_fetch fetch(.clk,
                    .rst,
                    .in(io_in[7:2]),
                    .op_valid,
                    .opcode,
                    .src_a,
                    .src_b,
                    .dest,
                    .imm);

  toy_cpu cpu(.clk,
              .rst,
              .op_valid,
              .opcode,
              .src_a,
              .src_b,
              .dest,
              .imm,
              .out(io_out));
endmodule
