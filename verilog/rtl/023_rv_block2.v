`default_nettype none

module diferential_rvb2 (
  input [7:0] io_in,
  output [7:0] io_out
);

   wire        clk = io_in[0];
   wire        reset = io_in[1];

   assign io_out = io_in;
endmodule
