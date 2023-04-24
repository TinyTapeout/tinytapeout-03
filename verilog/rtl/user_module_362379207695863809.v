/* Automatically generated from https://wokwi.com/projects/362379207695863809 */

`default_nettype none

module user_module_362379207695863809(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[1];
  wire net2 = io_in[2];
  wire net3 = io_in[3];
  wire net4 = io_in[4];
  wire net5 = io_in[5];
  wire net6 = io_in[6];
  wire net7;
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12;
  wire net13 = 1'b0;
  wire net14 = 1'b1;
  wire net15 = 1'b1;
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
  wire net28;
  wire net29;
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;
  wire net36;
  wire net37;
  wire net38;
  wire net39;

  assign io_out[1] = net7;
  assign io_out[2] = net8;
  assign io_out[3] = net9;
  assign io_out[4] = net10;
  assign io_out[5] = net11;
  assign io_out[6] = net12;

  and_cell and1 (
    .a (net1),
    .b (net4),
    .out (net7)
  );
  and_cell and2 (
    .a (net2),
    .b (net4),
    .out (net16)
  );
  and_cell and3 (
    .a (net3),
    .b (net4),
    .out (net17)
  );
  and_cell and4 (
    .a (net1),
    .b (net5),
    .out (net18)
  );
  and_cell and5 (
    .a (net2),
    .b (net5),
    .out (net19)
  );
  and_cell and6 (
    .a (net3),
    .b (net5),
    .out (net20)
  );
  and_cell and7 (
    .a (net1),
    .b (net6),
    .out (net21)
  );
  and_cell and8 (
    .a (net2),
    .b (net6),
    .out (net22)
  );
  and_cell and9 (
    .a (net3),
    .b (net6),
    .out (net23)
  );
  xor_cell xor1 (
    .a (net16),
    .b (net18),
    .out (net8)
  );
  and_cell and10 (
    .a (net16),
    .b (net18),
    .out (net24)
  );
  xor_cell xor3 (
    .a (net17),
    .b (net19),
    .out (net25)
  );
  and_cell and12 (
    .a (net17),
    .b (net19),
    .out (net26)
  );
  xor_cell xor4 (
    .a (net24),
    .b (net25),
    .out (net27)
  );
  and_cell and13 (
    .a (net24),
    .b (net25),
    .out (net28)
  );
  or_cell or2 (
    .a (net26),
    .b (net28),
    .out (net29)
  );
  xor_cell xor5 (
    .a (net27),
    .b (net21),
    .out (net9)
  );
  and_cell and14 (
    .a (net27),
    .b (net21),
    .out (net30)
  );
  xor_cell xor6 (
    .a (net29),
    .b (net31),
    .out (net32)
  );
  xor_cell xor7 (
    .a (net20),
    .b (net22),
    .out (net31)
  );
  and_cell and16 (
    .a (net20),
    .b (net22),
    .out (net33)
  );
  and_cell and17 (
    .a (net29),
    .b (net31),
    .out (net34)
  );
  or_cell or4 (
    .a (net34),
    .b (net33),
    .out (net35)
  );
  xor_cell xor8 (
    .a (net35),
    .b (net23),
    .out (net36)
  );
  and_cell and18 (
    .a (net35),
    .b (net23),
    .out (net37)
  );
  xor_cell xor9 (
    .a (net30),
    .b (net32),
    .out (net10)
  );
  and_cell and11 (
    .a (net30),
    .b (net32),
    .out (net38)
  );
  xor_cell xor10 (
    .a (net38),
    .b (net36),
    .out (net11)
  );
  and_cell and19 (
    .a (net36),
    .b (net38),
    .out (net39)
  );
  or_cell or1 (
    .a (net37),
    .b (net39),
    .out (net12)
  );
endmodule
