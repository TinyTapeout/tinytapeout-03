`ifdef SIMULATION
`include "arbiter_game.v"
`endif
`default_nettype none

module maheredia_arbiter_game 
(
  input [7:0] io_in,
  output [7:0] io_out
);

//Local parameters:
localparam CLOCK_FREQ      = 1000;
localparam PRESCALER_COUNT = CLOCK_FREQ/4;

//Internal signals:
wire [3:0] leds;

arbiter_game
#(
    .CLOCK_FREQ      ( CLOCK_FREQ      ),
    .PRESCALER_COUNT ( PRESCALER_COUNT )
)
u_arbiter_game
(
    .clk       ( io_in[0] ),
    .rst_in_n  ( io_in[1] ),
    .req1_in   ( io_in[2] ),
    .req2_in   ( io_in[3] ),
    .leds_out  ( leds     )
);

//Outputs:
assign io_out = {4'b0000, leds};

endmodule
