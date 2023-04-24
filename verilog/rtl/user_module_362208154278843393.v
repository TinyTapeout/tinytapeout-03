/* Automatically generated from https://wokwi.com/projects/362208154278843393 */

`default_nettype none

module user_module_362208154278843393(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5 = io_in[4];
  wire net6;
  wire net7 = 1'b0;
  wire net8 = 1'b1;
  wire net9 = 1'b1;
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
  wire net109;
  wire net110;
  wire net111;
  wire net112;
  wire net113;
  wire net114;
  wire net115;
  wire net116;
  wire net117;
  wire net118;
  wire net119;
  wire net120;
  wire net121;
  wire net122;
  wire net123;
  wire net124;
  wire net125;
  wire net126;
  wire net127;
  wire net128;
  wire net129;
  wire net130;
  wire net131;
  wire net132;
  wire net133;
  wire net134;
  wire net135;
  wire net136;
  wire net137;
  wire net138;
  wire net139;
  wire net140;
  wire net141;
  wire net142;
  wire net143;
  wire net144;
  wire net145;
  wire net146;
  wire net147;
  wire net148;
  wire net149;

  assign io_out[0] = net1;
  assign io_out[7] = net6;

  dff_cell flop2 (
    .d (net10),
    .clk (net1),
    .q (net11),
    .notq (net10)
  );
  dff_cell flop4 (
    .d (net12),
    .clk (net11),
    .q (net13),
    .notq (net12)
  );
  dff_cell flop1 (
    .d (net14),
    .clk (net13),
    .q (net15),
    .notq (net14)
  );
  dff_cell flop3 (
    .d (net16),
    .clk (net15),
    .q (net17),
    .notq (net16)
  );
  dff_cell flop5 (
    .d (net18),
    .clk (net17),
    .q (net19),
    .notq (net18)
  );
  dff_cell flop6 (
    .d (net20),
    .clk (net19),
    .q (net21),
    .notq (net20)
  );
  dff_cell flop7 (
    .d (net22),
    .clk (net21),
    .q (net23),
    .notq (net22)
  );
  dff_cell flop8 (
    .d (net24),
    .clk (net23),
    .q (net25),
    .notq (net24)
  );
  dff_cell flop9 (
    .d (net26),
    .clk (net25),
    .q (net27),
    .notq (net26)
  );
  dff_cell flop10 (
    .d (net28),
    .clk (net27),
    .q (net29),
    .notq (net28)
  );
  dff_cell flop11 (
    .d (net30),
    .clk (net29),
    .q (net31),
    .notq (net30)
  );
  dff_cell flop12 (
    .d (net32),
    .clk (net31),
    .q (net33),
    .notq (net32)
  );
  dff_cell flop13 (
    .d (net34),
    .clk (net33),
    .q (net35),
    .notq (net34)
  );
  dff_cell flop14 (
    .d (net36),
    .clk (net35),
    .q (net37),
    .notq (net36)
  );
  and_cell and1 (
    .a (net38),
    .b (net39),
    .out (net40)
  );
  or_cell or1 (
    .a (net41),
    .b (net42),
    .out (net6)
  );
  or_cell or2 (
    .a (net43),
    .b (net44),
    .out (net41)
  );
  or_cell or3 (
    .a (net45),
    .b (net46),
    .out (net42)
  );
  or_cell or5 (
    .a (net47),
    .b (net48),
    .out (net43)
  );
  or_cell or6 (
    .a (net49),
    .b (net50),
    .out (net44)
  );
  or_cell or4 (
    .a (net51),
    .b (net52),
    .out (net45)
  );
  or_cell or7 (
    .a (net53),
    .b (net54),
    .out (net46)
  );
  and_cell and2 (
    .a (net1),
    .b (net40),
    .out (net55)
  );
  and_cell and3 (
    .a (net56),
    .b (net57),
    .out (net38)
  );
  and_cell and4 (
    .a (net58),
    .b (net59),
    .out (net39)
  );
  not_cell not1 (
    .in (net2),
    .out (net56)
  );
  not_cell not2 (
    .in (net5),
    .out (net59)
  );
  not_cell not3 (
    .in (net4),
    .out (net58)
  );
  not_cell not4 (
    .in (net3),
    .out (net57)
  );
  and_cell and5 (
    .a (net60),
    .b (net61),
    .out (net62)
  );
  and_cell and6 (
    .a (net11),
    .b (net62),
    .out (net63)
  );
  and_cell and7 (
    .a (net2),
    .b (net64),
    .out (net60)
  );
  and_cell and8 (
    .a (net65),
    .b (net66),
    .out (net61)
  );
  not_cell not6 (
    .in (net5),
    .out (net66)
  );
  not_cell not7 (
    .in (net4),
    .out (net65)
  );
  not_cell not8 (
    .in (net3),
    .out (net64)
  );
  and_cell and9 (
    .a (net67),
    .b (net68),
    .out (net69)
  );
  and_cell and10 (
    .a (net13),
    .b (net69),
    .out (net70)
  );
  and_cell and11 (
    .a (net71),
    .b (net3),
    .out (net67)
  );
  and_cell and12 (
    .a (net72),
    .b (net73),
    .out (net68)
  );
  not_cell not5 (
    .in (net2),
    .out (net71)
  );
  not_cell not9 (
    .in (net5),
    .out (net73)
  );
  not_cell not10 (
    .in (net4),
    .out (net72)
  );
  and_cell and13 (
    .a (net74),
    .b (net75),
    .out (net76)
  );
  and_cell and14 (
    .a (net15),
    .b (net76),
    .out (net77)
  );
  and_cell and15 (
    .a (net2),
    .b (net3),
    .out (net74)
  );
  and_cell and16 (
    .a (net78),
    .b (net79),
    .out (net75)
  );
  not_cell not13 (
    .in (net5),
    .out (net79)
  );
  not_cell not14 (
    .in (net4),
    .out (net78)
  );
  and_cell and17 (
    .a (net80),
    .b (net81),
    .out (net82)
  );
  and_cell and18 (
    .a (net17),
    .b (net82),
    .out (net83)
  );
  and_cell and19 (
    .a (net84),
    .b (net85),
    .out (net80)
  );
  and_cell and20 (
    .a (net4),
    .b (net86),
    .out (net81)
  );
  not_cell not16 (
    .in (net2),
    .out (net84)
  );
  not_cell not17 (
    .in (net5),
    .out (net86)
  );
  not_cell not19 (
    .in (net3),
    .out (net85)
  );
  and_cell and21 (
    .a (net87),
    .b (net88),
    .out (net89)
  );
  and_cell and22 (
    .a (net19),
    .b (net89),
    .out (net90)
  );
  and_cell and23 (
    .a (net2),
    .b (net91),
    .out (net87)
  );
  and_cell and24 (
    .a (net4),
    .b (net92),
    .out (net88)
  );
  not_cell not12 (
    .in (net5),
    .out (net92)
  );
  not_cell not18 (
    .in (net3),
    .out (net91)
  );
  and_cell and25 (
    .a (net93),
    .b (net94),
    .out (net95)
  );
  and_cell and26 (
    .a (net21),
    .b (net95),
    .out (net96)
  );
  and_cell and27 (
    .a (net97),
    .b (net3),
    .out (net93)
  );
  and_cell and28 (
    .a (net4),
    .b (net98),
    .out (net94)
  );
  not_cell not20 (
    .in (net2),
    .out (net97)
  );
  not_cell not21 (
    .in (net5),
    .out (net98)
  );
  and_cell and29 (
    .a (net99),
    .b (net100),
    .out (net101)
  );
  and_cell and30 (
    .a (net23),
    .b (net101),
    .out (net102)
  );
  and_cell and31 (
    .a (net2),
    .b (net3),
    .out (net99)
  );
  and_cell and32 (
    .a (net4),
    .b (net103),
    .out (net100)
  );
  not_cell not26 (
    .in (net5),
    .out (net103)
  );
  and_cell and33 (
    .a (net104),
    .b (net105),
    .out (net106)
  );
  and_cell and34 (
    .a (net25),
    .b (net106),
    .out (net107)
  );
  and_cell and35 (
    .a (net108),
    .b (net109),
    .out (net104)
  );
  and_cell and36 (
    .a (net110),
    .b (net5),
    .out (net105)
  );
  not_cell not29 (
    .in (net2),
    .out (net108)
  );
  not_cell not31 (
    .in (net4),
    .out (net110)
  );
  not_cell not32 (
    .in (net3),
    .out (net109)
  );
  and_cell and37 (
    .a (net111),
    .b (net112),
    .out (net113)
  );
  and_cell and38 (
    .a (net27),
    .b (net113),
    .out (net114)
  );
  and_cell and39 (
    .a (net2),
    .b (net115),
    .out (net111)
  );
  and_cell and40 (
    .a (net116),
    .b (net5),
    .out (net112)
  );
  not_cell not34 (
    .in (net4),
    .out (net116)
  );
  not_cell not35 (
    .in (net3),
    .out (net115)
  );
  and_cell and41 (
    .a (net117),
    .b (net118),
    .out (net119)
  );
  and_cell and42 (
    .a (net29),
    .b (net119),
    .out (net120)
  );
  and_cell and43 (
    .a (net121),
    .b (net3),
    .out (net117)
  );
  and_cell and44 (
    .a (net122),
    .b (net5),
    .out (net118)
  );
  not_cell not36 (
    .in (net2),
    .out (net121)
  );
  not_cell not38 (
    .in (net4),
    .out (net122)
  );
  and_cell and45 (
    .a (net123),
    .b (net124),
    .out (net125)
  );
  and_cell and46 (
    .a (net31),
    .b (net125),
    .out (net126)
  );
  and_cell and47 (
    .a (net2),
    .b (net3),
    .out (net123)
  );
  and_cell and48 (
    .a (net127),
    .b (net5),
    .out (net124)
  );
  not_cell not42 (
    .in (net4),
    .out (net127)
  );
  and_cell and49 (
    .a (net128),
    .b (net129),
    .out (net130)
  );
  and_cell and50 (
    .a (net33),
    .b (net130),
    .out (net131)
  );
  and_cell and51 (
    .a (net132),
    .b (net133),
    .out (net128)
  );
  and_cell and52 (
    .a (net4),
    .b (net5),
    .out (net129)
  );
  not_cell not44 (
    .in (net2),
    .out (net132)
  );
  not_cell not47 (
    .in (net3),
    .out (net133)
  );
  and_cell and53 (
    .a (net134),
    .b (net135),
    .out (net136)
  );
  and_cell and54 (
    .a (net35),
    .b (net136),
    .out (net137)
  );
  and_cell and55 (
    .a (net2),
    .b (net138),
    .out (net134)
  );
  and_cell and56 (
    .a (net4),
    .b (net5),
    .out (net135)
  );
  not_cell not51 (
    .in (net3),
    .out (net138)
  );
  and_cell and57 (
    .a (net139),
    .b (net140),
    .out (net141)
  );
  and_cell and58 (
    .a (net37),
    .b (net141),
    .out (net142)
  );
  and_cell and59 (
    .a (net143),
    .b (net3),
    .out (net139)
  );
  and_cell and60 (
    .a (net4),
    .b (net5),
    .out (net140)
  );
  not_cell not52 (
    .in (net2),
    .out (net143)
  );
  and_cell and61 (
    .a (net144),
    .b (net145),
    .out (net146)
  );
  and_cell and62 (
    .a (net147),
    .b (net146),
    .out (net148)
  );
  and_cell and63 (
    .a (net2),
    .b (net3),
    .out (net144)
  );
  and_cell and64 (
    .a (net4),
    .b (net5),
    .out (net145)
  );
  or_cell or8 (
    .a (net55),
    .b (net63),
    .out (net47)
  );
  or_cell or9 (
    .a (net70),
    .b (net77),
    .out (net48)
  );
  or_cell or10 (
    .a (net83),
    .b (net90),
    .out (net49)
  );
  or_cell or11 (
    .a (net96),
    .b (net102),
    .out (net50)
  );
  or_cell or12 (
    .a (net107),
    .b (net114),
    .out (net51)
  );
  or_cell or13 (
    .a (net120),
    .b (net126),
    .out (net52)
  );
  or_cell or14 (
    .a (net131),
    .b (net137),
    .out (net53)
  );
  or_cell or15 (
    .a (net142),
    .b (net148),
    .out (net54)
  );
  dff_cell flop15 (
    .d (net149),
    .clk (net37),
    .q (net147),
    .notq (net149)
  );
endmodule
