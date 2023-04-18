`default_nettype none

module tomkeddie_top_tto_a
  #(parameter CLOCK_RATE=1000)
  (
   input [7:0]  io_in,
   output [7:0] io_out
   );

  wire          clk;
  wire          rst;
  wire          red; 
  wire          blue;
  wire          blank;
  wire          green;
  wire          sclk;
  wire          latch;
  wire [2:0]    rowmax;
  wire          a;
  wire          b;
  wire          uart_data;
  wire          mode;

  assign io_out[0] = red;
  assign io_out[1] = blue;
  assign io_out[2] = b;
  assign io_out[3] = blank;
  assign io_out[4] = green;
  assign io_out[5] = a;
  assign io_out[6] = sclk;
  assign io_out[7] = latch;

  assign clk       = io_in[0];
  assign rst       = io_in[1];
  assign uart_data = io_in[2];
  assign mode      = io_in[3];

  // instantiate the component
  led_panel_single top(.clk(clk),
                       .reset(rst),
                       .uart_data(uart_data),
                       .mode(mode),
                       .red_out(red),     
                       .blue_out(blue),    
                       .blank_out(blank),   
                       .green_out(green),  
                       .a_out(a),
                       .b_out(b),
                       .sclk_out(sclk),    
                       .latch_out(latch)
                       );              
  
endmodule
