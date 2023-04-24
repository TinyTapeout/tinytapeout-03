/* Automatically generated from https://wokwi.com/projects/362833471952037889 */

`default_nettype none

module user_module_362833471952037889(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5 = io_in[4];
  wire net6 = io_in[5];
  wire net7 = io_in[6];
  wire net8 = io_in[7];
  wire net9;
  wire net10 = 1'b0;
  wire net11 = 1'b1;
  wire net12 = 1'b1;
  wire net13;
  wire net14;
  wire net15;

  assign io_out[0] = net9;

  mux_cell mux3 (
    .a (net13),
    .b (net14),
    .sel (net1),
    .out (net15)
  );
  mux_cell mux4 (
    .a (net2),
    .b (net3),
    .sel (net7),
    .out (net13)
  );
  mux_cell mux1 (
    .a (net4),
    .b (net5),
    .sel (net7),
    .out (net14)
  );
  mux_cell mux5 (
    .a (net15),
    .b (net6),
    .sel (net8),
    .out (net9)
  );
endmodule
