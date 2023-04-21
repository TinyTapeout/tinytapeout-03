`default_nettype none
`timescale 1ns/1ps

module dwisehart_top
(
 input [7:0]  io_in,
 output [7:0] io_out
);

   wire [1:0] w_foo2;
   grey m_grey
   (
    .init   ( 60'd0 ),
    .io_in  ( io_in ),
    .io_out ( io_out )
   );

endmodule
