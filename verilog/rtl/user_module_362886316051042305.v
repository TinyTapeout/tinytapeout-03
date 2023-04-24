/* Automatically generated from https://wokwi.com/projects/362886316051042305 */

`default_nettype none

module user_module_362886316051042305(
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
  wire net16;
  wire net17 = 1'b0;
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
  wire net60 = 1'b0;
  wire net61 = 1'b0;
  wire net62 = 1'b0;
  wire net63 = 1'b0;
  wire net64 = 1'b0;
  wire net65 = 1'b0;
  wire net66 = 1'b0;
  wire net67 = 1'b0;
  wire net68 = 1'b0;
  wire net69 = 1'b0;
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
  wire net84 = 1'b0;
  wire net85 = 1'b0;
  wire net86 = 1'b0;
  wire net87 = 1'b0;
  wire net88 = 1'b0;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;
  assign io_out[5] = net14;
  assign io_out[6] = net15;
  assign io_out[7] = net16;

  and_cell and2 (
    .a (net20),
    .b (net21),
    .out (net22)
  );
  mux_cell mux2 (
    .a (net20),
    .b (net2),
    .sel (net23),
    .out (net20)
  );
  and_cell and1 (
    .a (net24),
    .b (net6),
    .out (net23)
  );
  mux_cell mux3 (
    .a (net25),
    .b (net2),
    .sel (net26),
    .out (net25)
  );
  and_cell and3 (
    .a (net27),
    .b (net6),
    .out (net26)
  );
  mux_cell mux4 (
    .a (net28),
    .b (net2),
    .sel (net29),
    .out (net28)
  );
  and_cell and4 (
    .a (net30),
    .b (net6),
    .out (net29)
  );
  mux_cell mux5 (
    .a (net31),
    .b (net2),
    .sel (net32),
    .out (net31)
  );
  and_cell and5 (
    .a (net33),
    .b (net6),
    .out (net32)
  );
  mux_cell mux6 (
    .a (net34),
    .b (net3),
    .sel (net35),
    .out (net34)
  );
  and_cell and6 (
    .a (net24),
    .b (net6),
    .out (net35)
  );
  mux_cell mux7 (
    .a (net36),
    .b (net3),
    .sel (net37),
    .out (net36)
  );
  and_cell and7 (
    .a (net27),
    .b (net6),
    .out (net37)
  );
  mux_cell mux8 (
    .a (net38),
    .b (net3),
    .sel (net39),
    .out (net38)
  );
  and_cell and8 (
    .a (net30),
    .b (net6),
    .out (net39)
  );
  mux_cell mux9 (
    .a (net40),
    .b (net3),
    .sel (net41),
    .out (net40)
  );
  and_cell and9 (
    .a (net33),
    .b (net6),
    .out (net41)
  );
  not_cell not2 (
    .in (net4),
    .out (net42)
  );
  not_cell not3 (
    .in (net5),
    .out (net43)
  );
  and_cell and10 (
    .a (net42),
    .b (net43),
    .out (net24)
  );
  and_cell and11 (
    .a (net4),
    .b (net43),
    .out (net27)
  );
  and_cell and12 (
    .a (net5),
    .b (net42),
    .out (net30)
  );
  and_cell and13 (
    .a (net5),
    .b (net4),
    .out (net33)
  );
  not_cell not4 (
    .in (net7),
    .out (net44)
  );
  not_cell not5 (
    .in (net8),
    .out (net45)
  );
  and_cell and14 (
    .a (net44),
    .b (net45),
    .out (net21)
  );
  and_cell and15 (
    .a (net7),
    .b (net45),
    .out (net46)
  );
  and_cell and16 (
    .a (net8),
    .b (net44),
    .out (net47)
  );
  and_cell and17 (
    .a (net8),
    .b (net7),
    .out (net48)
  );
  and_cell and18 (
    .a (net25),
    .b (net46),
    .out (net49)
  );
  and_cell and19 (
    .a (net28),
    .b (net47),
    .out (net50)
  );
  and_cell and20 (
    .a (net31),
    .b (net48),
    .out (net51)
  );
  or_cell or1 (
    .a (net22),
    .b (net49),
    .out (net52)
  );
  or_cell or2 (
    .a (net50),
    .b (net51),
    .out (net53)
  );
  or_cell or3 (
    .a (net52),
    .b (net53),
    .out (net15)
  );
  and_cell and21 (
    .a (net34),
    .b (net21),
    .out (net54)
  );
  and_cell and22 (
    .a (net36),
    .b (net46),
    .out (net55)
  );
  and_cell and23 (
    .a (net38),
    .b (net47),
    .out (net56)
  );
  and_cell and24 (
    .a (net40),
    .b (net48),
    .out (net57)
  );
  or_cell or4 (
    .a (net54),
    .b (net55),
    .out (net58)
  );
  or_cell or5 (
    .a (net56),
    .b (net57),
    .out (net59)
  );
  or_cell or6 (
    .a (net58),
    .b (net59),
    .out (net12)
  );
  and_cell and25 (
    .a (net70),
    .b (net21),
    .out (net71)
  );
  mux_cell mux1 (
    .a (net70),
    .b (net1),
    .sel (net72),
    .out (net70)
  );
  and_cell and26 (
    .a (net24),
    .b (net6),
    .out (net72)
  );
  mux_cell mux10 (
    .a (net73),
    .b (net1),
    .sel (net74),
    .out (net73)
  );
  and_cell and27 (
    .a (net27),
    .b (net6),
    .out (net74)
  );
  mux_cell mux11 (
    .a (net75),
    .b (net1),
    .sel (net76),
    .out (net75)
  );
  and_cell and28 (
    .a (net30),
    .b (net6),
    .out (net76)
  );
  mux_cell mux12 (
    .a (net77),
    .b (net1),
    .sel (net78),
    .out (net77)
  );
  and_cell and29 (
    .a (net33),
    .b (net6),
    .out (net78)
  );
  and_cell and30 (
    .a (net73),
    .b (net46),
    .out (net79)
  );
  and_cell and31 (
    .a (net75),
    .b (net47),
    .out (net80)
  );
  and_cell and32 (
    .a (net77),
    .b (net48),
    .out (net81)
  );
  or_cell or7 (
    .a (net71),
    .b (net79),
    .out (net82)
  );
  or_cell or8 (
    .a (net80),
    .b (net81),
    .out (net83)
  );
  or_cell or9 (
    .a (net82),
    .b (net83),
    .out (net9)
  );
  not_cell not1 (
    .in (net6),
    .out (net16)
  );
  and_cell and33 (
    .a (net34),
    .b (net16),
    .out (net10)
  );
  and_cell and34 (
    .a (net36),
    .b (net16),
    .out (net11)
  );
  and_cell and35 (
    .a (net38),
    .b (net16),
    .out (net13)
  );
  and_cell and36 (
    .a (net40),
    .b (net16),
    .out (net14)
  );
endmodule
