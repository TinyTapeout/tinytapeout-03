/* Automatically generated from https://wokwi.com/projects/360295047631610881 */

`default_nettype none

module user_module_360295047631610881(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5 = io_in[4];
  wire net6;
  wire net7;
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14 = 1'b1;
  wire net15;
  wire net16 = 1'b0;
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

  assign io_out[0] = net6;
  assign io_out[1] = net7;
  assign io_out[2] = net8;
  assign io_out[3] = net9;
  assign io_out[4] = net10;
  assign io_out[5] = net11;
  assign io_out[6] = net12;
  assign io_out[7] = net13;

  dff_cell flop1 (
    .d (net2),
    .clk (net1),
    .q (net15)
  );
  and_cell and1 (
    .a (net5),
    .b (net15),
    .out (net17)
  );
  dff_cell flop2 (
    .d (net15),
    .clk (net1),
    .q (net18)
  );
  and_cell and2 (
    .a (net5),
    .b (net18),
    .out (net19)
  );
  dff_cell flop3 (
    .d (net18),
    .clk (net1),
    .q (net20)
  );
  and_cell and3 (
    .a (net5),
    .b (net20),
    .out (net21)
  );
  dff_cell flop4 (
    .d (net20),
    .clk (net1),
    .q (net22)
  );
  and_cell and4 (
    .a (net5),
    .b (net22),
    .out (net23)
  );
  dff_cell flop5 (
    .d (net22),
    .clk (net1),
    .q (net24)
  );
  and_cell and5 (
    .a (net5),
    .b (net24),
    .out (net25)
  );
  dff_cell flop6 (
    .d (net24),
    .clk (net1),
    .q (net26)
  );
  and_cell and6 (
    .a (net5),
    .b (net26),
    .out (net27)
  );
  dff_cell flop7 (
    .d (net26),
    .clk (net1),
    .q (net28)
  );
  and_cell and7 (
    .a (net5),
    .b (net28),
    .out (net29)
  );
  dff_cell flop8 (
    .d (net28),
    .clk (net1),
    .q (net30)
  );
  and_cell and8 (
    .a (net5),
    .b (net30),
    .out (net31)
  );
  dff_cell flop9 (
    .d (net30),
    .clk (net1),
    .q (net32)
  );
  and_cell and9 (
    .a (net5),
    .b (net32),
    .out (net33)
  );
  dff_cell flop10 (
    .d (net32),
    .clk (net1),
    .q (net34)
  );
  and_cell and10 (
    .a (net5),
    .b (net34),
    .out (net35)
  );
  dff_cell flop11 (
    .d (net34),
    .clk (net1),
    .q (net36)
  );
  and_cell and11 (
    .a (net5),
    .b (net36),
    .out (net37)
  );
  dff_cell flop12 (
    .d (net36),
    .clk (net1),
    .q (net38)
  );
  and_cell and12 (
    .a (net5),
    .b (net38),
    .out (net39)
  );
  dff_cell flop13 (
    .d (net38),
    .clk (net1),
    .q (net40)
  );
  and_cell and13 (
    .a (net5),
    .b (net40),
    .out (net41)
  );
  dff_cell flop14 (
    .d (net40),
    .clk (net1),
    .q (net42)
  );
  and_cell and14 (
    .a (net5),
    .b (net42),
    .out (net43)
  );
  dff_cell flop15 (
    .d (net42),
    .clk (net1),
    .q (net44)
  );
  and_cell and15 (
    .a (net5),
    .b (net44),
    .out (net45)
  );
  dff_cell flop16 (
    .d (net44),
    .clk (net1),
    .q (net46)
  );
  and_cell and16 (
    .a (net5),
    .b (net46),
    .out (net47)
  );
  mux_cell mux1 (
    .a (net17),
    .b (net33),
    .sel (net48),
    .out (net49)
  );
  mux_cell mux2 (
    .a (net19),
    .b (net35),
    .sel (net48),
    .out (net50)
  );
  mux_cell mux3 (
    .a (net21),
    .b (net37),
    .sel (net48),
    .out (net51)
  );
  mux_cell mux4 (
    .a (net23),
    .b (net39),
    .sel (net48),
    .out (net52)
  );
  mux_cell mux5 (
    .a (net25),
    .b (net41),
    .sel (net48),
    .out (net53)
  );
  mux_cell mux6 (
    .a (net27),
    .b (net43),
    .sel (net48),
    .out (net54)
  );
  mux_cell mux7 (
    .a (net29),
    .b (net45),
    .sel (net48),
    .out (net55)
  );
  mux_cell mux8 (
    .a (net31),
    .b (net47),
    .sel (net48),
    .out (net56)
  );
  dff_cell flop17 (
    .d (net46),
    .clk (net1),
    .q (net57)
  );
  and_cell and17 (
    .a (net5),
    .b (net57),
    .out (net58)
  );
  dff_cell flop18 (
    .d (net57),
    .clk (net1),
    .q (net59)
  );
  and_cell and18 (
    .a (net5),
    .b (net59),
    .out (net60)
  );
  dff_cell flop19 (
    .d (net59),
    .clk (net1),
    .q (net61)
  );
  and_cell and19 (
    .a (net5),
    .b (net61),
    .out (net62)
  );
  dff_cell flop20 (
    .d (net61),
    .clk (net1),
    .q (net63)
  );
  and_cell and20 (
    .a (net5),
    .b (net63),
    .out (net64)
  );
  dff_cell flop21 (
    .d (net63),
    .clk (net1),
    .q (net65)
  );
  and_cell and21 (
    .a (net5),
    .b (net65),
    .out (net66)
  );
  dff_cell flop22 (
    .d (net65),
    .clk (net1),
    .q (net67)
  );
  and_cell and22 (
    .a (net5),
    .b (net67),
    .out (net68)
  );
  dff_cell flop23 (
    .d (net67),
    .clk (net1),
    .q (net69)
  );
  and_cell and23 (
    .a (net5),
    .b (net69),
    .out (net70)
  );
  dff_cell flop24 (
    .d (net69),
    .clk (net1),
    .q (net71)
  );
  and_cell and24 (
    .a (net5),
    .b (net71),
    .out (net72)
  );
  dff_cell flop25 (
    .d (net71),
    .clk (net1),
    .q (net73)
  );
  and_cell and25 (
    .a (net5),
    .b (net73),
    .out (net74)
  );
  dff_cell flop26 (
    .d (net73),
    .clk (net1),
    .q (net75)
  );
  and_cell and26 (
    .a (net5),
    .b (net75),
    .out (net76)
  );
  dff_cell flop27 (
    .d (net75),
    .clk (net1),
    .q (net77)
  );
  and_cell and27 (
    .a (net5),
    .b (net77),
    .out (net78)
  );
  dff_cell flop28 (
    .d (net77),
    .clk (net1),
    .q (net79)
  );
  and_cell and28 (
    .a (net5),
    .b (net79),
    .out (net80)
  );
  dff_cell flop29 (
    .d (net79),
    .clk (net1),
    .q (net81)
  );
  and_cell and29 (
    .a (net5),
    .b (net81),
    .out (net82)
  );
  dff_cell flop30 (
    .d (net81),
    .clk (net1),
    .q (net83)
  );
  and_cell and30 (
    .a (net5),
    .b (net83),
    .out (net84)
  );
  dff_cell flop31 (
    .d (net83),
    .clk (net1),
    .q (net85)
  );
  and_cell and31 (
    .a (net5),
    .b (net85),
    .out (net86)
  );
  dff_cell flop32 (
    .d (net85),
    .clk (net1),
    .q (net87)
  );
  and_cell and32 (
    .a (net5),
    .b (net87),
    .out (net88)
  );
  mux_cell mux9 (
    .a (net58),
    .b (net74),
    .sel (net89),
    .out (net90)
  );
  mux_cell mux10 (
    .a (net60),
    .b (net76),
    .sel (net89),
    .out (net91)
  );
  mux_cell mux11 (
    .a (net62),
    .b (net78),
    .sel (net89),
    .out (net92)
  );
  mux_cell mux12 (
    .a (net64),
    .b (net80),
    .sel (net89),
    .out (net93)
  );
  mux_cell mux13 (
    .a (net66),
    .b (net82),
    .sel (net89),
    .out (net94)
  );
  mux_cell mux14 (
    .a (net68),
    .b (net84),
    .sel (net89),
    .out (net95)
  );
  mux_cell mux15 (
    .a (net70),
    .b (net86),
    .sel (net89),
    .out (net96)
  );
  mux_cell mux16 (
    .a (net72),
    .b (net88),
    .sel (net89),
    .out (net97)
  );
  mux_cell mux17 (
    .a (net49),
    .b (net90),
    .sel (net98),
    .out (net99)
  );
  mux_cell mux18 (
    .a (net50),
    .b (net91),
    .sel (net98),
    .out (net100)
  );
  mux_cell mux19 (
    .a (net51),
    .b (net92),
    .sel (net98),
    .out (net101)
  );
  mux_cell mux20 (
    .a (net52),
    .b (net93),
    .sel (net98),
    .out (net102)
  );
  mux_cell mux21 (
    .a (net53),
    .b (net94),
    .sel (net98),
    .out (net103)
  );
  mux_cell mux22 (
    .a (net54),
    .b (net95),
    .sel (net98),
    .out (net104)
  );
  mux_cell mux23 (
    .a (net55),
    .b (net96),
    .sel (net98),
    .out (net105)
  );
  mux_cell mux24 (
    .a (net56),
    .b (net97),
    .sel (net98),
    .out (net106)
  );
  dff_cell flop33 (
    .d (net4),
    .clk (net3),
    .q (net98)
  );
  dff_cell flop34 (
    .d (net98),
    .clk (net3),
    .q (net48)
  );
  dff_cell flop35 (
    .d (net48),
    .clk (net3),
    .q (net89)
  );
  dff_cell flop36 (
    .d (net89),
    .clk (net3),
    .q (net107)
  );
  dff_cell flop37 (
    .d (net107),
    .clk (net3),
    .q (net108)
  );
  dff_cell flop38 (
    .d (net108),
    .clk (net3),
    .q (net109)
  );
  dff_cell flop39 (
    .d (net109),
    .clk (net3),
    .q (net110)
  );
  dff_cell flop40 (
    .d (net110),
    .clk (net3)
  );
  dff_cell flop57 (
    .d (net87),
    .clk (net1),
    .q (net111)
  );
  and_cell and33 (
    .a (net5),
    .b (net111),
    .out (net112)
  );
  dff_cell flop58 (
    .d (net111),
    .clk (net1),
    .q (net113)
  );
  and_cell and34 (
    .a (net5),
    .b (net113),
    .out (net114)
  );
  dff_cell flop59 (
    .d (net113),
    .clk (net1),
    .q (net115)
  );
  and_cell and35 (
    .a (net5),
    .b (net115),
    .out (net116)
  );
  dff_cell flop60 (
    .d (net115),
    .clk (net1),
    .q (net117)
  );
  and_cell and36 (
    .a (net5),
    .b (net117),
    .out (net118)
  );
  dff_cell flop61 (
    .d (net117),
    .clk (net1),
    .q (net119)
  );
  and_cell and37 (
    .a (net5),
    .b (net119),
    .out (net120)
  );
  dff_cell flop62 (
    .d (net119),
    .clk (net1),
    .q (net121)
  );
  and_cell and38 (
    .a (net5),
    .b (net121),
    .out (net122)
  );
  dff_cell flop63 (
    .d (net121),
    .clk (net1),
    .q (net123)
  );
  and_cell and39 (
    .a (net5),
    .b (net123),
    .out (net124)
  );
  dff_cell flop64 (
    .d (net123),
    .clk (net1),
    .q (net125)
  );
  and_cell and40 (
    .a (net5),
    .b (net125),
    .out (net126)
  );
  dff_cell flop65 (
    .d (net125),
    .clk (net1),
    .q (net127)
  );
  and_cell and41 (
    .a (net5),
    .b (net127),
    .out (net128)
  );
  dff_cell flop66 (
    .d (net127),
    .clk (net1),
    .q (net129)
  );
  and_cell and42 (
    .a (net5),
    .b (net129),
    .out (net130)
  );
  dff_cell flop67 (
    .d (net129),
    .clk (net1),
    .q (net131)
  );
  and_cell and43 (
    .a (net5),
    .b (net131),
    .out (net132)
  );
  dff_cell flop68 (
    .d (net131),
    .clk (net1),
    .q (net133)
  );
  and_cell and44 (
    .a (net5),
    .b (net133),
    .out (net134)
  );
  dff_cell flop69 (
    .d (net133),
    .clk (net1),
    .q (net135)
  );
  and_cell and45 (
    .a (net5),
    .b (net135),
    .out (net136)
  );
  dff_cell flop70 (
    .d (net135),
    .clk (net1),
    .q (net137)
  );
  and_cell and46 (
    .a (net5),
    .b (net137),
    .out (net138)
  );
  dff_cell flop71 (
    .d (net137),
    .clk (net1),
    .q (net139)
  );
  and_cell and47 (
    .a (net5),
    .b (net139),
    .out (net140)
  );
  dff_cell flop72 (
    .d (net139),
    .clk (net1),
    .q (net141)
  );
  and_cell and48 (
    .a (net5),
    .b (net141),
    .out (net142)
  );
  mux_cell mux25 (
    .a (net112),
    .b (net128),
    .sel (net107),
    .out (net143)
  );
  mux_cell mux26 (
    .a (net114),
    .b (net130),
    .sel (net107),
    .out (net144)
  );
  mux_cell mux27 (
    .a (net116),
    .b (net132),
    .sel (net107),
    .out (net145)
  );
  mux_cell mux28 (
    .a (net118),
    .b (net134),
    .sel (net107),
    .out (net146)
  );
  mux_cell mux29 (
    .a (net120),
    .b (net136),
    .sel (net107),
    .out (net147)
  );
  mux_cell mux30 (
    .a (net122),
    .b (net138),
    .sel (net107),
    .out (net148)
  );
  mux_cell mux31 (
    .a (net124),
    .b (net140),
    .sel (net107),
    .out (net149)
  );
  mux_cell mux32 (
    .a (net126),
    .b (net142),
    .sel (net107),
    .out (net150)
  );
  dff_cell flop73 (
    .d (net141),
    .clk (net1),
    .q (net151)
  );
  and_cell and49 (
    .a (net5),
    .b (net151),
    .out (net152)
  );
  dff_cell flop74 (
    .d (net151),
    .clk (net1),
    .q (net153)
  );
  and_cell and50 (
    .a (net5),
    .b (net153),
    .out (net154)
  );
  dff_cell flop75 (
    .d (net153),
    .clk (net1),
    .q (net155)
  );
  and_cell and51 (
    .a (net5),
    .b (net155),
    .out (net156)
  );
  dff_cell flop76 (
    .d (net155),
    .clk (net1),
    .q (net157)
  );
  and_cell and52 (
    .a (net5),
    .b (net157),
    .out (net158)
  );
  dff_cell flop77 (
    .d (net157),
    .clk (net1),
    .q (net159)
  );
  and_cell and53 (
    .a (net5),
    .b (net159),
    .out (net160)
  );
  dff_cell flop78 (
    .d (net159),
    .clk (net1),
    .q (net161)
  );
  and_cell and54 (
    .a (net5),
    .b (net161),
    .out (net162)
  );
  dff_cell flop79 (
    .d (net161),
    .clk (net1),
    .q (net163)
  );
  and_cell and55 (
    .a (net5),
    .b (net163),
    .out (net164)
  );
  dff_cell flop80 (
    .d (net163),
    .clk (net1),
    .q (net165)
  );
  and_cell and56 (
    .a (net5),
    .b (net165),
    .out (net166)
  );
  dff_cell flop81 (
    .d (net165),
    .clk (net1),
    .q (net167)
  );
  and_cell and57 (
    .a (net5),
    .b (net167),
    .out (net168)
  );
  dff_cell flop82 (
    .d (net167),
    .clk (net1),
    .q (net169)
  );
  and_cell and58 (
    .a (net5),
    .b (net169),
    .out (net170)
  );
  dff_cell flop83 (
    .d (net169),
    .clk (net1),
    .q (net171)
  );
  and_cell and59 (
    .a (net5),
    .b (net171),
    .out (net172)
  );
  dff_cell flop84 (
    .d (net171),
    .clk (net1),
    .q (net173)
  );
  and_cell and60 (
    .a (net5),
    .b (net173),
    .out (net174)
  );
  dff_cell flop85 (
    .d (net173),
    .clk (net1),
    .q (net175)
  );
  and_cell and61 (
    .a (net5),
    .b (net175),
    .out (net176)
  );
  dff_cell flop86 (
    .d (net175),
    .clk (net1),
    .q (net177)
  );
  and_cell and62 (
    .a (net5),
    .b (net177),
    .out (net178)
  );
  dff_cell flop87 (
    .d (net177),
    .clk (net1),
    .q (net179)
  );
  and_cell and63 (
    .a (net5),
    .b (net179),
    .out (net180)
  );
  dff_cell flop88 (
    .d (net179),
    .clk (net1),
    .q (net181)
  );
  and_cell and64 (
    .a (net5),
    .b (net181),
    .out (net182)
  );
  mux_cell mux33 (
    .a (net152),
    .b (net168),
    .sel (net108),
    .out (net183)
  );
  mux_cell mux34 (
    .a (net154),
    .b (net170),
    .sel (net108),
    .out (net184)
  );
  mux_cell mux35 (
    .a (net156),
    .b (net172),
    .sel (net108),
    .out (net185)
  );
  mux_cell mux36 (
    .a (net158),
    .b (net174),
    .sel (net108),
    .out (net186)
  );
  mux_cell mux37 (
    .a (net160),
    .b (net176),
    .sel (net108),
    .out (net187)
  );
  mux_cell mux38 (
    .a (net162),
    .b (net178),
    .sel (net108),
    .out (net188)
  );
  mux_cell mux39 (
    .a (net164),
    .b (net180),
    .sel (net108),
    .out (net189)
  );
  mux_cell mux40 (
    .a (net166),
    .b (net182),
    .sel (net108),
    .out (net190)
  );
  mux_cell mux41 (
    .a (net99),
    .b (net143),
    .sel (net109),
    .out (net191)
  );
  mux_cell mux42 (
    .a (net100),
    .b (net144),
    .sel (net109),
    .out (net192)
  );
  mux_cell mux43 (
    .a (net101),
    .b (net145),
    .sel (net109),
    .out (net193)
  );
  mux_cell mux44 (
    .a (net102),
    .b (net146),
    .sel (net109),
    .out (net194)
  );
  mux_cell mux45 (
    .a (net103),
    .b (net147),
    .sel (net109),
    .out (net195)
  );
  mux_cell mux46 (
    .a (net104),
    .b (net148),
    .sel (net109),
    .out (net196)
  );
  mux_cell mux47 (
    .a (net105),
    .b (net149),
    .sel (net109),
    .out (net197)
  );
  mux_cell mux48 (
    .a (net106),
    .b (net150),
    .sel (net109),
    .out (net198)
  );
  mux_cell mux49 (
    .a (net191),
    .b (net183),
    .sel (net110),
    .out (net6)
  );
  mux_cell mux50 (
    .a (net192),
    .b (net184),
    .sel (net110),
    .out (net7)
  );
  mux_cell mux51 (
    .a (net193),
    .b (net185),
    .sel (net110),
    .out (net8)
  );
  mux_cell mux52 (
    .a (net194),
    .b (net186),
    .sel (net110),
    .out (net9)
  );
  mux_cell mux53 (
    .a (net195),
    .b (net187),
    .sel (net110),
    .out (net10)
  );
  mux_cell mux54 (
    .a (net196),
    .b (net188),
    .sel (net110),
    .out (net11)
  );
  mux_cell mux55 (
    .a (net197),
    .b (net189),
    .sel (net110),
    .out (net12)
  );
  mux_cell mux56 (
    .a (net198),
    .b (net190),
    .sel (net110),
    .out (net13)
  );
endmodule
