/* Automatically generated from https://wokwi.com/projects/357752736742764545 */

`default_nettype none

module user_module_357752736742764545(
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
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16 = 1'b0;
  wire net17 = 1'b1;
  wire net18 = 1'b1;
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
  wire net30 = 1'b0;
  wire net31 = 1'b1;
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
  wire net196 = 1'b0;
  wire net197 = 1'b0;
  wire net198;
  wire net199;
  wire net200;
  wire net201;
  wire net202;
  wire net203;
  wire net204;
  wire net205;
  wire net206;
  wire net207;
  wire net208;
  wire net209;
  wire net210;
  wire net211;
  wire net212;
  wire net213;
  wire net214;
  wire net215;

  assign io_out[0] = net8;
  assign io_out[1] = net9;
  assign io_out[2] = net10;
  assign io_out[3] = net11;
  assign io_out[4] = net12;
  assign io_out[5] = net13;
  assign io_out[6] = net14;
  assign io_out[7] = net15;

  dff_cell flop1 (
    .d (net19),
    .clk (net20),
    .q (net8)
  );
  dff_cell flop2 (
    .d (net21),
    .clk (net20),
    .q (net9)
  );
  and_cell gate1 (
    .a (net22),
    .b (net8),
    .out (net23)
  );
  mux_cell mux1 (
    .a (net3),
    .b (net24),
    .sel (net4),
    .out (net19)
  );
  dff_cell flop3 (
    .d (net25),
    .clk (net20),
    .q (net10)
  );
  dff_cell flop4 (
    .d (net26),
    .clk (net20),
    .q (net11)
  );
  dff_cell flop5 (
    .d (net27),
    .clk (net20),
    .q (net12)
  );
  dff_cell flop6 (
    .d (net28),
    .clk (net20),
    .q (net13)
  );
  dff_cell flop7 (
    .d (net29),
    .clk (net20),
    .q (net14)
  );
  or_cell gate7 (
    .a (net2),
    .b (net3),
    .out (net32)
  );
  mux_cell mux2 (
    .a (net8),
    .b (net33),
    .sel (net4),
    .out (net21)
  );
  mux_cell mux3 (
    .a (net9),
    .b (net34),
    .sel (net4),
    .out (net25)
  );
  mux_cell mux4 (
    .a (net10),
    .b (net35),
    .sel (net4),
    .out (net26)
  );
  mux_cell mux5 (
    .a (net11),
    .b (net36),
    .sel (net4),
    .out (net27)
  );
  mux_cell mux6 (
    .a (net12),
    .b (net37),
    .sel (net4),
    .out (net28)
  );
  mux_cell mux7 (
    .a (net13),
    .b (net38),
    .sel (net4),
    .out (net29)
  );
  xor_cell gate8 (
    .a (net9),
    .b (net13),
    .out (net22)
  );
  or_cell gate10 (
    .a (net23),
    .b (net39),
    .out (net24)
  );
  not_cell gate11 (
    .in (net8),
    .out (net40)
  );
  and_cell gate13 (
    .a (net40),
    .b (net41),
    .out (net39)
  );
  and_cell gate14 (
    .a (net13),
    .b (net9),
    .out (net41)
  );
  and_cell gate15 (
    .a (net42),
    .b (net11),
    .out (net43)
  );
  xor_cell gate16 (
    .a (net10),
    .b (net12),
    .out (net42)
  );
  or_cell gate17 (
    .a (net43),
    .b (net44),
    .out (net35)
  );
  not_cell gate18 (
    .in (net11),
    .out (net45)
  );
  and_cell gate19 (
    .a (net45),
    .b (net46),
    .out (net44)
  );
  and_cell gate20 (
    .a (net12),
    .b (net10),
    .out (net46)
  );
  and_cell gate21 (
    .a (net47),
    .b (net9),
    .out (net48)
  );
  or_cell gate23 (
    .a (net48),
    .b (net49),
    .out (net33)
  );
  not_cell gate24 (
    .in (net9),
    .out (net50)
  );
  and_cell gate25 (
    .a (net50),
    .b (net51),
    .out (net49)
  );
  not_cell gate22 (
    .in (net10),
    .out (net52)
  );
  not_cell gate26 (
    .in (net14),
    .out (net53)
  );
  and_cell gate27 (
    .a (net52),
    .b (net53),
    .out (net54)
  );
  and_cell gate28 (
    .a (net8),
    .b (net54),
    .out (net55)
  );
  or_cell gate29 (
    .a (net55),
    .b (net56),
    .out (net57)
  );
  or_cell gate30 (
    .a (net57),
    .b (net58),
    .out (net47)
  );
  not_cell gate31 (
    .in (net8),
    .out (net59)
  );
  not_cell gate32 (
    .in (net10),
    .out (net60)
  );
  and_cell gate33 (
    .a (net59),
    .b (net60),
    .out (net61)
  );
  and_cell gate34 (
    .a (net14),
    .b (net61),
    .out (net56)
  );
  not_cell gate35 (
    .in (net14),
    .out (net62)
  );
  not_cell gate36 (
    .in (net8),
    .out (net63)
  );
  and_cell gate37 (
    .a (net62),
    .b (net63),
    .out (net64)
  );
  and_cell gate38 (
    .a (net10),
    .b (net64),
    .out (net58)
  );
  not_cell gate40 (
    .in (net14),
    .out (net65)
  );
  and_cell gate41 (
    .a (net10),
    .b (net65),
    .out (net66)
  );
  and_cell gate42 (
    .a (net8),
    .b (net66),
    .out (net67)
  );
  or_cell gate43 (
    .a (net67),
    .b (net68),
    .out (net69)
  );
  or_cell gate44 (
    .a (net69),
    .b (net70),
    .out (net51)
  );
  not_cell gate46 (
    .in (net10),
    .out (net71)
  );
  and_cell gate47 (
    .a (net8),
    .b (net71),
    .out (net72)
  );
  and_cell gate48 (
    .a (net14),
    .b (net72),
    .out (net68)
  );
  not_cell gate50 (
    .in (net8),
    .out (net73)
  );
  and_cell gate51 (
    .a (net14),
    .b (net73),
    .out (net74)
  );
  and_cell gate52 (
    .a (net10),
    .b (net74),
    .out (net70)
  );
  and_cell gate39 (
    .a (net75),
    .b (net10),
    .out (net76)
  );
  or_cell gate45 (
    .a (net76),
    .b (net77),
    .out (net34)
  );
  not_cell gate49 (
    .in (net10),
    .out (net78)
  );
  and_cell gate53 (
    .a (net78),
    .b (net79),
    .out (net77)
  );
  not_cell gate54 (
    .in (net11),
    .out (net80)
  );
  not_cell gate55 (
    .in (net14),
    .out (net81)
  );
  and_cell gate56 (
    .a (net80),
    .b (net81),
    .out (net82)
  );
  and_cell gate57 (
    .a (net9),
    .b (net82),
    .out (net83)
  );
  or_cell gate58 (
    .a (net83),
    .b (net84),
    .out (net85)
  );
  or_cell gate59 (
    .a (net85),
    .b (net86),
    .out (net75)
  );
  not_cell gate60 (
    .in (net9),
    .out (net87)
  );
  not_cell gate61 (
    .in (net11),
    .out (net88)
  );
  and_cell gate62 (
    .a (net87),
    .b (net88),
    .out (net89)
  );
  and_cell gate63 (
    .a (net14),
    .b (net89),
    .out (net84)
  );
  not_cell gate64 (
    .in (net14),
    .out (net90)
  );
  not_cell gate65 (
    .in (net9),
    .out (net91)
  );
  and_cell gate66 (
    .a (net90),
    .b (net91),
    .out (net92)
  );
  and_cell gate67 (
    .a (net11),
    .b (net92),
    .out (net86)
  );
  not_cell gate68 (
    .in (net14),
    .out (net93)
  );
  and_cell gate69 (
    .a (net11),
    .b (net93),
    .out (net94)
  );
  and_cell gate70 (
    .a (net9),
    .b (net94),
    .out (net95)
  );
  or_cell gate71 (
    .a (net95),
    .b (net96),
    .out (net97)
  );
  or_cell gate72 (
    .a (net97),
    .b (net98),
    .out (net79)
  );
  not_cell gate73 (
    .in (net11),
    .out (net99)
  );
  and_cell gate74 (
    .a (net9),
    .b (net99),
    .out (net100)
  );
  and_cell gate75 (
    .a (net14),
    .b (net100),
    .out (net96)
  );
  not_cell gate76 (
    .in (net9),
    .out (net101)
  );
  and_cell gate77 (
    .a (net14),
    .b (net101),
    .out (net102)
  );
  and_cell gate78 (
    .a (net11),
    .b (net102),
    .out (net98)
  );
  and_cell gate79 (
    .a (net103),
    .b (net12),
    .out (net104)
  );
  or_cell gate80 (
    .a (net104),
    .b (net105),
    .out (net36)
  );
  not_cell gate81 (
    .in (net12),
    .out (net106)
  );
  and_cell gate82 (
    .a (net106),
    .b (net107),
    .out (net105)
  );
  not_cell gate83 (
    .in (net13),
    .out (net108)
  );
  not_cell gate84 (
    .in (net14),
    .out (net109)
  );
  and_cell gate85 (
    .a (net108),
    .b (net109),
    .out (net110)
  );
  and_cell gate86 (
    .a (net11),
    .b (net110),
    .out (net111)
  );
  or_cell gate87 (
    .a (net111),
    .b (net112),
    .out (net113)
  );
  or_cell gate88 (
    .a (net113),
    .b (net114),
    .out (net103)
  );
  not_cell gate89 (
    .in (net11),
    .out (net115)
  );
  not_cell gate90 (
    .in (net13),
    .out (net116)
  );
  and_cell gate91 (
    .a (net115),
    .b (net116),
    .out (net117)
  );
  and_cell gate92 (
    .a (net14),
    .b (net117),
    .out (net112)
  );
  not_cell gate93 (
    .in (net14),
    .out (net118)
  );
  not_cell gate94 (
    .in (net11),
    .out (net119)
  );
  and_cell gate95 (
    .a (net118),
    .b (net119),
    .out (net120)
  );
  and_cell gate96 (
    .a (net13),
    .b (net120),
    .out (net114)
  );
  not_cell gate97 (
    .in (net14),
    .out (net121)
  );
  and_cell gate98 (
    .a (net13),
    .b (net121),
    .out (net122)
  );
  and_cell gate99 (
    .a (net11),
    .b (net122),
    .out (net123)
  );
  or_cell gate100 (
    .a (net123),
    .b (net124),
    .out (net125)
  );
  or_cell gate101 (
    .a (net125),
    .b (net126),
    .out (net107)
  );
  not_cell gate102 (
    .in (net13),
    .out (net127)
  );
  and_cell gate103 (
    .a (net11),
    .b (net127),
    .out (net128)
  );
  and_cell gate104 (
    .a (net14),
    .b (net128),
    .out (net124)
  );
  not_cell gate105 (
    .in (net11),
    .out (net129)
  );
  and_cell gate106 (
    .a (net14),
    .b (net129),
    .out (net130)
  );
  and_cell gate107 (
    .a (net13),
    .b (net130),
    .out (net126)
  );
  and_cell gate108 (
    .a (net131),
    .b (net13),
    .out (net132)
  );
  or_cell gate109 (
    .a (net132),
    .b (net133),
    .out (net37)
  );
  not_cell gate110 (
    .in (net13),
    .out (net134)
  );
  and_cell gate111 (
    .a (net134),
    .b (net135),
    .out (net133)
  );
  not_cell gate112 (
    .in (net12),
    .out (net136)
  );
  not_cell gate113 (
    .in (net14),
    .out (net137)
  );
  and_cell gate114 (
    .a (net136),
    .b (net137),
    .out (net138)
  );
  and_cell gate115 (
    .a (net8),
    .b (net138),
    .out (net139)
  );
  or_cell gate116 (
    .a (net139),
    .b (net140),
    .out (net141)
  );
  or_cell gate117 (
    .a (net141),
    .b (net142),
    .out (net131)
  );
  not_cell gate118 (
    .in (net8),
    .out (net143)
  );
  not_cell gate119 (
    .in (net12),
    .out (net144)
  );
  and_cell gate120 (
    .a (net143),
    .b (net144),
    .out (net145)
  );
  and_cell gate121 (
    .a (net14),
    .b (net145),
    .out (net140)
  );
  not_cell gate122 (
    .in (net14),
    .out (net146)
  );
  not_cell gate123 (
    .in (net8),
    .out (net147)
  );
  and_cell gate124 (
    .a (net146),
    .b (net147),
    .out (net148)
  );
  and_cell gate125 (
    .a (net12),
    .b (net148),
    .out (net142)
  );
  not_cell gate126 (
    .in (net14),
    .out (net149)
  );
  and_cell gate127 (
    .a (net12),
    .b (net149),
    .out (net150)
  );
  and_cell gate128 (
    .a (net8),
    .b (net150),
    .out (net151)
  );
  or_cell gate129 (
    .a (net151),
    .b (net152),
    .out (net153)
  );
  or_cell gate130 (
    .a (net153),
    .b (net154),
    .out (net135)
  );
  not_cell gate131 (
    .in (net12),
    .out (net155)
  );
  and_cell gate132 (
    .a (net8),
    .b (net155),
    .out (net156)
  );
  and_cell gate133 (
    .a (net14),
    .b (net156),
    .out (net152)
  );
  not_cell gate134 (
    .in (net8),
    .out (net157)
  );
  and_cell gate135 (
    .a (net14),
    .b (net157),
    .out (net158)
  );
  and_cell gate136 (
    .a (net12),
    .b (net158),
    .out (net154)
  );
  and_cell gate137 (
    .a (net159),
    .b (net14),
    .out (net160)
  );
  or_cell gate138 (
    .a (net160),
    .b (net161),
    .out (net38)
  );
  not_cell gate139 (
    .in (net14),
    .out (net162)
  );
  and_cell gate140 (
    .a (net162),
    .b (net163),
    .out (net161)
  );
  not_cell gate141 (
    .in (net13),
    .out (net164)
  );
  not_cell gate142 (
    .in (net9),
    .out (net165)
  );
  and_cell gate143 (
    .a (net164),
    .b (net165),
    .out (net166)
  );
  and_cell gate144 (
    .a (net10),
    .b (net167),
    .out (net168)
  );
  or_cell gate145 (
    .a (net168),
    .b (net169),
    .out (net170)
  );
  or_cell gate146 (
    .a (net170),
    .b (net171),
    .out (net172)
  );
  or_cell gate159 (
    .a (net173),
    .b (net174),
    .out (net163)
  );
  and_cell gate162 (
    .a (net175),
    .b (net176),
    .out (net173)
  );
  and_cell gate165 (
    .a (net177),
    .b (net178),
    .out (net174)
  );
  xor_cell gate166 (
    .a (net9),
    .b (net10),
    .out (net175)
  );
  xor_cell gate155 (
    .a (net12),
    .b (net13),
    .out (net176)
  );
  xor_cell gate156 (
    .a (net9),
    .b (net12),
    .out (net177)
  );
  xor_cell gate157 (
    .a (net10),
    .b (net13),
    .out (net178)
  );
  and_cell gate158 (
    .a (net179),
    .b (net166),
    .out (net167)
  );
  not_cell gate160 (
    .in (net12),
    .out (net179)
  );
  not_cell gate147 (
    .in (net9),
    .out (net180)
  );
  not_cell gate148 (
    .in (net10),
    .out (net181)
  );
  and_cell gate149 (
    .a (net180),
    .b (net181),
    .out (net182)
  );
  and_cell gate150 (
    .a (net12),
    .b (net183),
    .out (net169)
  );
  and_cell gate151 (
    .a (net184),
    .b (net182),
    .out (net183)
  );
  not_cell gate152 (
    .in (net13),
    .out (net184)
  );
  not_cell gate153 (
    .in (net10),
    .out (net185)
  );
  not_cell gate154 (
    .in (net12),
    .out (net186)
  );
  and_cell gate161 (
    .a (net185),
    .b (net186),
    .out (net187)
  );
  and_cell gate163 (
    .a (net13),
    .b (net188),
    .out (net171)
  );
  and_cell gate164 (
    .a (net189),
    .b (net187),
    .out (net188)
  );
  not_cell gate168 (
    .in (net9),
    .out (net189)
  );
  not_cell gate169 (
    .in (net12),
    .out (net190)
  );
  not_cell gate170 (
    .in (net13),
    .out (net191)
  );
  and_cell gate171 (
    .a (net190),
    .b (net191),
    .out (net192)
  );
  and_cell gate172 (
    .a (net9),
    .b (net193),
    .out (net194)
  );
  and_cell gate173 (
    .a (net195),
    .b (net192),
    .out (net193)
  );
  not_cell gate174 (
    .in (net10),
    .out (net195)
  );
  or_cell gate167 (
    .a (net172),
    .b (net194),
    .out (net159)
  );
  or_cell or1 (
    .a (net198),
    .b (net199),
    .out (net20)
  );
  and_cell and1 (
    .a (net200),
    .b (net32),
    .out (net199)
  );
  and_cell and2 (
    .a (net201),
    .b (net4),
    .out (net198)
  );
  not_cell not1 (
    .in (net4),
    .out (net200)
  );
  dff_cell flop8 (
    .d (net202),
    .clk (net1),
    .q (net203),
    .notq (net202)
  );
  dff_cell flop9 (
    .d (net204),
    .clk (net203),
    .q (net205),
    .notq (net204)
  );
  dff_cell flop10 (
    .d (net206),
    .clk (net205),
    .q (net207),
    .notq (net206)
  );
  dff_cell flop19 (
    .d (net208),
    .clk (net209),
    .q (net210),
    .notq (net208)
  );
  dff_cell flop20 (
    .d (net211),
    .clk (net210),
    .q (net212),
    .notq (net211)
  );
  dff_cell flop21 (
    .d (net213),
    .clk (net214),
    .q (net215),
    .notq (net213)
  );
  mux_cell mux9 (
    .a (net1),
    .b (net207),
    .sel (net5),
    .out (net209)
  );
  mux_cell mux10 (
    .a (net209),
    .b (net212),
    .sel (net6),
    .out (net214)
  );
  mux_cell mux11 (
    .a (net214),
    .b (net215),
    .sel (net7),
    .out (net201)
  );
  not_cell gate2 (
    .in (net4),
    .out (net15)
  );
endmodule
