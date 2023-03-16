/* Automatically generated from https://wokwi.com/projects/357106633951414273 */

`default_nettype none

module user_module_357106633951414273(
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
  wire net15;
  wire net16 = 1'b0;
  wire net17 = 1'b1;
  wire net18 = 1'b1;
  wire net19 = 1'b1;
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
  wire net49 = 1'b1;
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

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;
  assign io_out[5] = net14;
  assign io_out[6] = net15;

  and_cell gate1 (

  );
  or_cell gate2 (

  );
  xor_cell gate3 (

  );
  nand_cell gate4 (

  );
  not_cell gate5 (

  );
  buffer_cell gate6 (

  );
  mux_cell mux1 (

  );
  dff_cell flipflop1 (

  );
  and_cell gate7 (
    .a (net20),
    .b (net21),
    .out (net10)
  );
  and_cell gate9 (
    .a (net20),
    .b (net22),
    .out (net9)
  );
  not_cell gate8 (
    .in (net22),
    .out (net21)
  );
  not_cell gate11 (
    .in (net20),
    .out (net11)
  );
  buffer_cell gate10 (
    .in (net23),
    .out (net13)
  );
  or_cell gate12 (
    .a (net13),
    .b (net24),
    .out (net14)
  );
  buffer_cell gate14 (
    .in (net4),
    .out (net25)
  );
  buffer_cell gate16 (
    .in (net6),
    .out (net26)
  );
  not_cell gate13 (
    .in (net5),
    .out (net27)
  );
  buffer_cell gate20 (
    .in (net28),
    .out (net23)
  );
  buffer_cell gate21 (
    .in (net4),
    .out (net29)
  );
  buffer_cell gate22 (
    .in (net7),
    .out (net30)
  );
  not_cell gate24 (
    .in (net5),
    .out (net31)
  );
  buffer_cell gate28 (
    .in (net32),
    .out (net12)
  );
  buffer_cell gate29 (
    .in (net4),
    .out (net33)
  );
  buffer_cell gate30 (
    .in (net8),
    .out (net34)
  );
  not_cell gate32 (
    .in (net5),
    .out (net35)
  );
  buffer_cell gate36 (
    .in (net36),
    .out (net15)
  );
  buffer_cell gate53 (
    .in (net4),
    .out (net37)
  );
  buffer_cell gate54 (
    .in (net3),
    .out (net38)
  );
  not_cell gate56 (
    .in (net5),
    .out (net39)
  );
  buffer_cell gate60 (
    .in (net40),
    .out (net24)
  );
  buffer_cell gate61 (
    .in (net4),
    .out (net41)
  );
  buffer_cell gate62 (
    .in (net2),
    .out (net42)
  );
  not_cell gate64 (
    .in (net5),
    .out (net43)
  );
  buffer_cell gate68 (
    .in (net44),
    .out (net22)
  );
  buffer_cell gate69 (
    .in (net4),
    .out (net45)
  );
  buffer_cell gate70 (
    .in (net1),
    .out (net46)
  );
  not_cell gate72 (
    .in (net5),
    .out (net47)
  );
  buffer_cell gate76 (
    .in (net48),
    .out (net20)
  );
  dff_cell flipflop2 (
    .d (net46),
    .clk (net50),
    .q (net51)
  );
  dff_cell flipflop3 (
    .d (net51),
    .clk (net50),
    .q (net52)
  );
  and_cell gate15 (
    .a (net51),
    .b (net52),
    .out (net53)
  );
  mux_cell mux2 (
    .a (net48),
    .b (net54),
    .sel (net53),
    .out (net55)
  );
  and_cell gate17 (
    .a (net47),
    .b (net55),
    .out (net56)
  );
  dff_cell flipflop4 (
    .d (net56),
    .clk (net50),
    .q (net48),
    .notq (net54)
  );
  buffer_cell gate18 (
    .in (net45),
    .out (net50)
  );
  dff_cell flipflop5 (
    .d (net42),
    .clk (net57),
    .q (net58)
  );
  dff_cell flipflop6 (
    .d (net58),
    .clk (net57),
    .q (net59)
  );
  and_cell gate19 (
    .a (net58),
    .b (net59),
    .out (net60)
  );
  mux_cell mux3 (
    .a (net44),
    .b (net61),
    .sel (net60),
    .out (net62)
  );
  and_cell gate23 (
    .a (net43),
    .b (net62),
    .out (net63)
  );
  dff_cell flipflop7 (
    .d (net63),
    .clk (net57),
    .q (net44),
    .notq (net61)
  );
  buffer_cell gate25 (
    .in (net41),
    .out (net57)
  );
  dff_cell flipflop8 (
    .d (net38),
    .clk (net64),
    .q (net65)
  );
  dff_cell flipflop9 (
    .d (net65),
    .clk (net64),
    .q (net66)
  );
  and_cell gate26 (
    .a (net65),
    .b (net66),
    .out (net67)
  );
  mux_cell mux4 (
    .a (net40),
    .b (net68),
    .sel (net67),
    .out (net69)
  );
  and_cell gate27 (
    .a (net39),
    .b (net69),
    .out (net70)
  );
  dff_cell flipflop10 (
    .d (net70),
    .clk (net64),
    .q (net40),
    .notq (net68)
  );
  buffer_cell gate31 (
    .in (net37),
    .out (net64)
  );
  dff_cell flipflop17 (
    .d (net26),
    .clk (net71),
    .q (net72)
  );
  dff_cell flipflop18 (
    .d (net72),
    .clk (net71),
    .q (net73)
  );
  and_cell gate43 (
    .a (net72),
    .b (net73),
    .out (net74)
  );
  mux_cell mux7 (
    .a (net28),
    .b (net75),
    .sel (net74),
    .out (net76)
  );
  and_cell gate47 (
    .a (net27),
    .b (net76),
    .out (net77)
  );
  dff_cell flipflop19 (
    .d (net77),
    .clk (net71),
    .q (net28),
    .notq (net75)
  );
  buffer_cell gate49 (
    .in (net25),
    .out (net71)
  );
  dff_cell flipflop20 (
    .d (net30),
    .clk (net78),
    .q (net79)
  );
  dff_cell flipflop21 (
    .d (net79),
    .clk (net78),
    .q (net80)
  );
  and_cell gate50 (
    .a (net79),
    .b (net80),
    .out (net81)
  );
  mux_cell mux8 (
    .a (net32),
    .b (net82),
    .sel (net81),
    .out (net83)
  );
  and_cell gate51 (
    .a (net31),
    .b (net83),
    .out (net84)
  );
  dff_cell flipflop22 (
    .d (net84),
    .clk (net78),
    .q (net32),
    .notq (net82)
  );
  buffer_cell gate55 (
    .in (net29),
    .out (net78)
  );
  dff_cell flipflop23 (
    .d (net34),
    .clk (net85),
    .q (net86)
  );
  dff_cell flipflop24 (
    .d (net86),
    .clk (net85),
    .q (net87)
  );
  and_cell gate57 (
    .a (net86),
    .b (net87),
    .out (net88)
  );
  mux_cell mux9 (
    .a (net36),
    .b (net89),
    .sel (net88),
    .out (net90)
  );
  or_cell gate58 (
    .a (net35),
    .b (net90),
    .out (net91)
  );
  dff_cell flipflop25 (
    .d (net91),
    .clk (net85),
    .q (net36),
    .notq (net89)
  );
  buffer_cell gate59 (
    .in (net33),
    .out (net85)
  );
endmodule
