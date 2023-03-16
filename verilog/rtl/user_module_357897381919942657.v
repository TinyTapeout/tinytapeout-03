/* Automatically generated from https://wokwi.com/projects/357897381919942657 */

`default_nettype none

module user_module_357897381919942657(
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
  wire net13 = 1'b0;
  wire net14 = 1'b1;
  wire net15 = 1'b1;
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

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;

  and_cell gate1 (

  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  not_cell gate5 (

  );
  buffer_cell gate6 (
    .in (net4),
    .out (net16)
  );
  mux_cell mux1 (

  );
  dff_cell flipflop1 (

  );
  buffer_cell gate8 (
    .in (net3),
    .out (net17)
  );
  mux_cell mux2 (
    .a (net18),
    .b (net19),
    .sel (net16),
    .out (net20)
  );
  mux_cell mux3 (
    .a (net21),
    .b (net22),
    .sel (net16),
    .out (net23)
  );
  mux_cell mux4 (
    .a (net23),
    .b (net20),
    .sel (net17),
    .out (net9)
  );
  mux_cell mux5 (
    .a (net24),
    .b (net25),
    .sel (net16),
    .out (net26)
  );
  mux_cell mux6 (
    .a (net27),
    .b (net26),
    .sel (net17),
    .out (net10)
  );
  mux_cell mux7 (
    .a (net28),
    .b (net29),
    .sel (net16),
    .out (net27)
  );
  mux_cell mux8 (
    .a (net30),
    .b (net31),
    .sel (net17),
    .out (net11)
  );
  mux_cell mux9 (
    .a (net32),
    .b (net33),
    .sel (net16),
    .out (net31)
  );
  mux_cell mux10 (
    .a (net34),
    .b (net35),
    .sel (net16),
    .out (net30)
  );
  mux_cell mux11 (
    .a (net36),
    .b (net37),
    .sel (net17),
    .out (net12)
  );
  mux_cell mux12 (
    .a (net38),
    .b (net39),
    .sel (net16),
    .out (net37)
  );
  mux_cell mux13 (
    .a (net40),
    .b (net41),
    .sel (net16),
    .out (net36)
  );
  dff_cell flipflop2 (
    .d (net42),
    .clk (net43),
    .q (net44)
  );
  mux_cell mux14 (
    .a (net44),
    .b (net45),
    .sel (net46),
    .out (net42)
  );
  buffer_cell gate4 (
    .in (net47),
    .out (net46)
  );
  buffer_cell gate7 (
    .in (net48),
    .out (net43)
  );
  buffer_cell gate9 (
    .in (net44),
    .out (net21)
  );
  dff_cell flipflop3 (
    .d (net49),
    .clk (net50),
    .q (net51)
  );
  mux_cell mux15 (
    .a (net51),
    .b (net52),
    .sel (net53),
    .out (net49)
  );
  buffer_cell gate10 (
    .in (net47),
    .out (net53)
  );
  buffer_cell gate11 (
    .in (net48),
    .out (net50)
  );
  buffer_cell gate12 (
    .in (net51),
    .out (net28)
  );
  dff_cell flipflop4 (
    .d (net54),
    .clk (net55),
    .q (net56)
  );
  mux_cell mux16 (
    .a (net56),
    .b (net57),
    .sel (net58),
    .out (net54)
  );
  buffer_cell gate13 (
    .in (net47),
    .out (net58)
  );
  buffer_cell gate14 (
    .in (net48),
    .out (net55)
  );
  buffer_cell gate15 (
    .in (net56),
    .out (net34)
  );
  dff_cell flipflop5 (
    .d (net59),
    .clk (net60),
    .q (net61)
  );
  mux_cell mux17 (
    .a (net61),
    .b (net62),
    .sel (net63),
    .out (net59)
  );
  buffer_cell gate16 (
    .in (net47),
    .out (net63)
  );
  buffer_cell gate17 (
    .in (net48),
    .out (net60)
  );
  buffer_cell gate18 (
    .in (net61),
    .out (net40)
  );
  buffer_cell gate19 (
    .in (net1),
    .out (net48)
  );
  buffer_cell gate20 (
    .in (net64),
    .out (net47)
  );
  buffer_cell gate21 (
    .in (net8),
    .out (net62)
  );
  buffer_cell gate22 (
    .in (net7),
    .out (net57)
  );
  buffer_cell gate23 (
    .in (net5),
    .out (net45)
  );
  buffer_cell gate24 (
    .in (net6),
    .out (net52)
  );
  dff_cell flipflop6 (
    .d (net65),
    .clk (net66),
    .q (net67)
  );
  mux_cell mux18 (
    .a (net67),
    .b (net68),
    .sel (net69),
    .out (net65)
  );
  buffer_cell gate25 (
    .in (net70),
    .out (net69)
  );
  buffer_cell gate26 (
    .in (net71),
    .out (net66)
  );
  buffer_cell gate27 (
    .in (net67),
    .out (net22)
  );
  dff_cell flipflop7 (
    .d (net72),
    .clk (net73),
    .q (net74)
  );
  mux_cell mux19 (
    .a (net74),
    .b (net75),
    .sel (net76),
    .out (net72)
  );
  buffer_cell gate28 (
    .in (net70),
    .out (net76)
  );
  buffer_cell gate29 (
    .in (net71),
    .out (net73)
  );
  buffer_cell gate30 (
    .in (net74),
    .out (net29)
  );
  dff_cell flipflop8 (
    .d (net77),
    .clk (net78),
    .q (net79)
  );
  mux_cell mux20 (
    .a (net79),
    .b (net80),
    .sel (net81),
    .out (net77)
  );
  buffer_cell gate31 (
    .in (net70),
    .out (net81)
  );
  buffer_cell gate32 (
    .in (net71),
    .out (net78)
  );
  buffer_cell gate33 (
    .in (net79),
    .out (net35)
  );
  dff_cell flipflop9 (
    .d (net82),
    .clk (net83),
    .q (net84)
  );
  mux_cell mux21 (
    .a (net84),
    .b (net85),
    .sel (net86),
    .out (net82)
  );
  buffer_cell gate34 (
    .in (net70),
    .out (net86)
  );
  buffer_cell gate35 (
    .in (net71),
    .out (net83)
  );
  buffer_cell gate36 (
    .in (net84),
    .out (net41)
  );
  buffer_cell gate37 (
    .in (net1),
    .out (net71)
  );
  buffer_cell gate38 (
    .in (net87),
    .out (net70)
  );
  buffer_cell gate39 (
    .in (net8),
    .out (net85)
  );
  buffer_cell gate40 (
    .in (net7),
    .out (net80)
  );
  buffer_cell gate41 (
    .in (net5),
    .out (net68)
  );
  buffer_cell gate42 (
    .in (net6),
    .out (net75)
  );
  dff_cell flipflop10 (
    .d (net88),
    .clk (net89),
    .q (net90)
  );
  mux_cell mux22 (
    .a (net90),
    .b (net91),
    .sel (net92),
    .out (net88)
  );
  buffer_cell gate43 (
    .in (net93),
    .out (net92)
  );
  buffer_cell gate44 (
    .in (net94),
    .out (net89)
  );
  buffer_cell gate45 (
    .in (net90),
    .out (net18)
  );
  dff_cell flipflop11 (
    .d (net95),
    .clk (net96),
    .q (net97)
  );
  mux_cell mux23 (
    .a (net97),
    .b (net98),
    .sel (net99),
    .out (net95)
  );
  buffer_cell gate46 (
    .in (net93),
    .out (net99)
  );
  buffer_cell gate47 (
    .in (net94),
    .out (net96)
  );
  buffer_cell gate48 (
    .in (net97),
    .out (net24)
  );
  dff_cell flipflop12 (
    .d (net100),
    .clk (net101),
    .q (net102)
  );
  mux_cell mux24 (
    .a (net102),
    .b (net103),
    .sel (net104),
    .out (net100)
  );
  buffer_cell gate49 (
    .in (net93),
    .out (net104)
  );
  buffer_cell gate50 (
    .in (net94),
    .out (net101)
  );
  buffer_cell gate51 (
    .in (net102),
    .out (net32)
  );
  dff_cell flipflop13 (
    .d (net105),
    .clk (net106),
    .q (net107)
  );
  mux_cell mux25 (
    .a (net107),
    .b (net108),
    .sel (net109),
    .out (net105)
  );
  buffer_cell gate52 (
    .in (net93),
    .out (net109)
  );
  buffer_cell gate53 (
    .in (net94),
    .out (net106)
  );
  buffer_cell gate54 (
    .in (net107),
    .out (net38)
  );
  buffer_cell gate55 (
    .in (net1),
    .out (net94)
  );
  buffer_cell gate56 (
    .in (net110),
    .out (net93)
  );
  buffer_cell gate57 (
    .in (net8),
    .out (net108)
  );
  buffer_cell gate58 (
    .in (net7),
    .out (net103)
  );
  buffer_cell gate59 (
    .in (net5),
    .out (net91)
  );
  buffer_cell gate60 (
    .in (net6),
    .out (net98)
  );
  dff_cell flipflop14 (
    .d (net111),
    .clk (net112),
    .q (net113)
  );
  mux_cell mux26 (
    .a (net113),
    .b (net114),
    .sel (net115),
    .out (net111)
  );
  buffer_cell gate61 (
    .in (net116),
    .out (net115)
  );
  buffer_cell gate62 (
    .in (net117),
    .out (net112)
  );
  buffer_cell gate63 (
    .in (net113),
    .out (net19)
  );
  dff_cell flipflop15 (
    .d (net118),
    .clk (net119),
    .q (net120)
  );
  mux_cell mux27 (
    .a (net120),
    .b (net121),
    .sel (net122),
    .out (net118)
  );
  buffer_cell gate64 (
    .in (net116),
    .out (net122)
  );
  buffer_cell gate65 (
    .in (net117),
    .out (net119)
  );
  buffer_cell gate66 (
    .in (net120),
    .out (net25)
  );
  dff_cell flipflop16 (
    .d (net123),
    .clk (net124),
    .q (net125)
  );
  mux_cell mux28 (
    .a (net125),
    .b (net126),
    .sel (net127),
    .out (net123)
  );
  buffer_cell gate67 (
    .in (net116),
    .out (net127)
  );
  buffer_cell gate68 (
    .in (net117),
    .out (net124)
  );
  buffer_cell gate69 (
    .in (net125),
    .out (net33)
  );
  dff_cell flipflop17 (
    .d (net128),
    .clk (net129),
    .q (net130)
  );
  mux_cell mux29 (
    .a (net130),
    .b (net131),
    .sel (net132),
    .out (net128)
  );
  buffer_cell gate70 (
    .in (net116),
    .out (net132)
  );
  buffer_cell gate71 (
    .in (net117),
    .out (net129)
  );
  buffer_cell gate72 (
    .in (net130),
    .out (net39)
  );
  buffer_cell gate73 (
    .in (net1),
    .out (net117)
  );
  buffer_cell gate74 (
    .in (net133),
    .out (net116)
  );
  buffer_cell gate75 (
    .in (net8),
    .out (net131)
  );
  buffer_cell gate76 (
    .in (net7),
    .out (net126)
  );
  buffer_cell gate77 (
    .in (net5),
    .out (net114)
  );
  buffer_cell gate78 (
    .in (net6),
    .out (net121)
  );
  or_cell gate79 (
    .a (net134),
    .b (net134),
    .out (net133)
  );
  or_cell gate80 (
    .a (net135),
    .b (net135),
    .out (net110)
  );
  or_cell gate81 (
    .a (net136),
    .b (net136),
    .out (net87)
  );
  or_cell gate82 (
    .a (net137),
    .b (net137),
    .out (net64)
  );
  buffer_cell gate83 (
    .in (net3),
    .out (net138)
  );
  buffer_cell gate84 (
    .in (net4),
    .out (net139)
  );
  not_cell gate85 (
    .in (net3),
    .out (net140)
  );
  not_cell gate86 (
    .in (net4),
    .out (net141)
  );
  and_cell gate87 (
    .a (net138),
    .b (net139),
    .out (net142)
  );
  and_cell gate88 (
    .a (net138),
    .b (net141),
    .out (net143)
  );
  and_cell gate89 (
    .a (net140),
    .b (net139),
    .out (net144)
  );
  and_cell gate90 (
    .a (net140),
    .b (net141),
    .out (net145)
  );
  and_cell gate91 (
    .a (net2),
    .b (net145),
    .out (net137)
  );
  and_cell gate92 (
    .a (net2),
    .b (net144),
    .out (net136)
  );
  and_cell gate93 (
    .a (net2),
    .b (net143),
    .out (net135)
  );
  and_cell gate94 (
    .a (net2),
    .b (net142),
    .out (net134)
  );
endmodule
