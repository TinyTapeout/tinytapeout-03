`default_nettype none
`timescale 1ns/1ps

module dwisehart_top
(
 input [7:0]  io_in,
 output [7:0] io_out
);

   grey m_grey
   (
    .i_clk  ( io_in[0] ),
    .i_rst  ( io_in[1] ),
    .i_sel  ( io_in[7:2] ),
    .init   ( 60'd0 ),

    .hunB   (),
    .tenB   (),
    .bil    (),
    .hunM   (),
    .tenM   (),
    .mil    (),
    .hunT   (),
    .tenT   (),
    .thou   (),
    .hund   (),
    .tens   (),
    .ones   (),
    .o_cnt  ( io_out )
   );

endmodule
