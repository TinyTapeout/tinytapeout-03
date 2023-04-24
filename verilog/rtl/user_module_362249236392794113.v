/* Automatically generated from https://wokwi.com/projects/362249236392794113 */

`default_nettype none

module user_module_362249236392794113(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[1];
  wire net2 = io_in[2];
  wire net3 = io_in[3];
  wire net4 = io_in[4];
  wire net5 = io_in[5];
  wire net6 = io_in[6];
  wire net7 = io_in[7];
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;
  wire net27;
  wire net28 = 1'b1;

  assign io_out[0] = net8;
  assign io_out[1] = net9;
  assign io_out[2] = net10;
  assign io_out[3] = net11;

  xor_cell xor1 (
    .a (net1),
    .b (net14),
    .out (net15)
  );
  xor_cell xor2 (
    .a (net4),
    .b (net7),
    .out (net14)
  );
  xor_cell xor3 (
    .a (net15),
    .b (net7),
    .out (net8)
  );
  xor_cell xor4 (
    .a (net2),
    .b (net16),
    .out (net17)
  );
  xor_cell xor5 (
    .a (net3),
    .b (net18),
    .out (net19)
  );
  xor_cell xor6 (
    .a (net5),
    .b (net7),
    .out (net16)
  );
  xor_cell xor7 (
    .a (net17),
    .b (net20),
    .out (net9)
  );
  xor_cell xor8 (
    .a (net19),
    .b (net21),
    .out (net10)
  );
  xor_cell xor9 (
    .a (net6),
    .b (net7),
    .out (net18)
  );
  and_cell and1 (
    .a (net1),
    .b (net14),
    .out (net22)
  );
  and_cell and2 (
    .a (net17),
    .b (net20),
    .out (net23)
  );
  and_cell and3 (
    .a (net2),
    .b (net16),
    .out (net24)
  );
  and_cell and4 (
    .a (net15),
    .b (net7),
    .out (net25)
  );
  and_cell and5 (
    .a (net3),
    .b (net18),
    .out (net26)
  );
  and_cell and6 (
    .a (net19),
    .b (net21),
    .out (net27)
  );
  or_cell or1 (
    .a (net25),
    .b (net22),
    .out (net20)
  );
  or_cell or2 (
    .a (net23),
    .b (net24),
    .out (net21)
  );
  or_cell or3 (
    .a (net27),
    .b (net26),
    .out (net11)
  );
endmodule
