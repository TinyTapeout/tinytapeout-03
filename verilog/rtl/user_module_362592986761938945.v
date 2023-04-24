/* Automatically generated from https://wokwi.com/projects/362592986761938945 */

`default_nettype none

module user_module_362592986761938945(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[1];
  wire net2 = io_in[2];
  wire net3 = io_in[3];
  wire net4;
  wire net5;
  wire net6 = 1'b0;
  wire net7 = 1'b1;
  wire net8 = 1'b1;
  wire net9;
  wire net10;
  wire net11;
  wire net12;
  wire net13;
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
  wire net28;
  wire net29;
  wire net30;
  wire net31 = 1'b0;
  wire net32;
  wire net33;
  wire net34;

  assign io_out[0] = net4;
  assign io_out[1] = net5;

  not_cell not1 (
    .in (net3),
    .out (net9)
  );
  not_cell not2 (
    .in (net2),
    .out (net10)
  );
  and_cell and1 (
    .a (net11),
    .b (net12),
    .out (net13)
  );
  and_cell and2 (
    .a (net1),
    .b (net14),
    .out (net15)
  );
  and_cell and3 (
    .a (net11),
    .b (net16),
    .out (net17)
  );
  and_cell and4 (
    .a (net9),
    .b (net2),
    .out (net12)
  );
  and_cell and5 (
    .a (net2),
    .b (net3),
    .out (net18)
  );
  and_cell and6 (
    .a (net10),
    .b (net3),
    .out (net16)
  );
  and_cell and7 (
    .a (net10),
    .b (net9),
    .out (net14)
  );
  not_cell not3 (
    .in (net1),
    .out (net11)
  );
  and_cell and8 (
    .a (net1),
    .b (net18),
    .out (net19)
  );
  or_cell or1 (
    .a (net20),
    .b (net21),
    .out (net4)
  );
  or_cell or2 (
    .a (net13),
    .b (net19),
    .out (net21)
  );
  or_cell or3 (
    .a (net15),
    .b (net17),
    .out (net20)
  );
  not_cell not4 (
    .in (net3),
    .out (net22)
  );
  not_cell not5 (
    .in (net2),
    .out (net23)
  );
  and_cell and9 (
    .a (net2),
    .b (net3),
    .out (net24)
  );
  and_cell and10 (
    .a (net22),
    .b (net2),
    .out (net25)
  );
  and_cell and11 (
    .a (net23),
    .b (net3),
    .out (net26)
  );
  and_cell and12 (
    .a (net23),
    .b (net22),
    .out (net27)
  );
  and_cell and13 (
    .a (net24),
    .b (net7),
    .out (net28)
  );
  and_cell and14 (
    .a (net25),
    .b (net1),
    .out (net29)
  );
  and_cell and15 (
    .a (net26),
    .b (net3),
    .out (net30)
  );
  and_cell and16 (
    .a (net27),
    .b (net31),
    .out (net32)
  );
  or_cell or4 (
    .a (net33),
    .b (net34),
    .out (net5)
  );
  or_cell or5 (
    .a (net29),
    .b (net28),
    .out (net34)
  );
  or_cell or6 (
    .a (net32),
    .b (net30),
    .out (net33)
  );
endmodule
