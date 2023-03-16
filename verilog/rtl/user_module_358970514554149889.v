/* Automatically generated from https://wokwi.com/projects/358970514554149889 */

`default_nettype none

module user_module_358970514554149889(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5 = io_in[7];
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
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81;
  wire net82;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88;
  wire net89;
  wire net90;
  wire net91;
  wire net92;
  wire net93;
  wire net94;
  wire net95;
  wire net96;
  wire net97;
  wire net98;
  wire net99;
  wire net100;
  wire net101;
  wire net102;
  wire net103;
  wire net104;
  wire net105;
  wire net106;
  wire net107;
  wire net108;
  wire net109 = 1'b1;
  wire net110 = 1'b1;
  wire net111 = 1'b0;

  assign io_out[0] = net6;
  assign io_out[1] = net7;
  assign io_out[2] = net8;
  assign io_out[3] = net9;
  assign io_out[4] = net10;
  assign io_out[5] = net11;
  assign io_out[6] = net12;

  buffer_cell input_w (
    .in (net13),
    .out (net14)
  );
  not_cell input_not_w (
    .in (net13),
    .out (net15)
  );
  buffer_cell input_x (
    .in (net16),
    .out (net17)
  );
  not_cell input_not_x (
    .in (net16),
    .out (net18)
  );
  buffer_cell input_y (
    .in (net19),
    .out (net20)
  );
  not_cell input_not_y (
    .in (net19),
    .out (net21)
  );
  buffer_cell input_z (
    .in (net22),
    .out (net23)
  );
  not_cell input_not_z (
    .in (net22),
    .out (net24)
  );
  and_cell gate_and_0 (
    .a (net15),
    .b (net17),
    .out (net25)
  );
  and_cell gate_and_1 (
    .a (net23),
    .b (net23),
    .out (net26)
  );
  and_cell gate_and_2 (
    .a (net15),
    .b (net18),
    .out (net27)
  );
  and_cell gate_and_3 (
    .a (net24),
    .b (net24),
    .out (net28)
  );
  and_cell gate_and_4 (
    .a (net15),
    .b (net20),
    .out (net29)
  );
  and_cell gate_and_5 (
    .a (net23),
    .b (net23),
    .out (net30)
  );
  and_cell gate_and_6 (
    .a (net14),
    .b (net18),
    .out (net31)
  );
  and_cell gate_and_7 (
    .a (net21),
    .b (net21),
    .out (net32)
  );
  and_cell gate_and_8 (
    .a (net15),
    .b (net18),
    .out (net33)
  );
  and_cell gate_and_9 (
    .a (net15),
    .b (net20),
    .out (net34)
  );
  and_cell gate_and_10 (
    .a (net23),
    .b (net23),
    .out (net35)
  );
  and_cell gate_and_11 (
    .a (net18),
    .b (net21),
    .out (net36)
  );
  and_cell gate_and_12 (
    .a (net15),
    .b (net21),
    .out (net37)
  );
  and_cell gate_and_13 (
    .a (net24),
    .b (net24),
    .out (net38)
  );
  and_cell gate_and_14 (
    .a (net15),
    .b (net23),
    .out (net39)
  );
  and_cell gate_and_15 (
    .a (net15),
    .b (net17),
    .out (net40)
  );
  and_cell gate_and_16 (
    .a (net18),
    .b (net21),
    .out (net41)
  );
  and_cell gate_and_17 (
    .a (net15),
    .b (net20),
    .out (net42)
  );
  and_cell gate_and_18 (
    .a (net24),
    .b (net24),
    .out (net43)
  );
  and_cell gate_and_19 (
    .a (net15),
    .b (net17),
    .out (net44)
  );
  and_cell gate_and_20 (
    .a (net21),
    .b (net23),
    .out (net45)
  );
  and_cell gate_and_21 (
    .a (net18),
    .b (net21),
    .out (net46)
  );
  and_cell gate_and_22 (
    .a (net24),
    .b (net24),
    .out (net47)
  );
  and_cell gate_and_23 (
    .a (net15),
    .b (net18),
    .out (net48)
  );
  and_cell gate_and_24 (
    .a (net20),
    .b (net20),
    .out (net49)
  );
  and_cell gate_and_25 (
    .a (net15),
    .b (net20),
    .out (net50)
  );
  and_cell gate_and_26 (
    .a (net24),
    .b (net24),
    .out (net51)
  );
  and_cell gate_and_27 (
    .a (net18),
    .b (net21),
    .out (net52)
  );
  and_cell gate_and_28 (
    .a (net24),
    .b (net24),
    .out (net53)
  );
  and_cell gate_and_29 (
    .a (net15),
    .b (net17),
    .out (net54)
  );
  and_cell gate_and_30 (
    .a (net24),
    .b (net24),
    .out (net55)
  );
  and_cell gate_and_31 (
    .a (net15),
    .b (net17),
    .out (net56)
  );
  and_cell gate_and_32 (
    .a (net21),
    .b (net21),
    .out (net57)
  );
  and_cell gate_and_33 (
    .a (net18),
    .b (net21),
    .out (net58)
  );
  and_cell gate_and_34 (
    .a (net24),
    .b (net24),
    .out (net59)
  );
  and_cell gate_and_35 (
    .a (net14),
    .b (net18),
    .out (net60)
  );
  and_cell gate_and_36 (
    .a (net21),
    .b (net21),
    .out (net61)
  );
  and_cell gate_and_37 (
    .a (net15),
    .b (net20),
    .out (net62)
  );
  and_cell gate_and_38 (
    .a (net24),
    .b (net24),
    .out (net63)
  );
  and_cell gate_and_39 (
    .a (net15),
    .b (net17),
    .out (net64)
  );
  and_cell gate_and_40 (
    .a (net21),
    .b (net21),
    .out (net65)
  );
  and_cell gate_and_41 (
    .a (net15),
    .b (net18),
    .out (net66)
  );
  and_cell gate_and_42 (
    .a (net20),
    .b (net20),
    .out (net67)
  );
  and_cell gate_and_43 (
    .a (net14),
    .b (net18),
    .out (net68)
  );
  and_cell gate_and_44 (
    .a (net21),
    .b (net21),
    .out (net69)
  );
  and_cell gate_and_45 (
    .a (net25),
    .b (net26),
    .out (net70)
  );
  and_cell gate_and_46 (
    .a (net27),
    .b (net28),
    .out (net71)
  );
  and_cell gate_and_47 (
    .a (net29),
    .b (net30),
    .out (net72)
  );
  and_cell gate_and_48 (
    .a (net31),
    .b (net32),
    .out (net73)
  );
  and_cell gate_and_49 (
    .a (net34),
    .b (net35),
    .out (net74)
  );
  and_cell gate_and_50 (
    .a (net37),
    .b (net38),
    .out (net75)
  );
  and_cell gate_and_51 (
    .a (net42),
    .b (net43),
    .out (net76)
  );
  and_cell gate_and_52 (
    .a (net44),
    .b (net45),
    .out (net77)
  );
  and_cell gate_and_53 (
    .a (net46),
    .b (net47),
    .out (net78)
  );
  and_cell gate_and_54 (
    .a (net49),
    .b (net48),
    .out (net79)
  );
  and_cell gate_and_55 (
    .a (net50),
    .b (net51),
    .out (net80)
  );
  and_cell gate_and_56 (
    .a (net52),
    .b (net53),
    .out (net81)
  );
  and_cell gate_and_57 (
    .a (net54),
    .b (net55),
    .out (net82)
  );
  and_cell gate_and_58 (
    .a (net57),
    .b (net56),
    .out (net83)
  );
  and_cell gate_and_59 (
    .a (net58),
    .b (net59),
    .out (net84)
  );
  and_cell gate_and_60 (
    .a (net60),
    .b (net61),
    .out (net85)
  );
  and_cell gate_and_61 (
    .a (net62),
    .b (net63),
    .out (net86)
  );
  and_cell gate_and_62 (
    .a (net65),
    .b (net64),
    .out (net87)
  );
  and_cell gate_and_63 (
    .a (net66),
    .b (net67),
    .out (net88)
  );
  and_cell gate_and_64 (
    .a (net68),
    .b (net69),
    .out (net89)
  );
  or_cell gate_or_0 (
    .a (net70),
    .b (net71),
    .out (net90)
  );
  or_cell gate_or_1 (
    .a (net72),
    .b (net73),
    .out (net91)
  );
  or_cell gate_or_2 (
    .a (net33),
    .b (net74),
    .out (net92)
  );
  or_cell gate_or_3 (
    .a (net36),
    .b (net75),
    .out (net93)
  );
  or_cell gate_or_4 (
    .a (net39),
    .b (net40),
    .out (net94)
  );
  or_cell gate_or_5 (
    .a (net41),
    .b (net41),
    .out (net95)
  );
  or_cell gate_or_6 (
    .a (net76),
    .b (net77),
    .out (net96)
  );
  or_cell gate_or_7 (
    .a (net78),
    .b (net79),
    .out (net97)
  );
  or_cell gate_or_8 (
    .a (net80),
    .b (net81),
    .out (net98)
  );
  or_cell gate_or_9 (
    .a (net82),
    .b (net83),
    .out (net99)
  );
  or_cell gate_or_10 (
    .a (net84),
    .b (net85),
    .out (net100)
  );
  or_cell gate_or_11 (
    .a (net86),
    .b (net87),
    .out (net101)
  );
  or_cell gate_or_12 (
    .a (net88),
    .b (net89),
    .out (net102)
  );
  or_cell gate_or_13 (
    .a (net90),
    .b (net91),
    .out (net103)
  );
  or_cell gate_or_14 (
    .a (net92),
    .b (net93),
    .out (net104)
  );
  or_cell gate_or_15 (
    .a (net94),
    .b (net95),
    .out (net105)
  );
  or_cell gate_or_16 (
    .a (net96),
    .b (net97),
    .out (net106)
  );
  or_cell gate_or_17 (
    .a (net99),
    .b (net100),
    .out (net107)
  );
  or_cell gate_or_18 (
    .a (net101),
    .b (net102),
    .out (net108)
  );
  buffer_cell output_A (
    .in (net103),
    .out (net6)
  );
  buffer_cell output_B (
    .in (net104),
    .out (net7)
  );
  buffer_cell output_C (
    .in (net105),
    .out (net8)
  );
  buffer_cell output_D (
    .in (net106),
    .out (net9)
  );
  buffer_cell output_E (
    .in (net98),
    .out (net10)
  );
  buffer_cell output_F (
    .in (net107),
    .out (net11)
  );
  buffer_cell output_G (
    .in (net108),
    .out (net12)
  );
  dff_cell flop1 (
    .d (net1),
    .clk (net5),
    .q (net13)
  );
  dff_cell flop2 (
    .d (net2),
    .clk (net5),
    .q (net16)
  );
  dff_cell flop3 (
    .d (net3),
    .clk (net5),
    .q (net19)
  );
  dff_cell flop4 (
    .d (net4),
    .clk (net5),
    .q (net22)
  );
endmodule
