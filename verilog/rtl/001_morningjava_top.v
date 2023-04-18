// Title:   Top-level wrapper in Verilog
// File:    morningjava_top.v
// Author:  Wallie Everest
// Date:    09-APR-2023
// URL:     https://github.com/wallieeverest/tt03
// License: Apache 2.0
//
// Description:
// Implementation:
// Stye Guide:
//   https://github.com/lowRISC/style-guides/blob/master/VerilogCodingStyle.md

`default_nettype none

module morningjava_top (
  input  wire [7:0] io_in,
  output wire [7:0] io_out
);
  localparam NUM_DESIGNS = 5;  // 250 for TT03 ASIC, 5 for test FPGA
  localparam NUM_IOS = 8;

  wire tms [0:NUM_DESIGNS];
  wire tck [0:NUM_DESIGNS];
  wire td  [0:NUM_DESIGNS];
  wire [NUM_IOS-1:0] i_data [0:NUM_DESIGNS];
  wire [NUM_IOS-1:0] o_data [0:NUM_DESIGNS];
  wire controller_tck;
  wire controller_tdi;
  wire controller_tms;
  wire rtck;
  genvar i;

  // Pin assignments
  assign io_out[3:0]      = o_data[0][3:0];             // IO_OUT
  assign io_out[4]        = rtck;
  assign io_out[5]        = tck[NUM_DESIGNS];
  assign io_out[6]        = o_data[0][4];
  assign io_out[7]        = td[NUM_DESIGNS];            // TDO
  wire   select           = 8'd1;                       // project selection
  wire   clk              = io_in[0];
  assign i_data[0] = {6'b0, io_in[2:1]};                // IO_IN
  wire   mode             = io_in[3];                   // MODE
  wire   uart_clk         = io_in[4];
  assign tck[0] =  (mode) ? io_in[5] : controller_tck;  // TCK
  assign tms[0] =  (mode) ? io_in[6] : controller_tms;  // TMS
  assign td[0]  =  (mode) ? io_in[7] : controller_tdi;  // TDI

  // Bit-clock generator derived from asynchronous serial data input
  clk_gen clk_gen_inst (
    .clk(uart_clk),
    .rx (io_in[7]),
    .rtck(rtck)
  );

  // Internal scan chain controller
  controller controller_inst (
    .clk   (uart_clk),
    .reset (1'b0),
    .rtck  (tck[NUM_DESIGNS]),
    .tdo   (td[NUM_DESIGNS]),
    .addr  (select),
    .i_pins(i_data[0]),
    .o_pins(o_data[0]),
    .tck   (controller_tck),
    .tms   (controller_tms),
    .tdi   (controller_tdi)
  );

  // Tap instances for scan chain
  for (i=1; i<=NUM_DESIGNS; i=i+1) begin : tap_gen
    localparam [7:0] address = i;
    tap tap_inst (
      .i_tck   (tck[i-1]),
      .i_tms   (tms[i-1]),
      .i_tdi   (td[i-1]),
      .address (address),
      .outbound(o_data[i]),
      .inbound (i_data[i]),
      .o_tck   (tck[i]),
      .o_tms   (tms[i]),
      .o_tdo   (td[i])
    );
  end

  // Default data loopback for unused project locations
  for (i=1; i<=NUM_DESIGNS; i=i+1) begin
    assign o_data[i] = ~i_data[i];
  end
  
  // *** Project list ***
  // User_01

endmodule
