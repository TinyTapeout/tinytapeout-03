/* Automatically generated from https://wokwi.com/projects/362867354023533569 */

`default_nettype none

module user_module_362867354023533569(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[3];
  wire net3 = io_in[4];
  wire net4 = io_in[5];
  wire net5 = io_in[6];
  wire net6 = io_in[7];
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
  wire net64 = 1'b0;
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
  wire net91 = 1'b0;
  wire net92 = 1'b0;
  wire net93 = 1'b0;
  wire net94 = 1'b0;
  wire net95 = 1'b0;
  wire net96 = 1'b0;
  wire net97 = 1'b0;
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
  wire net124 = 1'b0;
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
  wire net150;
  wire net151 = 1'b0;
  wire net152 = 1'b0;
  wire net153 = 1'b0;
  wire net154 = 1'b0;
  wire net155 = 1'b0;

  dffsr_cell flop1 (
    .d (net10),
    .clk (net1),
    .r (net6),
    .q (net11)
  );
  dffsr_cell flop2 (
    .d (net12),
    .clk (net13),
    .r (net6),
    .q (net14)
  );
  dffsr_cell flop3 (
    .d (net15),
    .clk (net16),
    .r (net6),
    .q (net13)
  );
  dffsr_cell flop4 (
    .d (net17),
    .clk (net11),
    .r (net6),
    .q (net16)
  );
  not_cell not5 (
    .in (net11),
    .out (net10)
  );
  not_cell not6 (
    .in (net16),
    .out (net17)
  );
  not_cell not7 (
    .in (net13),
    .out (net15)
  );
  not_cell not8 (
    .in (net14),
    .out (net12)
  );
  dffsr_cell flop5 (
    .d (net18),
    .clk (net14),
    .r (net6),
    .q (net19)
  );
  not_cell not9 (
    .in (net19),
    .out (net18)
  );
  dffsr_cell flop7 (
    .d (net20),
    .clk (net19),
    .r (net6),
    .q (net21)
  );
  dffsr_cell flop8 (
    .d (net22),
    .clk (net21),
    .r (net6),
    .q (net23)
  );
  not_cell not10 (
    .in (net21),
    .out (net20)
  );
  not_cell not11 (
    .in (net23),
    .out (net22)
  );
  dffsr_cell flop9 (
    .d (net24),
    .clk (net23),
    .r (net6),
    .q (net25)
  );
  not_cell not12 (
    .in (net25),
    .out (net24)
  );
  dffsr_cell flop10 (
    .d (net26),
    .clk (net25),
    .r (net6),
    .q (net27)
  );
  not_cell not13 (
    .in (net27),
    .out (net26)
  );
  dffsr_cell flop11 (
    .d (net28),
    .clk (net27),
    .r (net6),
    .q (net29)
  );
  not_cell not14 (
    .in (net29),
    .out (net28)
  );
  dffsr_cell flop12 (
    .d (net30),
    .clk (net29),
    .r (net6),
    .q (net31)
  );
  not_cell not15 (
    .in (net31),
    .out (net30)
  );
  dffsr_cell flop13 (
    .d (net32),
    .clk (net31),
    .r (net6),
    .q (net33)
  );
  not_cell not16 (
    .in (net33),
    .out (net32)
  );
  dffsr_cell flop14 (
    .d (net34),
    .clk (net33),
    .r (net6),
    .q (net35)
  );
  not_cell not17 (
    .in (net35),
    .out (net34)
  );
  dffsr_cell flop6 (
    .d (net36),
    .clk (net35),
    .r (net6),
    .q (net37)
  );
  not_cell not2 (
    .in (net37),
    .out (net36)
  );
  and_cell and1 (
    .a (net5),
    .b (net38),
    .out (net39)
  );
  dff_cell flop15 (
    .d (net39),
    .clk (net40),
    .q (net41)
  );
  and_cell and2 (
    .a (net39),
    .b (net41),
    .out (net42)
  );
  dff_cell flop17 (
    .d (net42),
    .clk (net40),
    .q (net43)
  );
  and_cell and3 (
    .a (net42),
    .b (net43),
    .out (net44)
  );
  dffsr_cell flop18 (
    .d (net45),
    .clk (net37),
    .r (net6),
    .q (net40)
  );
  not_cell not18 (
    .in (net40),
    .out (net45)
  );
  dff_cell flop19 (
    .d (net44),
    .clk (net40),
    .q (net46)
  );
  and_cell and4 (
    .a (net44),
    .b (net46),
    .out (net47)
  );
  dff_cell flop20 (
    .d (net47),
    .clk (net40),
    .q (net48)
  );
  dff_cell flop21 (
    .d (net49),
    .clk (net40),
    .q (net50)
  );
  dff_cell flop22 (
    .d (net51),
    .clk (net40),
    .q (net52)
  );
  dff_cell flop23 (
    .d (net53),
    .clk (net40),
    .q (net54)
  );
  dff_cell flop24 (
    .d (net55),
    .clk (net40),
    .q (net56)
  );
  and_cell and5 (
    .a (net47),
    .b (net48),
    .out (net49)
  );
  and_cell and6 (
    .a (net49),
    .b (net50),
    .out (net51)
  );
  and_cell and7 (
    .a (net51),
    .b (net52),
    .out (net55)
  );
  and_cell and8 (
    .a (net55),
    .b (net56),
    .out (net53)
  );
  and_cell and9 (
    .a (net53),
    .b (net54),
    .out (net57)
  );
  dff_cell flop25 (
    .d (net57),
    .clk (net40),
    .q (net58)
  );
  and_cell and10 (
    .a (net57),
    .b (net58),
    .out (net59)
  );
  dff_cell flop26 (
    .d (net59),
    .clk (net40),
    .q (net60)
  );
  and_cell and11 (
    .a (net59),
    .b (net60),
    .out (net61)
  );
  dff_cell flop27 (
    .d (net61),
    .clk (net40),
    .q (net62)
  );
  and_cell and12 (
    .a (net61),
    .b (net62),
    .out (net63)
  );
  dffsr_cell flop28 (

  );
  dffsr_cell flop29 (

  );
  dffsr_cell flop30 (

  );
  dffsr_cell flop31 (

  );
  dffsr_cell flop16 (
    .d (net5),
    .clk (net40),
    .q (net38)
  );
  dffsr_cell flop32 (
    .d (net65),
    .clk (net40),
    .r (net66),
    .q (net67)
  );
  and_cell and13 (
    .a (net4),
    .b (net61),
    .out (net65)
  );
  dffsr_cell flop33 (
    .d (net68),
    .clk (net40),
    .r (net66),
    .q (net69)
  );
  and_cell and14 (
    .a (net68),
    .b (net69),
    .out (net70)
  );
  dffsr_cell flop34 (
    .d (net70),
    .clk (net40),
    .r (net66),
    .q (net71)
  );
  and_cell and15 (
    .a (net70),
    .b (net71),
    .out (net72)
  );
  dffsr_cell flop35 (
    .d (net72),
    .clk (net40),
    .r (net66),
    .q (net73)
  );
  and_cell and16 (
    .a (net72),
    .b (net73),
    .out (net74)
  );
  dffsr_cell flop36 (
    .d (net74),
    .clk (net40),
    .r (net66),
    .q (net75)
  );
  and_cell and17 (
    .a (net74),
    .b (net75),
    .out (net76)
  );
  dffsr_cell flop37 (
    .d (net76),
    .clk (net40),
    .r (net66),
    .q (net77)
  );
  and_cell and18 (
    .a (net76),
    .b (net77),
    .out (net78)
  );
  dffsr_cell flop38 (
    .d (net78),
    .clk (net40),
    .r (net66),
    .q (net79)
  );
  and_cell and19 (
    .a (net78),
    .b (net79),
    .out (net80)
  );
  dffsr_cell flop39 (
    .d (net80),
    .clk (net40),
    .r (net66),
    .q (net81)
  );
  and_cell and20 (
    .a (net80),
    .b (net81),
    .out (net82)
  );
  dffsr_cell flop40 (
    .d (net82),
    .clk (net40),
    .r (net66),
    .q (net83)
  );
  and_cell and21 (
    .a (net82),
    .b (net83),
    .out (net84)
  );
  dffsr_cell flop41 (
    .d (net84),
    .clk (net40),
    .r (net66),
    .q (net85)
  );
  and_cell and22 (
    .a (net84),
    .b (net85),
    .out (net86)
  );
  dffsr_cell flop42 (
    .d (net86),
    .clk (net40),
    .r (net66),
    .q (net87)
  );
  and_cell and23 (
    .a (net86),
    .b (net87),
    .out (net88)
  );
  dffsr_cell flop43 (
    .d (net88),
    .clk (net40),
    .r (net66),
    .q (net89)
  );
  and_cell and24 (
    .a (net88),
    .b (net89),
    .out (net90)
  );
  and_cell and25 (
    .a (net65),
    .b (net67),
    .out (net68)
  );
  dffsr_cell flop44 (
    .d (net98),
    .clk (net40),
    .r (net99),
    .q (net100)
  );
  dffsr_cell flop45 (
    .d (net101),
    .clk (net40),
    .r (net99),
    .q (net102)
  );
  and_cell and26 (
    .a (net101),
    .b (net102),
    .out (net103)
  );
  dffsr_cell flop46 (
    .d (net103),
    .clk (net40),
    .r (net99),
    .q (net104)
  );
  and_cell and27 (
    .a (net103),
    .b (net104),
    .out (net105)
  );
  dffsr_cell flop47 (
    .d (net105),
    .clk (net40),
    .r (net99),
    .q (net106)
  );
  and_cell and28 (
    .a (net105),
    .b (net106),
    .out (net107)
  );
  dffsr_cell flop48 (
    .d (net107),
    .clk (net40),
    .r (net99),
    .q (net108)
  );
  and_cell and29 (
    .a (net107),
    .b (net108),
    .out (net109)
  );
  dffsr_cell flop49 (
    .d (net109),
    .clk (net40),
    .r (net99),
    .q (net110)
  );
  and_cell and30 (
    .a (net109),
    .b (net110),
    .out (net111)
  );
  dffsr_cell flop50 (
    .d (net111),
    .clk (net40),
    .r (net99),
    .q (net112)
  );
  and_cell and31 (
    .a (net111),
    .b (net112),
    .out (net113)
  );
  dffsr_cell flop51 (
    .d (net113),
    .clk (net40),
    .r (net99),
    .q (net114)
  );
  and_cell and32 (
    .a (net113),
    .b (net114),
    .out (net115)
  );
  dffsr_cell flop52 (
    .d (net115),
    .clk (net40),
    .r (net99),
    .q (net116)
  );
  and_cell and33 (
    .a (net115),
    .b (net116),
    .out (net117)
  );
  dffsr_cell flop53 (
    .d (net117),
    .clk (net40),
    .r (net99),
    .q (net118)
  );
  and_cell and34 (
    .a (net117),
    .b (net118),
    .out (net119)
  );
  dffsr_cell flop54 (
    .d (net119),
    .clk (net40),
    .r (net99),
    .q (net120)
  );
  and_cell and35 (
    .a (net119),
    .b (net120),
    .out (net121)
  );
  dffsr_cell flop55 (
    .d (net121),
    .clk (net40),
    .r (net99),
    .q (net122)
  );
  and_cell and36 (
    .a (net121),
    .b (net122),
    .out (net123)
  );
  and_cell and37 (
    .a (net98),
    .b (net100),
    .out (net101)
  );
  dffsr_cell flop56 (
    .d (net125),
    .clk (net40),
    .r (net126),
    .q (net127)
  );
  dffsr_cell flop57 (
    .d (net128),
    .clk (net40),
    .r (net126),
    .q (net129)
  );
  and_cell and38 (
    .a (net128),
    .b (net129),
    .out (net130)
  );
  dffsr_cell flop58 (
    .d (net130),
    .clk (net40),
    .r (net126),
    .q (net131)
  );
  and_cell and39 (
    .a (net130),
    .b (net131),
    .out (net132)
  );
  dffsr_cell flop59 (
    .d (net132),
    .clk (net40),
    .r (net126),
    .q (net133)
  );
  and_cell and40 (
    .a (net132),
    .b (net133),
    .out (net134)
  );
  dffsr_cell flop60 (
    .d (net134),
    .clk (net40),
    .r (net126),
    .q (net135)
  );
  and_cell and41 (
    .a (net134),
    .b (net135),
    .out (net136)
  );
  dffsr_cell flop61 (
    .d (net136),
    .clk (net40),
    .r (net126),
    .q (net137)
  );
  and_cell and42 (
    .a (net136),
    .b (net137),
    .out (net138)
  );
  dffsr_cell flop62 (
    .d (net138),
    .clk (net40),
    .r (net126),
    .q (net139)
  );
  and_cell and43 (
    .a (net138),
    .b (net139),
    .out (net140)
  );
  dffsr_cell flop63 (
    .d (net140),
    .clk (net40),
    .r (net126),
    .q (net141)
  );
  and_cell and44 (
    .a (net140),
    .b (net141),
    .out (net142)
  );
  dffsr_cell flop64 (
    .d (net142),
    .clk (net40),
    .r (net126),
    .q (net143)
  );
  and_cell and45 (
    .a (net142),
    .b (net143),
    .out (net144)
  );
  dffsr_cell flop65 (
    .d (net144),
    .clk (net40),
    .r (net126),
    .q (net145)
  );
  and_cell and46 (
    .a (net144),
    .b (net145),
    .out (net146)
  );
  dffsr_cell flop66 (
    .d (net146),
    .clk (net40),
    .r (net126),
    .q (net147)
  );
  and_cell and47 (
    .a (net146),
    .b (net147),
    .out (net148)
  );
  dffsr_cell flop67 (
    .d (net148),
    .clk (net40),
    .r (net126),
    .q (net149)
  );
  and_cell and48 (
    .a (net148),
    .b (net149),
    .out (net150)
  );
  and_cell and49 (
    .a (net125),
    .b (net127),
    .out (net128)
  );
  and_cell and50 (
    .a (net3),
    .b (net84),
    .out (net98)
  );
  and_cell and51 (
    .a (net2),
    .b (net117),
    .out (net125)
  );
endmodule
