/* Automatically generated from https://wokwi.com/projects/360745091952588801 */

`default_nettype none

module user_module_360745091952588801(
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
  wire net14;
  wire net15 = 1'b1;
  wire net16 = 1'b1;
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
  wire net30 = 1'b0;
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
  wire net73 = 1'b0;
  wire net74 = 1'b0;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79 = 1'b0;
  wire net80;
  wire net81 = 1'b1;
  wire net82 = 1'b1;
  wire net83 = 1'b0;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;
  assign io_out[5] = net13;
  assign io_out[6] = net13;
  assign io_out[7] = net14;

  and_cell and1 (

  );
  or_cell or1 (

  );
  xor_cell xor1 (

  );
  nand_cell nand1 (

  );
  dff_cell flop1 (

  );
  not_cell not5 (

  );
  mux_cell mux1 (

  );
  and_cell and2 (
    .a (net9),
    .b (net17),
    .out (net18)
  );
  or_cell or2 (
    .a (net9),
    .b (net17),
    .out (net19)
  );
  xor_cell xor2 (
    .a (net9),
    .b (net17),
    .out (net20)
  );
  xor_cell xor3 (
    .a (net21),
    .b (net5),
    .out (net22)
  );
  xor_cell xor4 (
    .a (net23),
    .b (net20),
    .out (net24)
  );
  mux_cell mux2 (
    .a (net20),
    .b (net24),
    .sel (net3),
    .out (net25)
  );
  mux_cell mux3 (
    .a (net18),
    .b (net19),
    .sel (net3),
    .out (net26)
  );
  mux_cell mux4 (
    .a (net26),
    .b (net25),
    .sel (net4),
    .out (net27)
  );
  and_cell and3 (
    .a (net23),
    .b (net20),
    .out (net28)
  );
  or_cell or3 (
    .a (net18),
    .b (net28),
    .out (net29)
  );
  mux_cell mux6 (
    .a (net27),
    .b (net17),
    .sel (net31),
    .out (net32)
  );
  dff_cell flop2 (
    .d (net32),
    .clk (net1),
    .q (net9)
  );
  and_cell and4 (
    .a (net10),
    .b (net33),
    .out (net34)
  );
  or_cell or4 (
    .a (net10),
    .b (net33),
    .out (net35)
  );
  xor_cell xor5 (
    .a (net10),
    .b (net33),
    .out (net36)
  );
  xor_cell xor6 (
    .a (net21),
    .b (net6),
    .out (net37)
  );
  xor_cell xor7 (
    .a (net29),
    .b (net36),
    .out (net38)
  );
  mux_cell mux7 (
    .a (net36),
    .b (net38),
    .sel (net3),
    .out (net39)
  );
  mux_cell mux8 (
    .a (net34),
    .b (net35),
    .sel (net3),
    .out (net40)
  );
  mux_cell mux9 (
    .a (net40),
    .b (net39),
    .sel (net4),
    .out (net41)
  );
  and_cell and5 (
    .a (net29),
    .b (net36),
    .out (net42)
  );
  or_cell or5 (
    .a (net34),
    .b (net42),
    .out (net43)
  );
  mux_cell mux10 (
    .a (net41),
    .b (net33),
    .sel (net31),
    .out (net44)
  );
  dff_cell flop3 (
    .d (net44),
    .clk (net1),
    .q (net10)
  );
  dff_cell flop4 (
    .d (net45),
    .clk (net1),
    .q (net14)
  );
  and_cell and6 (
    .a (net11),
    .b (net46),
    .out (net47)
  );
  or_cell or6 (
    .a (net11),
    .b (net46),
    .out (net48)
  );
  xor_cell xor8 (
    .a (net11),
    .b (net46),
    .out (net49)
  );
  xor_cell xor9 (
    .a (net21),
    .b (net7),
    .out (net50)
  );
  xor_cell xor10 (
    .a (net43),
    .b (net49),
    .out (net51)
  );
  mux_cell mux11 (
    .a (net49),
    .b (net51),
    .sel (net3),
    .out (net52)
  );
  mux_cell mux12 (
    .a (net47),
    .b (net48),
    .sel (net3),
    .out (net53)
  );
  mux_cell mux13 (
    .a (net53),
    .b (net52),
    .sel (net4),
    .out (net54)
  );
  and_cell and7 (
    .a (net43),
    .b (net49),
    .out (net55)
  );
  or_cell or7 (
    .a (net47),
    .b (net55),
    .out (net56)
  );
  mux_cell mux14 (
    .a (net54),
    .b (net46),
    .sel (net31),
    .out (net57)
  );
  dff_cell flop5 (
    .d (net57),
    .clk (net1),
    .q (net11)
  );
  and_cell and8 (
    .a (net12),
    .b (net58),
    .out (net59)
  );
  or_cell or8 (
    .a (net12),
    .b (net58),
    .out (net60)
  );
  xor_cell xor11 (
    .a (net12),
    .b (net58),
    .out (net61)
  );
  xor_cell xor12 (
    .a (net21),
    .b (net8),
    .out (net62)
  );
  xor_cell xor13 (
    .a (net56),
    .b (net61),
    .out (net63)
  );
  mux_cell mux15 (
    .a (net61),
    .b (net63),
    .sel (net3),
    .out (net64)
  );
  mux_cell mux16 (
    .a (net59),
    .b (net60),
    .sel (net3),
    .out (net65)
  );
  mux_cell mux17 (
    .a (net65),
    .b (net64),
    .sel (net4),
    .out (net66)
  );
  and_cell and9 (
    .a (net56),
    .b (net61),
    .out (net67)
  );
  or_cell or9 (
    .a (net59),
    .b (net67),
    .out (net68)
  );
  mux_cell mux18 (
    .a (net66),
    .b (net58),
    .sel (net31),
    .out (net69)
  );
  dff_cell flop6 (
    .d (net69),
    .clk (net1),
    .q (net12)
  );
  not_cell not3 (
    .in (net2),
    .out (net70)
  );
  not_cell not4 (
    .in (net3)
  );
  not_cell not6 (
    .in (net4),
    .out (net71)
  );
  and_cell and10 (
    .a (net70),
    .b (net4),
    .out (net21)
  );
  and_cell and11 (
    .a (net72),
    .b (net70),
    .out (net31)
  );
  nand_cell nand2 (
    .a (net3),
    .b (net4),
    .out (net72)
  );
  mux_cell mux20 (
    .a (net62),
    .b (net74),
    .sel (net75),
    .out (net58)
  );
  mux_cell mux21 (
    .a (net50),
    .b (net12),
    .sel (net75),
    .out (net46)
  );
  mux_cell mux22 (
    .a (net37),
    .b (net11),
    .sel (net75),
    .out (net33)
  );
  mux_cell mux23 (
    .a (net22),
    .b (net10),
    .sel (net75),
    .out (net17)
  );
  and_cell and12 (
    .a (net3),
    .b (net70),
    .out (net76)
  );
  and_cell and13 (
    .a (net76),
    .b (net71),
    .out (net75)
  );
  not_cell not7 (
    .in (net77),
    .out (net23)
  );
  not_cell not8 (
    .in (net70),
    .out (net77)
  );
  xor_cell xor14 (
    .a (net23),
    .b (net68),
    .out (net78)
  );
  mux_cell mux24 (
    .a (net79),
    .b (net78),
    .sel (net80),
    .out (net45)
  );
  and_cell and14 (
    .a (net3),
    .b (net4),
    .out (net80)
  );
endmodule
