`default_nettype none

module diferential_muxpga (
  input [7:0] io_in,
  output reg [7:0] io_out
);

   wire        clk = io_in[0];
   wire        reset = io_in[1];
   wire [3:0]  nibble_in = io_in[5:2];
   wire [1:0]  cmd = io_in[7:6];

   localparam  ROWS = 5;
   localparam  COLS = 3;
   localparam  CELLS = (ROWS-1)*COLS;

   // input/output register bits
   localparam  CELL_BITS = 4;
   // function value configuration bits.
   localparam  CFG_BITS = 4;
   // each input gets a routing dff with these many bits.
   localparam  INPUT_MUX_BITS = 2;
   localparam  BOTH_MUX_BITS = 4;

   reg [3:0]   cell_cfg[2*CELLS:0];
   wire [CELL_BITS-1:0] cell_q[0:ROWS-1][0:COLS-1];

   generate
      genvar            i;

      for (i = 1; i < 2*CELLS; i = i + 1'b1) begin
         always @(posedge clk) begin
            if (reset)
              cell_cfg[i] <= 0;
            else if (cmd == 0) begin
               cell_cfg[i] <= cell_cfg[i-1];
            end else begin
               cell_cfg[i] <= cell_cfg[i];
            end
         end
      end

      always @(posedge clk) begin
         if (reset)
           cell_cfg[0] <= 0;
         else if (cmd == 0) begin
            cell_cfg[0] <= nibble_in;
         end else begin
            cell_cfg[0] <= cell_cfg[0];
         end
      end
   endgenerate

   generate
      genvar   row;
      genvar   col;

      for (row = 0; row < ROWS; row = row + 1'b1) begin
         for (col = 0; col < COLS; col = col + 1'b1) begin
            if (row == 0) begin
               // First row is virtual .. it gets inputs only
               assign cell_q[row][col] = nibble_in;
            end else begin
               // Rows 1..ROWS-1 have FPGA cells, each with two cfg nibbles.
               localparam cfg_i = 2*((row - 1)*COLS + col);

               wire [BOTH_MUX_BITS-1:0] mux_bits = cell_cfg[cfg_i];
               wire [BOTH_MUX_BITS-1:0] cfg_bits = cell_cfg[cfg_i + 1];

               reg [CELL_BITS-1:0]      cell_in1;
               reg [CELL_BITS-1:0]      cell_in2;

               diferential_mux_in #(CELL_BITS, ROWS, COLS, row, col)
               inmux1(mux_bits[INPUT_MUX_BITS-1:0], cell_q, cell_in1);

               diferential_mux_in #(CELL_BITS, ROWS, COLS, row, col)
               inmux2(mux_bits[BOTH_MUX_BITS-1:INPUT_MUX_BITS], cell_q, cell_in2);

               wire en = cmd == 2'b01;
               diferential_cell#(CELL_BITS) c(clk, reset, en, cell_in1, cell_in2,
                                              cfg_bits, cell_q[row][col]);
            end
         end
      end
   endgenerate

   // TODO(emilian): Make output stationary out <= in by default.
   always @(*) begin
      case(cmd)
        0: io_out = {cell_cfg[2*CELLS - 1], 4'b0};
        1: io_out = {cell_q[ROWS - 1][0], cell_q[ROWS - 1][COLS - 1]};
        2: io_out = {cell_cfg[2*CELLS - 1], 4'b0};
        3: io_out = {cell_cfg[2*CELLS - 1], 4'b0};
        default:  io_out = 4'b0;
      endcase
   end
endmodule

module diferential_mux_in
  #(
    parameter int B = 4,
    parameter int ROWS = 0,
    parameter int COLS = 0,
    parameter int row = 0,
    parameter int col = 0
   )
  (
    input [1:0]      sel,
    input [B-1:0]      cell_q[0:ROWS-1][0:COLS-1],
    output reg [B-1:0] q
    );

   localparam          rminus1 = (ROWS + row - 1) % ROWS;
   localparam          rplus1 = (ROWS + row + 1) % ROWS;
   localparam          cminus1 = (COLS + col - 1) % COLS;
   localparam          cplus1 = (COLS + col + 1) % COLS;

   if (col == 0 || col == 0) begin
      always @(*) begin
         case(sel)
           0:  q = cell_q[rminus1][col];
           1:  q = cell_q[rplus1][col];
           2:  q = cell_q[row][cminus1];
           // Since col == 0 is routed already with cases 0&1 or 2 above, we make this special.
           // Get input from a cell in the top row instead.
           3:  q = cell_q[ROWS-1][(row+col) % COLS];
           // should never happen
           default:  q = 0;
         endcase
      end
   end else begin
      always @(*) begin
         case(sel)
           0:  q = cell_q[rminus1][col];
           1:  q = cell_q[rplus1][col];
           2:  q = cell_q[row][cminus1];
           3:  q = cell_q[row][0];
           // should never happen
           default:  q = 0;
         endcase
      end
   end
endmodule

// TODO(emilian): Refine cell function.
module diferential_cell
  #(
    parameter int B = 4
   )
  (
    input          clk,
    input          reset,
    input          en,
    input [B-1:0]  in1,
    input [B-1:0]  in2,
    input [3:0]    cfg,
    output [B-1:0] q
    );

   reg [3:0]    dff;
   reg [3:0]    f_out;

   always @(*) begin
      if (en) begin
         case(cfg[1:0])
           0:  f_out = in1 | in2;
           1:  f_out = in1 & in2;
           2:  f_out = in1;
           3:  f_out = in2;
         endcase
      end else begin
         f_out = dff;
      end
   end

   always @(posedge clk) begin
      if (reset) begin
         dff <= 0;
      end else begin
         dff <= f_out;
      end
   end

   // This the fact that we have non-registered outputs potentially could have cycles.
   // I'm curious what the synthesis tools will do here.
   // assign q = cfg[1] ? dff : f_out;
   assign q = dff;
endmodule
