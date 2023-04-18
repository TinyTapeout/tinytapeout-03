`default_nettype none
`timescale 1ns/1ps

module dwisehart_top
(
 input [7:0]  io_in,
 output [7:0] io_out
);

   // In hardware this module drive LED segments, so we need the slowest changing bits.
   //  Plus I add the three fastest changing bits to probe with a scope.
   grey m_grey
   (
    .io_in( io_in ),
    .hunM( io_out[7:3] ),
    .ones( io_out[2:0] )
   );

endmodule
