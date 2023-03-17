/* Automatically generated from https://wokwi.com/projects/359372419264319489 */

`default_nettype none

module user_module_359372419264319489(
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
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;
  wire net27;
  wire net28;
  wire net29;
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;
  assign io_out[5] = net14;
  assign io_out[6] = net15;
  assign io_out[7] = net16;

  or_cell or1 (
    .a (net8),
    .b (net7),
    .out (net20)
  );
  not_cell not1 (
    .in (net20),
    .out (net21)
  );
  xor_cell xor1 (
    .a (net5),
    .b (net21),
    .out (net15)
  );
  or_cell or2 (
    .a (net3),
    .b (net2),
    .out (net22)
  );
  not_cell not2 (
    .in (net22),
    .out (net23)
  );
  xor_cell xor2 (
    .a (net7),
    .b (net23),
    .out (net11)
  );
  or_cell or5 (
    .a (net4),
    .b (net3),
    .out (net24)
  );
  not_cell not5 (
    .in (net24),
    .out (net25)
  );
  xor_cell xor5 (
    .a (net1),
    .b (net25),
    .out (net14)
  );
  or_cell or6 (
    .a (net15),
    .b (net14),
    .out (net26)
  );
  not_cell not6 (
    .in (net26),
    .out (net27)
  );
  xor_cell xor6 (
    .a (net6),
    .b (net27),
    .out (net16)
  );
  or_cell or9 (
    .a (net14),
    .b (net4),
    .out (net28)
  );
  not_cell not9 (
    .in (net28),
    .out (net29)
  );
  xor_cell xor9 (
    .a (net2),
    .b (net29),
    .out (net12)
  );
  or_cell or10 (
    .a (net16),
    .b (net15),
    .out (net30)
  );
  not_cell not10 (
    .in (net30),
    .out (net31)
  );
  xor_cell xor10 (
    .a (net4),
    .b (net31),
    .out (net13)
  );
  or_cell or13 (
    .a (net11),
    .b (net16),
    .out (net32)
  );
  not_cell not13 (
    .in (net32),
    .out (net33)
  );
  xor_cell xor13 (
    .a (net8),
    .b (net33),
    .out (net10)
  );
  or_cell or14 (
    .a (net12),
    .b (net10),
    .out (net34)
  );
  not_cell not14 (
    .in (net34),
    .out (net35)
  );
  xor_cell xor14 (
    .a (net3),
    .b (net35),
    .out (net9)
  );
endmodule
