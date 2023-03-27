/* Automatically generated from https://wokwi.com/projects/359357227471086593 */

`default_nettype none

module user_module_359357227471086593(
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
  wire net9 = 1'b0;
  wire net10 = 1'b1;
  wire net11;
  wire net12 = 1'b0;
  wire net13;
  wire net14;
  wire net15 = 1'b0;
  wire net16;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24 = 1'b0;
  wire net25;
  wire net26;
  wire net27 = 1'b1;
  wire net28;
  wire net29 = 1'b1;
  wire net30;
  wire net31;
  wire net32 = 1'b0;
  wire net33;
  wire net34 = 1'b1;
  wire net35;
  wire net36;
  wire net37 = 1'b1;
  wire net38;
  wire net39 = 1'b0;
  wire net40;
  wire net41;
  wire net42 = 1'b0;
  wire net43;
  wire net44 = 1'b0;
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;
  wire net55;
  wire net56;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
  wire net66;
  wire net67;
  wire net68;
  wire net69 = 1'b0;

  assign io_out[0] = net8;
  assign io_out[1] = net9;
  assign io_out[2] = net9;
  assign io_out[3] = net9;
  assign io_out[4] = net9;
  assign io_out[5] = net9;
  assign io_out[6] = net9;
  assign io_out[7] = net9;

  dffsr_cell flop1 (
    .d (net11),
    .clk (net2),
    .s (net12),
    .r (net1),
    .q (net13)
  );
  dffsr_cell flop2 (
    .d (net14),
    .clk (net2),
    .s (net15),
    .r (net1),
    .q (net16)
  );
  not_cell not1 (
    .in (net13),
    .out (net17)
  );
  not_cell not2 (
    .in (net16),
    .out (net18)
  );
  not_cell not3 (
    .in (net16),
    .out (net19)
  );
  and_cell and1 (
    .a (net17),
    .b (net18),
    .out (net20)
  );
  and_cell and2 (
    .a (net13),
    .b (net19),
    .out (net21)
  );
  not_cell not4 (
    .in (net13),
    .out (net22)
  );
  and_cell and3 (
    .a (net22),
    .b (net16),
    .out (net23)
  );
  and_cell and4 (
    .a (net13),
    .b (net16),
    .out (net8)
  );
  and_cell and5 (
    .a (net24),
    .b (net25),
    .out (net26)
  );
  and_cell and6 (
    .a (net25),
    .b (net27),
    .out (net28)
  );
  and_cell and7 (
    .a (net29),
    .b (net30),
    .out (net31)
  );
  and_cell and8 (
    .a (net30),
    .b (net32),
    .out (net33)
  );
  and_cell and9 (
    .a (net34),
    .b (net35),
    .out (net36)
  );
  and_cell and10 (
    .a (net35),
    .b (net37),
    .out (net38)
  );
  and_cell and11 (
    .a (net39),
    .b (net40),
    .out (net41)
  );
  and_cell and12 (
    .a (net40),
    .b (net42),
    .out (net43)
  );
  and_cell and13 (
    .a (net8),
    .b (net44),
    .out (net40)
  );
  and_cell and14 (
    .a (net23),
    .b (net45),
    .out (net35)
  );
  and_cell and15 (
    .a (net21),
    .b (net46),
    .out (net30)
  );
  and_cell and16 (
    .a (net20),
    .b (net47),
    .out (net25)
  );
  and_cell and18 (
    .a (net48),
    .b (net7),
    .out (net49)
  );
  not_cell not5 (
    .in (net6),
    .out (net48)
  );
  and_cell and17 (
    .a (net50),
    .b (net51),
    .out (net52)
  );
  not_cell not6 (
    .in (net3),
    .out (net53)
  );
  not_cell not7 (
    .in (net4),
    .out (net50)
  );
  not_cell not8 (
    .in (net5),
    .out (net51)
  );
  and_cell and20 (
    .a (net53),
    .b (net52),
    .out (net54)
  );
  and_cell and21 (
    .a (net54),
    .b (net49),
    .out (net47)
  );
  and_cell and22 (
    .a (net6),
    .b (net55),
    .out (net56)
  );
  not_cell not9 (
    .in (net7),
    .out (net55)
  );
  and_cell and23 (
    .a (net57),
    .b (net5),
    .out (net58)
  );
  not_cell not10 (
    .in (net3),
    .out (net59)
  );
  not_cell not11 (
    .in (net4),
    .out (net57)
  );
  and_cell and25 (
    .a (net59),
    .b (net58),
    .out (net60)
  );
  and_cell and26 (
    .a (net60),
    .b (net56),
    .out (net46)
  );
  and_cell and27 (
    .a (net6),
    .b (net7),
    .out (net61)
  );
  and_cell and28 (
    .a (net62),
    .b (net5),
    .out (net63)
  );
  not_cell not15 (
    .in (net4),
    .out (net62)
  );
  and_cell and30 (
    .a (net3),
    .b (net63),
    .out (net64)
  );
  and_cell and31 (
    .a (net64),
    .b (net61),
    .out (net45)
  );
  or_cell or1 (
    .a (net65),
    .b (net66),
    .out (net11)
  );
  or_cell or2 (
    .a (net28),
    .b (net33),
    .out (net65)
  );
  or_cell or3 (
    .a (net38),
    .b (net43),
    .out (net66)
  );
  or_cell or4 (
    .a (net67),
    .b (net68),
    .out (net14)
  );
  or_cell or5 (
    .a (net26),
    .b (net31),
    .out (net67)
  );
  or_cell or6 (
    .a (net36),
    .b (net41),
    .out (net68)
  );
endmodule
