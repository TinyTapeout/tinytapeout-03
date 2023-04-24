/* Automatically generated from https://wokwi.com/projects/362633503928580097 */

`default_nettype none

module user_module_362633503928580097(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[4];
  wire net4 = io_in[5];
  wire net5 = io_in[7];
  wire net6;
  wire net7;
  wire net8;
  wire net9 = 1'b0;
  wire net10 = 1'b1;
  wire net11;

  assign io_out[0] = net1;
  assign io_out[1] = net6;
  assign io_out[2] = net6;
  assign io_out[3] = net7;
  assign io_out[4] = net3;
  assign io_out[5] = net4;
  assign io_out[6] = net8;
  assign io_out[7] = net5;

  or_cell or1 (
    .a (net1),
    .b (net11),
    .out (net6)
  );
  not_cell not1 (
    .in (net2),
    .out (net11)
  );
  xor_cell xor1 (
    .a (net2),
    .b (net1),
    .out (net7)
  );
  not_cell not2 (
    .in (net7),
    .out (net8)
  );
endmodule
