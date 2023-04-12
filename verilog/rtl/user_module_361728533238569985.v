/* Automatically generated from https://wokwi.com/projects/361728533238569985 */

`default_nettype none

module user_module_361728533238569985(
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
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17 = 1'b0;
  wire net18 = 1'b1;
  wire net19 = 1'b1;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;
  assign io_out[5] = net14;
  assign io_out[6] = net15;
  assign io_out[7] = net16;

  not_cell not1 (
    .in (net1),
    .out (net9)
  );
  not_cell not2 (
    .in (net2),
    .out (net10)
  );
  not_cell not3 (
    .in (net3),
    .out (net11)
  );
  not_cell not4 (
    .in (net4),
    .out (net12)
  );
  and_cell gate1 (

  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  nand_cell gate4 (

  );
  not_cell gate5 (

  );
  buffer_cell gate6 (

  );
  mux_cell mux1 (

  );
  dff_cell flipflop1 (

  );
  not_cell not5 (
    .in (net5),
    .out (net13)
  );
  not_cell not6 (
    .in (net6),
    .out (net14)
  );
  not_cell not7 (
    .in (net7),
    .out (net15)
  );
  not_cell not8 (
    .in (net8),
    .out (net16)
  );
endmodule
