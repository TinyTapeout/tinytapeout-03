/* Automatically generated from https://wokwi.com/projects/361728681519813633 */

`default_nettype none

module user_module_361728681519813633(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[3];
  wire net3 = io_in[4];
  wire net4 = io_in[5];
  wire net5 = io_in[6];
  wire net6 = io_in[7];
  wire net7;
  wire net8;
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
  wire net47 = 1'b1;
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
  wire net109 = 1'b0;
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
  wire net150;
  wire net151;
  wire net152;
  wire net153;
  wire net154;
  wire net155;
  wire net156;
  wire net157;
  wire net158;
  wire net159;
  wire net160;
  wire net161;
  wire net162;
  wire net163;
  wire net164;
  wire net165;
  wire net166;
  wire net167;
  wire net168;
  wire net169;
  wire net170;
  wire net171;
  wire net172;
  wire net173;
  wire net174;
  wire net175;
  wire net176;
  wire net177;
  wire net178;
  wire net179;
  wire net180;
  wire net181;
  wire net182;
  wire net183;
  wire net184;
  wire net185;
  wire net186;
  wire net187;
  wire net188;
  wire net189;
  wire net190;
  wire net191;
  wire net192;
  wire net193;
  wire net194;
  wire net195;
  wire net196;
  wire net197;
  wire net198;
  wire net199;
  wire net200;
  wire net201 = 1'b1;
  wire net202;
  wire net203;
  wire net204;

  assign io_out[0] = net7;
  assign io_out[1] = net8;
  assign io_out[2] = net9;
  assign io_out[3] = net10;
  assign io_out[4] = net11;
  assign io_out[5] = net12;
  assign io_out[6] = net13;
  assign io_out[7] = net14;

  dff_cell flipflop1 (
    .d (net18),
    .clk (net1),
    .q (net19),
    .notq (net20)
  );
  dff_cell flipflop2 (
    .d (net19),
    .clk (net1),
    .q (net21),
    .notq (net22)
  );
  and_cell and1 (
    .a (net23),
    .b (net20),
    .out (net24)
  );
  and_cell and2 (
    .a (net25),
    .b (net22),
    .out (net23)
  );
  dff_cell flipflop3 (
    .d (net21),
    .clk (net1),
    .q (net26),
    .notq (net27)
  );
  dff_cell flipflop4 (
    .d (net26),
    .clk (net1),
    .q (net28),
    .notq (net29)
  );
  and_cell and3 (
    .a (net30),
    .b (net27),
    .out (net25)
  );
  and_cell and4 (
    .a (net31),
    .b (net29),
    .out (net30)
  );
  dff_cell flipflop5 (
    .d (net28),
    .clk (net1),
    .q (net32),
    .notq (net33)
  );
  dff_cell flipflop6 (
    .d (net32),
    .clk (net1),
    .q (net34),
    .notq (net35)
  );
  and_cell and5 (
    .a (net36),
    .b (net33),
    .out (net31)
  );
  and_cell and6 (
    .a (net37),
    .b (net35),
    .out (net36)
  );
  dff_cell flipflop7 (
    .d (net34),
    .clk (net1),
    .q (net38),
    .notq (net39)
  );
  dff_cell flipflop8 (
    .d (net38),
    .clk (net1),
    .q (net40),
    .notq (net41)
  );
  and_cell and7 (
    .a (net41),
    .b (net39),
    .out (net37)
  );
  xor_cell xor1 (
    .a (net34),
    .b (net40),
    .out (net42)
  );
  xor_cell xor2 (
    .a (net28),
    .b (net43),
    .out (net44)
  );
  xor_cell xor3 (
    .a (net32),
    .b (net42),
    .out (net43)
  );
  or_cell or1 (
    .a (net44),
    .b (net24),
    .out (net18)
  );
  dff_cell flipflop9 (
    .d (net45),
    .clk (net1),
    .q (net46)
  );
  xor_cell xor4 (
    .a (net47),
    .b (net46),
    .out (net45)
  );
  and_cell and8 (
    .a (net47),
    .b (net46),
    .out (net48)
  );
  dff_cell flipflop10 (
    .d (net49),
    .clk (net1),
    .q (net50)
  );
  xor_cell xor5 (
    .a (net48),
    .b (net50),
    .out (net49)
  );
  and_cell and9 (
    .a (net48),
    .b (net50),
    .out (net51)
  );
  dff_cell flipflop11 (
    .d (net52),
    .clk (net1),
    .q (net53)
  );
  xor_cell xor6 (
    .a (net51),
    .b (net53),
    .out (net52)
  );
  and_cell and10 (
    .a (net51),
    .b (net53),
    .out (net54)
  );
  dff_cell flipflop12 (
    .d (net55),
    .clk (net1),
    .q (net56)
  );
  xor_cell xor7 (
    .a (net54),
    .b (net56),
    .out (net55)
  );
  and_cell and11 (
    .a (net54),
    .b (net56),
    .out (net57)
  );
  mux_cell mux1 (
    .a (net47),
    .b (net48),
    .sel (net6),
    .out (net58)
  );
  mux_cell mux2 (
    .a (net51),
    .b (net54),
    .sel (net6),
    .out (net59)
  );
  mux_cell mux3 (
    .a (net58),
    .b (net59),
    .sel (net5),
    .out (net60)
  );
  dff_cell flipflop13 (
    .d (net61),
    .clk (net1),
    .q (net62)
  );
  xor_cell xor8 (
    .a (net57),
    .b (net62),
    .out (net61)
  );
  and_cell and12 (
    .a (net57),
    .b (net62),
    .out (net63)
  );
  dff_cell flipflop14 (
    .d (net64),
    .clk (net1),
    .q (net65)
  );
  xor_cell xor9 (
    .a (net63),
    .b (net65),
    .out (net64)
  );
  and_cell and13 (
    .a (net63),
    .b (net65),
    .out (net66)
  );
  dff_cell flipflop15 (
    .d (net67),
    .clk (net1),
    .q (net68)
  );
  xor_cell xor10 (
    .a (net66),
    .b (net68),
    .out (net67)
  );
  and_cell and14 (
    .a (net66),
    .b (net68),
    .out (net69)
  );
  dff_cell flipflop16 (
    .d (net70),
    .clk (net1),
    .q (net71)
  );
  xor_cell xor11 (
    .a (net69),
    .b (net71),
    .out (net70)
  );
  and_cell and15 (
    .a (net69),
    .b (net71),
    .out (net72)
  );
  mux_cell mux4 (
    .a (net57),
    .b (net63),
    .sel (net6),
    .out (net73)
  );
  mux_cell mux5 (
    .a (net66),
    .b (net69),
    .sel (net6),
    .out (net74)
  );
  mux_cell mux6 (
    .a (net73),
    .b (net74),
    .sel (net5),
    .out (net75)
  );
  mux_cell mux7 (
    .a (net60),
    .b (net75),
    .sel (net4),
    .out (net76)
  );
  dff_cell flipflop17 (
    .d (net77),
    .clk (net1),
    .q (net78)
  );
  xor_cell xor12 (
    .a (net72),
    .b (net78),
    .out (net77)
  );
  and_cell and16 (
    .a (net72),
    .b (net78),
    .out (net79)
  );
  dff_cell flipflop18 (
    .d (net80),
    .clk (net1),
    .q (net81)
  );
  xor_cell xor13 (
    .a (net79),
    .b (net81),
    .out (net80)
  );
  and_cell and17 (
    .a (net79),
    .b (net81),
    .out (net82)
  );
  dff_cell flipflop19 (
    .d (net83),
    .clk (net1),
    .q (net84)
  );
  xor_cell xor14 (
    .a (net82),
    .b (net84),
    .out (net83)
  );
  and_cell and18 (
    .a (net82),
    .b (net84),
    .out (net85)
  );
  dff_cell flipflop20 (
    .d (net86),
    .clk (net1),
    .q (net87)
  );
  xor_cell xor15 (
    .a (net85),
    .b (net87),
    .out (net86)
  );
  and_cell and19 (
    .a (net85),
    .b (net87),
    .out (net88)
  );
  mux_cell mux8 (
    .a (net72),
    .b (net79),
    .sel (net6),
    .out (net89)
  );
  mux_cell mux9 (
    .a (net82),
    .b (net85),
    .sel (net6),
    .out (net90)
  );
  mux_cell mux10 (
    .a (net89),
    .b (net90),
    .sel (net5),
    .out (net91)
  );
  dff_cell flipflop21 (
    .d (net92),
    .clk (net1),
    .q (net93)
  );
  xor_cell xor16 (
    .a (net88),
    .b (net93),
    .out (net92)
  );
  and_cell and20 (
    .a (net88),
    .b (net93),
    .out (net94)
  );
  dff_cell flipflop22 (
    .d (net95),
    .clk (net1),
    .q (net96)
  );
  xor_cell xor17 (
    .a (net94),
    .b (net96),
    .out (net95)
  );
  and_cell and21 (
    .a (net94),
    .b (net96),
    .out (net97)
  );
  dff_cell flipflop23 (
    .d (net98),
    .clk (net1),
    .q (net99)
  );
  xor_cell xor18 (
    .a (net97),
    .b (net99),
    .out (net98)
  );
  and_cell and22 (
    .a (net97),
    .b (net99),
    .out (net100)
  );
  dff_cell flipflop24 (
    .d (net101),
    .clk (net1),
    .q (net102)
  );
  xor_cell xor19 (
    .a (net100),
    .b (net102),
    .out (net101)
  );
  and_cell and23 (
    .a (net100),
    .b (net102)
  );
  mux_cell mux11 (
    .a (net88),
    .b (net94),
    .sel (net6),
    .out (net103)
  );
  mux_cell mux12 (
    .a (net97),
    .b (net100),
    .sel (net6),
    .out (net104)
  );
  mux_cell mux13 (
    .a (net103),
    .b (net104),
    .sel (net5),
    .out (net105)
  );
  mux_cell mux14 (
    .a (net91),
    .b (net105),
    .sel (net4),
    .out (net106)
  );
  mux_cell mux15 (
    .a (net76),
    .b (net106),
    .sel (net3),
    .out (net107)
  );
  or_cell or2 (
    .a (net108),
    .b (net109),
    .out (net110)
  );
  or_cell or3 (
    .a (net111),
    .b (net109),
    .out (net112)
  );
  and_cell and24 (
    .a (net108),
    .b (net109),
    .out (net111)
  );
  or_cell or4 (
    .a (net113),
    .b (net110),
    .out (net114)
  );
  or_cell or5 (
    .a (net115),
    .b (net112),
    .out (net116)
  );
  and_cell and25 (
    .a (net113),
    .b (net110),
    .out (net115)
  );
  or_cell or6 (
    .a (net117),
    .b (net114),
    .out (net118)
  );
  or_cell or7 (
    .a (net119),
    .b (net116),
    .out (net120)
  );
  and_cell and26 (
    .a (net117),
    .b (net114),
    .out (net119)
  );
  or_cell or8 (
    .a (net121),
    .b (net118),
    .out (net122)
  );
  or_cell or9 (
    .a (net123),
    .b (net120),
    .out (net124)
  );
  and_cell and27 (
    .a (net121),
    .b (net118),
    .out (net123)
  );
  or_cell or10 (
    .a (net125),
    .b (net122),
    .out (net126)
  );
  or_cell or11 (
    .a (net127),
    .b (net124),
    .out (net128)
  );
  and_cell and28 (
    .a (net125),
    .b (net122),
    .out (net127)
  );
  or_cell or12 (
    .a (net129),
    .b (net126),
    .out (net130)
  );
  or_cell or13 (
    .a (net131),
    .b (net128),
    .out (net132)
  );
  and_cell and29 (
    .a (net129),
    .b (net126),
    .out (net131)
  );
  or_cell or14 (
    .a (net133),
    .b (net130),
    .out (net134)
  );
  or_cell or15 (
    .a (net135),
    .b (net132),
    .out (net136)
  );
  and_cell and30 (
    .a (net133),
    .b (net130),
    .out (net135)
  );
  or_cell or16 (
    .a (net137),
    .b (net134),
    .out (net138)
  );
  or_cell or17 (
    .a (net139),
    .b (net136),
    .out (net140)
  );
  and_cell and31 (
    .a (net137),
    .b (net134),
    .out (net139)
  );
  or_cell or18 (
    .a (net141),
    .b (net138),
    .out (net142)
  );
  or_cell or19 (
    .a (net143),
    .b (net140),
    .out (net144)
  );
  and_cell and32 (
    .a (net141),
    .b (net138),
    .out (net143)
  );
  or_cell or20 (
    .a (net145),
    .b (net142),
    .out (net146)
  );
  or_cell or21 (
    .a (net147),
    .b (net144),
    .out (net148)
  );
  and_cell and33 (
    .a (net145),
    .b (net142),
    .out (net147)
  );
  or_cell or22 (
    .a (net149),
    .b (net146),
    .out (net150)
  );
  or_cell or23 (
    .a (net151),
    .b (net148),
    .out (net152)
  );
  and_cell and34 (
    .a (net149),
    .b (net146),
    .out (net151)
  );
  or_cell or24 (
    .a (net153),
    .b (net150),
    .out (net154)
  );
  or_cell or25 (
    .a (net155),
    .b (net152),
    .out (net156)
  );
  and_cell and35 (
    .a (net153),
    .b (net150),
    .out (net155)
  );
  or_cell or26 (
    .a (net157),
    .b (net154),
    .out (net158)
  );
  or_cell or27 (
    .a (net159),
    .b (net156),
    .out (net160)
  );
  and_cell and36 (
    .a (net157),
    .b (net154),
    .out (net159)
  );
  or_cell or28 (
    .a (net161),
    .b (net158),
    .out (net162)
  );
  or_cell or29 (
    .a (net163),
    .b (net160),
    .out (net164)
  );
  and_cell and37 (
    .a (net161),
    .b (net158),
    .out (net163)
  );
  dff_cell flop1 (
    .d (net165),
    .clk (net1),
    .q (net108)
  );
  mux_cell mux16 (
    .a (net108),
    .b (net166),
    .sel (net107),
    .out (net165)
  );
  dff_cell flop2 (
    .d (net167),
    .clk (net1),
    .q (net113)
  );
  mux_cell mux17 (
    .a (net113),
    .b (net168),
    .sel (net107),
    .out (net167)
  );
  and_cell and38 (
    .a (net133),
    .b (net169),
    .out (net168)
  );
  dff_cell flop3 (
    .d (net170),
    .clk (net1),
    .q (net117)
  );
  mux_cell mux18 (
    .a (net117),
    .b (net171),
    .sel (net107),
    .out (net170)
  );
  and_cell and39 (
    .a (net172),
    .b (net169),
    .out (net171)
  );
  mux_cell mux19 (
    .a (net125),
    .b (net157),
    .sel (net40),
    .out (net173)
  );
  mux_cell mux20 (
    .a (net145),
    .b (net137),
    .sel (net40),
    .out (net174)
  );
  mux_cell mux21 (
    .a (net157),
    .b (net108),
    .sel (net40),
    .out (net175)
  );
  dff_cell flop4 (
    .d (net176),
    .clk (net1),
    .q (net121)
  );
  mux_cell mux22 (
    .a (net121),
    .b (net177),
    .sel (net107),
    .out (net176)
  );
  dff_cell flop5 (
    .d (net178),
    .clk (net1),
    .q (net125)
  );
  mux_cell mux23 (
    .a (net125),
    .b (net179),
    .sel (net107),
    .out (net178)
  );
  dff_cell flop6 (
    .d (net180),
    .clk (net1),
    .q (net129)
  );
  mux_cell mux24 (
    .a (net129),
    .b (net181),
    .sel (net107),
    .out (net180)
  );
  dff_cell flop7 (
    .d (net182),
    .clk (net1),
    .q (net133)
  );
  mux_cell mux25 (
    .a (net133),
    .b (net183),
    .sel (net107),
    .out (net182)
  );
  dff_cell flop8 (
    .d (net184),
    .clk (net1),
    .q (net137)
  );
  mux_cell mux26 (
    .a (net137),
    .b (net185),
    .sel (net107),
    .out (net184)
  );
  dff_cell flop9 (
    .d (net186),
    .clk (net1),
    .q (net141)
  );
  mux_cell mux27 (
    .a (net141),
    .b (net187),
    .sel (net107),
    .out (net186)
  );
  dff_cell flop10 (
    .d (net188),
    .clk (net1),
    .q (net145)
  );
  mux_cell mux28 (
    .a (net145),
    .b (net189),
    .sel (net107),
    .out (net188)
  );
  dff_cell flop11 (
    .d (net190),
    .clk (net1),
    .q (net149)
  );
  mux_cell mux29 (
    .a (net149),
    .b (net191),
    .sel (net107),
    .out (net190)
  );
  dff_cell flop12 (
    .d (net192),
    .clk (net1),
    .q (net153)
  );
  mux_cell mux30 (
    .a (net153),
    .b (net193),
    .sel (net107),
    .out (net192)
  );
  dff_cell flop13 (
    .d (net194),
    .clk (net1),
    .q (net157)
  );
  mux_cell mux31 (
    .a (net157),
    .b (net195),
    .sel (net107),
    .out (net194)
  );
  dff_cell flop14 (
    .d (net196),
    .clk (net1),
    .q (net161)
  );
  mux_cell mux32 (
    .a (net161),
    .b (net197),
    .sel (net107),
    .out (net196)
  );
  and_cell and40 (
    .a (net117),
    .b (net169),
    .out (net177)
  );
  and_cell and41 (
    .a (net121),
    .b (net169),
    .out (net179)
  );
  and_cell and42 (
    .a (net198),
    .b (net169),
    .out (net181)
  );
  and_cell and43 (
    .a (net129),
    .b (net169),
    .out (net183)
  );
  and_cell and44 (
    .a (net173),
    .b (net169),
    .out (net185)
  );
  and_cell and45 (
    .a (net174),
    .b (net169),
    .out (net187)
  );
  and_cell and46 (
    .a (net149),
    .b (net169),
    .out (net189)
  );
  and_cell and47 (
    .a (net153),
    .b (net169),
    .out (net191)
  );
  and_cell and48 (
    .a (net175),
    .b (net169),
    .out (net193)
  );
  and_cell and49 (
    .a (net161),
    .b (net169),
    .out (net195)
  );
  and_cell and50 (
    .a (net141),
    .b (net169),
    .out (net197)
  );
  mux_cell mux33 (
    .a (net108),
    .b (net125),
    .sel (net40),
    .out (net198)
  );
  mux_cell mux34 (
    .a (net137),
    .b (net113),
    .sel (net40),
    .out (net172)
  );
  mux_cell mux35 (
    .a (net113),
    .b (net145),
    .sel (net40),
    .out (net199)
  );
  or_cell or30 (
    .a (net133),
    .b (net161),
    .out (net7)
  );
  or_cell or31 (
    .a (net129),
    .b (net157),
    .out (net8)
  );
  or_cell or32 (
    .a (net125),
    .b (net153),
    .out (net9)
  );
  or_cell or33 (
    .a (net121),
    .b (net149),
    .out (net10)
  );
  or_cell or34 (
    .a (net117),
    .b (net145),
    .out (net11)
  );
  or_cell or35 (
    .a (net113),
    .b (net141),
    .out (net12)
  );
  or_cell or36 (
    .a (net108),
    .b (net137),
    .out (net13)
  );
  not_cell not1 (
    .in (net164),
    .out (net200)
  );
  and_cell and51 (
    .a (net162),
    .b (net200),
    .out (net169)
  );
  mux_cell mux36 (
    .a (net201),
    .b (net199),
    .sel (net169),
    .out (net166)
  );
  dff_cell flipflop25 (
    .d (net202),
    .clk (net1),
    .q (net203),
    .notq (net204)
  );
  mux_cell mux37 (
    .a (net203),
    .b (net204),
    .sel (net107),
    .out (net202)
  );
  and_cell and52 (
    .a (net203),
    .b (net2),
    .out (net14)
  );
endmodule
