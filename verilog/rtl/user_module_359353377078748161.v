/* Automatically generated from https://wokwi.com/projects/359353377078748161 */

`default_nettype none

module user_module_359353377078748161(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9 = 1'b0;
  wire net10 = 1'b1;
  wire net11 = 1'b1;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19;

  assign io_out[0] = net5;
  assign io_out[1] = net6;
  assign io_out[2] = net7;
  assign io_out[3] = net8;

  xor_cell xor1 (

  );
  or_cell or1 (
    .a (net4),
    .b (net3),
    .out (net12)
  );
  not_cell not1 (
    .in (net12),
    .out (net13)
  );
  or_cell or2 (
    .a (net3),
    .b (net2),
    .out (net14)
  );
  not_cell not2 (
    .in (net14),
    .out (net15)
  );
  or_cell or3 (
    .a (net2),
    .b (net8),
    .out (net16)
  );
  not_cell not3 (
    .in (net16),
    .out (net17)
  );
  or_cell or4 (
    .a (net8),
    .b (net7),
    .out (net18)
  );
  not_cell not4 (
    .in (net18),
    .out (net19)
  );
  xor_cell xor2 (
    .a (net1),
    .b (net13),
    .out (net8)
  );
  xor_cell xor3 (
    .a (net4),
    .b (net15),
    .out (net7)
  );
  xor_cell xor4 (
    .a (net3),
    .b (net17),
    .out (net6)
  );
  xor_cell xor5 (
    .a (net2),
    .b (net19),
    .out (net5)
  );
endmodule
