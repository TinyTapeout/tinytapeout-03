`default_nettype none

module diferential_muxpga (
  input [7:0] io_in,
  output [7:0] io_out
);

   wire        clk = io_in[0];
   wire        reset = io_in[1];
   wire [4:0]  cfg = io_in[7:3];

   localparam  ROWS = 8;
   localparam  COLS = 8;

   generate
      genvar   row;
      genvar   col;

      wire [0:ROWS-1] cell_q[0:COLS-1];
      for (row = 0; row < ROWS; row = row + 1'b1) begin
         for (col = 0; col < COLS; col = col + 1'b1) begin
            wire left;
            assign left = col > 0 ? cell_q[row][col - 1] : io_in[row];
            diferential_cell c(clk, reset, {io_in[2], left}, cfg, cell_q[row][col]);
         end

         assign io_out[row] = cell_q[row][COLS - 1'b1];
      end
   endgenerate

endmodule

module diferential_cell
  (
    input       clk,
    input       reset,
    input [1:0] in,
    input [4:0] cfg,
    output      q
    );

   reg          dff;
   reg         f_out;

   always @(*) begin
      case(in)
        0:  f_out = cfg[0];
        1:  f_out = cfg[1];
        2:  f_out = cfg[2];
        3:  f_out = cfg[3];
      endcase
   end

   always @(posedge clk) begin
      if (reset) begin
         dff <= 0;
      end else begin
         dff <= f_out;
      end
   end

   assign q = cfg[4] ? dff : f_out;
endmodule
