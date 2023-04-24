/* Automatically generated from https://wokwi.com/projects/362867354023533569 */

`default_nettype none

module user_module_362867354023533569(
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
  wire net15 = 1'b0;
  wire net16 = 1'b1;
  wire net17 = 1'b1;
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

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net9;
  assign io_out[4] = net12;
  assign io_out[5] = net13;
  assign io_out[6] = net9;
  assign io_out[7] = net14;

  dffsr_cell flop1 (
    .d (net18),
    .clk (net1),
    .s (net8),
    .r (net8),
    .q (net19)
  );
  dffsr_cell flop2 (
    .d (net20),
    .clk (net21),
    .s (net8),
    .r (net8),
    .q (net22)
  );
  dffsr_cell flop3 (
    .d (net23),
    .clk (net24),
    .s (net8),
    .r (net8),
    .q (net21)
  );
  dffsr_cell flop4 (
    .d (net25),
    .clk (net19),
    .s (net8),
    .r (net8),
    .q (net24)
  );
  not_cell not5 (
    .in (net19),
    .out (net18)
  );
  not_cell not6 (
    .in (net24),
    .out (net25)
  );
  not_cell not7 (
    .in (net21),
    .out (net23)
  );
  not_cell not8 (
    .in (net22),
    .out (net20)
  );
  dffsr_cell flop5 (
    .d (net26),
    .clk (net22),
    .s (net8),
    .r (net8),
    .q (net27)
  );
  not_cell not9 (
    .in (net27),
    .out (net26)
  );
  dffsr_cell flop7 (
    .d (net28),
    .clk (net27),
    .s (net8),
    .r (net8),
    .q (net29)
  );
  dffsr_cell flop8 (
    .d (net30),
    .clk (net29),
    .s (net8),
    .r (net8),
    .q (net31)
  );
  not_cell not10 (
    .in (net29),
    .out (net28)
  );
  not_cell not11 (
    .in (net31),
    .out (net30)
  );
  dffsr_cell flop9 (
    .d (net32),
    .clk (net31),
    .s (net8),
    .r (net8),
    .q (net33)
  );
  not_cell not12 (
    .in (net33),
    .out (net32)
  );
  dffsr_cell flop10 (
    .d (net34),
    .clk (net33),
    .s (net8),
    .r (net8),
    .q (net35)
  );
  not_cell not13 (
    .in (net35),
    .out (net34)
  );
  dffsr_cell flop11 (
    .d (net36),
    .clk (net35),
    .s (net8),
    .r (net8),
    .q (net37)
  );
  not_cell not14 (
    .in (net37),
    .out (net36)
  );
  dffsr_cell flop12 (
    .d (net38),
    .clk (net37),
    .s (net8),
    .r (net8),
    .q (net39)
  );
  not_cell not15 (
    .in (net39),
    .out (net38)
  );
  dffsr_cell flop13 (
    .d (net40),
    .clk (net39),
    .s (net8),
    .r (net8),
    .q (net41)
  );
  not_cell not16 (
    .in (net41),
    .out (net40)
  );
  dffsr_cell flop14 (
    .d (net42),
    .clk (net41),
    .s (net8),
    .r (net8),
    .q (net43)
  );
  not_cell not17 (
    .in (net43),
    .out (net42)
  );
  dffsr_cell flop6 (
    .d (net44),
    .clk (net43),
    .s (net8),
    .r (net8),
    .q (net45)
  );
  not_cell not2 (
    .in (net45),
    .out (net44)
  );
  and_cell and1 (
    .a (net7),
    .b (net46),
    .out (net47)
  );
  dff_cell flop15 (
    .d (net47),
    .clk (net14),
    .q (net48)
  );
  and_cell and2 (
    .a (net47),
    .b (net48),
    .out (net49)
  );
  dff_cell flop17 (
    .d (net49),
    .clk (net14),
    .q (net50)
  );
  and_cell and3 (
    .a (net49),
    .b (net50),
    .out (net51)
  );
  dffsr_cell flop18 (
    .d (net52),
    .clk (net45),
    .s (net8),
    .r (net8),
    .q (net14)
  );
  not_cell not18 (
    .in (net14),
    .out (net52)
  );
  dff_cell flop19 (
    .d (net51),
    .clk (net14),
    .q (net53)
  );
  and_cell and4 (
    .a (net51),
    .b (net53),
    .out (net54)
  );
  dff_cell flop20 (
    .d (net54),
    .clk (net14),
    .q (net55)
  );
  dff_cell flop21 (
    .d (net56),
    .clk (net14),
    .q (net57)
  );
  dff_cell flop22 (
    .d (net58),
    .clk (net14),
    .q (net59)
  );
  dff_cell flop23 (
    .d (net60),
    .clk (net14),
    .q (net61)
  );
  dff_cell flop24 (
    .d (net62),
    .clk (net14),
    .q (net63)
  );
  and_cell and5 (
    .a (net54),
    .b (net55),
    .out (net56)
  );
  and_cell and6 (
    .a (net56),
    .b (net57),
    .out (net58)
  );
  and_cell and7 (
    .a (net58),
    .b (net59),
    .out (net62)
  );
  and_cell and8 (
    .a (net62),
    .b (net63),
    .out (net60)
  );
  and_cell and9 (
    .a (net60),
    .b (net61),
    .out (net64)
  );
  dff_cell flop25 (
    .d (net64),
    .clk (net14),
    .q (net65)
  );
  and_cell and10 (
    .a (net64),
    .b (net65),
    .out (net10)
  );
  dff_cell flop26 (
    .d (net10),
    .clk (net14),
    .q (net66)
  );
  and_cell and11 (
    .a (net10),
    .b (net66),
    .out (net67)
  );
  dff_cell flop27 (
    .d (net67),
    .clk (net14),
    .q (net68)
  );
  and_cell and12 (
    .a (net67),
    .b (net68)
  );
  dffsr_cell flop16 (
    .d (net7),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net46)
  );
  dffsr_cell flop32 (
    .d (net70),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net71)
  );
  and_cell and13 (
    .a (net6),
    .b (net10),
    .out (net70)
  );
  dffsr_cell flop33 (
    .d (net72),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net73)
  );
  and_cell and14 (
    .a (net72),
    .b (net73),
    .out (net74)
  );
  dffsr_cell flop34 (
    .d (net74),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net75)
  );
  and_cell and15 (
    .a (net74),
    .b (net75),
    .out (net76)
  );
  dffsr_cell flop35 (
    .d (net76),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net77)
  );
  and_cell and16 (
    .a (net76),
    .b (net77),
    .out (net78)
  );
  dffsr_cell flop36 (
    .d (net78),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net79)
  );
  and_cell and17 (
    .a (net78),
    .b (net79),
    .out (net80)
  );
  dffsr_cell flop37 (
    .d (net80),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net81)
  );
  and_cell and18 (
    .a (net80),
    .b (net81),
    .out (net82)
  );
  dffsr_cell flop38 (
    .d (net82),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net83)
  );
  and_cell and19 (
    .a (net82),
    .b (net83),
    .out (net84)
  );
  dffsr_cell flop39 (
    .d (net84),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net85)
  );
  and_cell and20 (
    .a (net84),
    .b (net85),
    .out (net86)
  );
  dffsr_cell flop40 (
    .d (net86),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net87)
  );
  and_cell and21 (
    .a (net86),
    .b (net87),
    .out (net13)
  );
  dffsr_cell flop41 (
    .d (net13),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net88)
  );
  and_cell and22 (
    .a (net13),
    .b (net88),
    .out (net89)
  );
  dffsr_cell flop42 (
    .d (net89),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net90)
  );
  and_cell and23 (
    .a (net89),
    .b (net90),
    .out (net91)
  );
  dffsr_cell flop43 (
    .d (net91),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net92)
  );
  and_cell and24 (
    .a (net91),
    .b (net92)
  );
  and_cell and25 (
    .a (net70),
    .b (net71),
    .out (net72)
  );
  dffsr_cell flop44 (
    .d (net93),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net94)
  );
  dffsr_cell flop45 (
    .d (net95),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net96)
  );
  and_cell and26 (
    .a (net95),
    .b (net96),
    .out (net97)
  );
  dffsr_cell flop46 (
    .d (net97),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net98)
  );
  and_cell and27 (
    .a (net97),
    .b (net98),
    .out (net99)
  );
  dffsr_cell flop47 (
    .d (net99),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net100)
  );
  and_cell and28 (
    .a (net99),
    .b (net100),
    .out (net101)
  );
  dffsr_cell flop48 (
    .d (net101),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net102)
  );
  and_cell and29 (
    .a (net101),
    .b (net102),
    .out (net103)
  );
  dffsr_cell flop49 (
    .d (net103),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net104)
  );
  and_cell and30 (
    .a (net103),
    .b (net104),
    .out (net105)
  );
  dffsr_cell flop50 (
    .d (net105),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net106)
  );
  and_cell and31 (
    .a (net105),
    .b (net106),
    .out (net107)
  );
  dffsr_cell flop51 (
    .d (net107),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net108)
  );
  and_cell and32 (
    .a (net107),
    .b (net108),
    .out (net109)
  );
  dffsr_cell flop52 (
    .d (net109),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net110)
  );
  and_cell and33 (
    .a (net109),
    .b (net110),
    .out (net11)
  );
  dffsr_cell flop53 (
    .d (net11),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net111)
  );
  and_cell and34 (
    .a (net11),
    .b (net111),
    .out (net112)
  );
  dffsr_cell flop54 (
    .d (net112),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net113)
  );
  and_cell and35 (
    .a (net112),
    .b (net113),
    .out (net114)
  );
  dffsr_cell flop55 (
    .d (net114),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net115)
  );
  and_cell and36 (
    .a (net114),
    .b (net115)
  );
  and_cell and37 (
    .a (net93),
    .b (net94),
    .out (net95)
  );
  dffsr_cell flop56 (
    .d (net116),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net117)
  );
  dffsr_cell flop57 (
    .d (net118),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net119)
  );
  and_cell and38 (
    .a (net118),
    .b (net119),
    .out (net120)
  );
  dffsr_cell flop58 (
    .d (net120),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net121)
  );
  and_cell and39 (
    .a (net120),
    .b (net121),
    .out (net122)
  );
  dffsr_cell flop59 (
    .d (net122),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net123)
  );
  and_cell and40 (
    .a (net122),
    .b (net123),
    .out (net124)
  );
  dffsr_cell flop60 (
    .d (net124),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net125)
  );
  and_cell and41 (
    .a (net124),
    .b (net125),
    .out (net126)
  );
  dffsr_cell flop61 (
    .d (net126),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net127)
  );
  and_cell and42 (
    .a (net126),
    .b (net127),
    .out (net128)
  );
  dffsr_cell flop62 (
    .d (net128),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net129)
  );
  and_cell and43 (
    .a (net128),
    .b (net129),
    .out (net130)
  );
  dffsr_cell flop63 (
    .d (net130),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net131)
  );
  and_cell and44 (
    .a (net130),
    .b (net131),
    .out (net132)
  );
  dffsr_cell flop64 (
    .d (net132),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net133)
  );
  and_cell and45 (
    .a (net132),
    .b (net133),
    .out (net12)
  );
  dffsr_cell flop65 (
    .d (net12),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net134)
  );
  and_cell and46 (
    .a (net12),
    .b (net134),
    .out (net135)
  );
  dffsr_cell flop66 (
    .d (net135),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net136)
  );
  and_cell and47 (
    .a (net135),
    .b (net136),
    .out (net137)
  );
  dffsr_cell flop67 (
    .d (net137),
    .clk (net14),
    .s (net8),
    .r (net69),
    .q (net138)
  );
  and_cell and48 (
    .a (net137),
    .b (net138)
  );
  and_cell and49 (
    .a (net116),
    .b (net117),
    .out (net118)
  );
  and_cell and50 (
    .a (net5),
    .b (net13),
    .out (net93)
  );
  and_cell and51 (
    .a (net4),
    .b (net11),
    .out (net116)
  );
  and_cell and52 (
    .a (net12),
    .b (net11),
    .out (net139)
  );
  and_cell and53 (
    .a (net13),
    .b (net10),
    .out (net140)
  );
  and_cell and54 (
    .a (net139),
    .b (net140),
    .out (net141)
  );
  and_cell and55 (
    .a (net141),
    .b (net14),
    .out (net9)
  );
  not_cell not1 (
    .in (net2),
    .out (net8)
  );
  not_cell not3 (
    .in (net3),
    .out (net69)
  );
endmodule
