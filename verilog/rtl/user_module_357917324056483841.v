/* Automatically generated from https://wokwi.com/projects/357917324056483841 */

`default_nettype none

module user_module_357917324056483841(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5;
  wire net6 = 1'b0;
  wire net7 = 1'b1;
  wire net8 = 1'b1;
  wire net9;
  wire net10;

  assign io_out[0] = net5;
  assign io_out[1] = net5;
  assign io_out[2] = net5;
  assign io_out[3] = net5;
  assign io_out[6] = net5;

  and_cell and1 (
    .a (net1),
    .b (net2),
    .out (net9)
  );
  and_cell and2 (
    .a (net3),
    .b (net4),
    .out (net10)
  );
  and_cell and3 (
    .a (net9),
    .b (net10),
    .out (net5)
  );
endmodule
