/* Automatically generated from https://wokwi.com/projects/362441918332875777 */

`default_nettype none

module user_module_362441918332875777(
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
  wire net14 = 1'b0;
  wire net15 = 1'b1;
  wire net16 = 1'b1;
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
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;
  wire net45;
  wire net46;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;

  and_cell and1 (
    .a (net17),
    .b (net1),
    .out (net18)
  );
  and_cell and2 (
    .a (net19),
    .b (net1),
    .out (net20)
  );
  and_cell and3 (
    .a (net21),
    .b (net22),
    .out (net23)
  );
  and_cell and4 (
    .a (net21),
    .b (net2),
    .out (net24)
  );
  and_cell and5 (
    .a (net22),
    .b (net2),
    .out (net25)
  );
  and_cell and6 (
    .a (net26),
    .b (net27),
    .out (net28)
  );
  and_cell and7 (
    .a (net26),
    .b (net3),
    .out (net29)
  );
  and_cell and8 (
    .a (net27),
    .b (net3),
    .out (net30)
  );
  and_cell and9 (
    .a (net17),
    .b (net19),
    .out (net31)
  );
  and_cell and10 (
    .a (net32),
    .b (net4),
    .out (net33)
  );
  and_cell and11 (
    .a (net34),
    .b (net4),
    .out (net35)
  );
  and_cell and12 (
    .a (net34),
    .b (net32),
    .out (net36)
  );
  xor_cell xor1 (
    .a (net17),
    .b (net7),
    .out (net27)
  );
  xor_cell xor2 (
    .a (net17),
    .b (net8),
    .out (net32)
  );
  xor_cell xor3 (
    .a (net19),
    .b (net1),
    .out (net37)
  );
  xor_cell xor4 (
    .a (net22),
    .b (net2),
    .out (net38)
  );
  xor_cell xor5 (
    .a (net27),
    .b (net3),
    .out (net39)
  );
  xor_cell xor6 (
    .a (net32),
    .b (net4),
    .out (net40)
  );
  xor_cell xor7 (
    .a (net17),
    .b (net5),
    .out (net19)
  );
  xor_cell xor8 (
    .a (net17),
    .b (net6),
    .out (net22)
  );
  or_cell or1 (
    .a (net35),
    .b (net33),
    .out (net41)
  );
  or_cell or2 (
    .a (net31),
    .b (net42),
    .out (net21)
  );
  or_cell or3 (
    .a (net23),
    .b (net43),
    .out (net26)
  );
  or_cell or4 (
    .a (net28),
    .b (net44),
    .out (net34)
  );
  or_cell or5 (
    .a (net36),
    .b (net41),
    .out (net45)
  );
  or_cell or6 (
    .a (net18),
    .b (net20),
    .out (net42)
  );
  or_cell or7 (
    .a (net24),
    .b (net25),
    .out (net43)
  );
  or_cell or8 (
    .a (net29),
    .b (net30),
    .out (net44)
  );
  xor_cell xor9 (
    .a (net17),
    .b (net37),
    .out (net9)
  );
  xor_cell xor10 (
    .a (net21),
    .b (net38),
    .out (net10)
  );
  xor_cell xor11 (
    .a (net26),
    .b (net39),
    .out (net11)
  );
  xor_cell xor12 (
    .a (net34),
    .b (net40),
    .out (net12)
  );
  xor_cell xor13 (
    .a (net34),
    .b (net45),
    .out (net13)
  );
  or_cell or9 (
    .a (net46),
    .b (net1),
    .out (net17)
  );
  not_cell not1 (
    .in (net1),
    .out (net46)
  );
endmodule
