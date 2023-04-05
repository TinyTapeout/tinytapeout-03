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
  wire          aclk;
  wire          blank;
  wire          green;
  wire          arst;
  wire          sclk;
  wire          latch;
  wire [2:0]    rowmax;

  assign io_out[0] = red;
  assign io_out[1] = blue;
  assign io_out[2] = aclk;
  assign io_out[3] = blank;
  assign io_out[4] = green;
  assign io_out[5] = arst;
  assign io_out[6] = sclk;
  assign io_out[7] = latch;

  assign clk       = io_in[0];
  assign rst       = io_in[1];

  // instantiate the component
  led_panel_single top(.clk(clk),
                       .reset(rst), 
                       .red_out(red),     
                       .blue_out(blue),    
                       .aclk_out(aclk),    
                       .blank_out(blank),   
                       .green_out(green),  
                       .arst_out(arst),    
                       .sclk_out(sclk),    
                       .latch_out(latch)
                       );              
  
endmodule
