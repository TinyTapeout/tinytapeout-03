/* Automatically generated from https://wokwi.com/projects/362788954641333249 */

`default_nettype none

module user_module_362788954641333249(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8;
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
  wire net69;
  wire net70;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75;
  wire net76;
  wire net77 = 1'b1;
  wire net78 = 1'b0;
  wire net79;
  wire net80;
  wire net81;
  wire net82 = 1'b0;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88 = 1'b0;
  wire net89;

  assign io_out[0] = net4;
  assign io_out[1] = net5;
  assign io_out[2] = net6;
  assign io_out[3] = net7;
  assign io_out[4] = net8;

  and_cell and1 (
    .a (net9),
    .b (net10),
    .out (net11)
  );
  and_cell and2 (
    .a (net12),
    .b (net13),
    .out (net14)
  );
  and_cell and3 (
    .a (net15),
    .b (net10),
    .out (net16)
  );
  and_cell and4 (
    .a (net16),
    .b (net17),
    .out (net18)
  );
  and_cell and5 (
    .a (net15),
    .b (net19),
    .out (net12)
  );
  and_cell and6 (
    .a (net11),
    .b (net13),
    .out (net20)
  );
  or_cell or1 (
    .a (net14),
    .b (net18),
    .out (net21)
  );
  or_cell or2 (
    .a (net21),
    .b (net20),
    .out (net22)
  );
  or_cell or4 (
    .a (net23),
    .b (net22),
    .out (net24)
  );
  not_cell not5 (
    .in (net25),
    .out (net26)
  );
  and_cell and7 (
    .a (net27),
    .b (net13),
    .out (net28)
  );
  and_cell and8 (
    .a (net9),
    .b (net13),
    .out (net29)
  );
  and_cell and9 (
    .a (net10),
    .b (net9),
    .out (net30)
  );
  and_cell and10 (
    .a (net31),
    .b (net19),
    .out (net27)
  );
  and_cell and11 (
    .a (net31),
    .b (net9),
    .out (net32)
  );
  and_cell and12 (
    .a (net31),
    .b (net10),
    .out (net33)
  );
  or_cell or3 (
    .a (net32),
    .b (net29),
    .out (net34)
  );
  or_cell or5 (
    .a (net30),
    .b (net28),
    .out (net35)
  );
  or_cell or6 (
    .a (net36),
    .b (net37),
    .out (net38)
  );
  and_cell and13 (
    .a (net23),
    .b (net10),
    .out (net39)
  );
  and_cell and14 (
    .a (net33),
    .b (net17),
    .out (net36)
  );
  and_cell and15 (
    .a (net39),
    .b (net13),
    .out (net37)
  );
  and_cell and16 (
    .a (net40),
    .b (net19),
    .out (net41)
  );
  and_cell and17 (
    .a (net41),
    .b (net17),
    .out (net42)
  );
  and_cell and18 (
    .a (net23),
    .b (net15),
    .out (net40)
  );
  or_cell or7 (
    .a (net38),
    .b (net42),
    .out (net43)
  );
  or_cell or8 (
    .a (net34),
    .b (net35),
    .out (net44)
  );
  or_cell or9 (
    .a (net44),
    .b (net43),
    .out (net45)
  );
  dff_cell flop1 (
    .d (net45),
    .clk (net1),
    .q (net46),
    .notq (net47)
  );
  dff_cell flop2 (
    .d (net24),
    .clk (net1),
    .q (net48),
    .notq (net49)
  );
  and_cell and19 (
    .a (net50),
    .b (net46),
    .out (net51)
  );
  and_cell and20 (
    .a (net52),
    .b (net46),
    .out (net53)
  );
  and_cell and21 (
    .a (net52),
    .b (net48),
    .out (net54)
  );
  and_cell and22 (
    .a (net55),
    .b (net49),
    .out (net50)
  );
  and_cell and23 (
    .a (net55),
    .b (net52),
    .out (net56)
  );
  or_cell or10 (
    .a (net56),
    .b (net53),
    .out (net57)
  );
  or_cell or11 (
    .a (net54),
    .b (net51),
    .out (net58)
  );
  and_cell and24 (
    .a (net59),
    .b (net49),
    .out (net60)
  );
  and_cell and25 (
    .a (net46),
    .b (net26),
    .out (net61)
  );
  and_cell and26 (
    .a (net26),
    .b (net48),
    .out (net62)
  );
  and_cell and27 (
    .a (net52),
    .b (net55),
    .out (net59)
  );
  and_cell and28 (
    .a (net63),
    .b (net26),
    .out (net64)
  );
  or_cell or12 (
    .a (net64),
    .b (net61),
    .out (net65)
  );
  or_cell or13 (
    .a (net62),
    .b (net66),
    .out (net67)
  );
  and_cell and29 (
    .a (net60),
    .b (net47),
    .out (net66)
  );
  or_cell or18 (
    .a (net65),
    .b (net67),
    .out (net68)
  );
  or_cell or19 (
    .a (net57),
    .b (net58),
    .out (net69)
  );
  not_cell not7 (
    .in (net70),
    .out (net25)
  );
  not_cell not8 (
    .in (net71),
    .out (net52)
  );
  not_cell not9 (
    .in (net72),
    .out (net71)
  );
  not_cell not10 (
    .in (net70),
    .out (net55)
  );
  not_cell not11 (
    .in (net72),
    .out (net63)
  );
  not_cell not12 (
    .in (net73),
    .out (net9)
  );
  not_cell not13 (
    .in (net70),
    .out (net73)
  );
  not_cell not14 (
    .in (net74),
    .out (net23)
  );
  not_cell not15 (
    .in (net72),
    .out (net74)
  );
  not_cell not16 (
    .in (net70),
    .out (net15)
  );
  not_cell not17 (
    .in (net72),
    .out (net31)
  );
  not_cell not18 (
    .in (net75),
    .out (net13)
  );
  not_cell not19 (
    .in (net46),
    .out (net75)
  );
  not_cell not20 (
    .in (net76),
    .out (net10)
  );
  not_cell not21 (
    .in (net48),
    .out (net76)
  );
  not_cell not22 (
    .in (net46),
    .out (net17)
  );
  not_cell not23 (
    .in (net48),
    .out (net19)
  );
  and_cell and41 (
    .a (net69),
    .b (net79),
    .out (net5)
  );
  and_cell and42 (
    .a (net80),
    .b (net81),
    .out (net4)
  );
  and_cell and44 (
    .a (net69),
    .b (net68),
    .out (net7)
  );
  not_cell not1 (
    .in (net69),
    .out (net80)
  );
  not_cell not2 (
    .in (net68),
    .out (net81)
  );
  not_cell not3 (
    .in (net68),
    .out (net79)
  );
  and_cell and45 (
    .a (net83),
    .b (net68),
    .out (net6)
  );
  not_cell not4 (
    .in (net69),
    .out (net83)
  );
  dff_cell flop3 (
    .d (net2),
    .clk (net1),
    .q (net84)
  );
  dff_cell flop4 (
    .d (net84),
    .clk (net1),
    .q (net72)
  );
  dff_cell flop5 (
    .d (net3),
    .clk (net1),
    .q (net85)
  );
  dff_cell flop6 (
    .d (net85),
    .clk (net1),
    .q (net70)
  );
  dffsr_cell flop8 (
    .d (net86),
    .clk (net1),
    .s (net87),
    .r (net88),
    .q (net8)
  );
  and_cell and39 (
    .a (net8),
    .b (net89),
    .out (net87)
  );
  or_cell or20 (
    .a (net68),
    .b (net69),
    .out (net89)
  );
  and_cell and40 (
    .a (net69),
    .b (net68),
    .out (net86)
  );
endmodule
