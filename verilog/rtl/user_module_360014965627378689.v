/* Automatically generated from https://wokwi.com/projects/360014965627378689 */

`default_nettype none

module user_module_360014965627378689(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[1];
  wire net3 = io_in[2];
  wire net4 = io_in[3];
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9 = 1'b1;
  wire net10 = 1'b0;
  wire net11;
  wire net12;
  wire net13 = 1'b0;
  wire net14;
  wire net15;
  wire net16 = 1'b0;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21 = 1'b0;
  wire net22;
  wire net23;
  wire net24 = 1'b0;
  wire net25 = 1'b0;
  wire net26 = 1'b0;
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
  wire net54 = 1'b0;
  wire net55;
  wire net56 = 1'b0;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62 = 1'b0;
  wire net63 = 1'b0;
  wire net64 = 1'b0;
  wire net65 = 1'b0;
  wire net66 = 1'b0;

  assign io_out[0] = net5;
  assign io_out[1] = net6;
  assign io_out[2] = net7;
  assign io_out[3] = net8;

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

  );
  dff_cell flipflop2 (
    .d (net2),
    .clk (net1),
    .notq (net11)
  );
  and_cell gate1 (
    .a (net2),
    .b (net11),
    .out (net12)
  );
  dff_cell flipflop3 (
    .d (net3),
    .clk (net1),
    .notq (net14)
  );
  and_cell gate8 (
    .a (net3),
    .b (net14),
    .out (net15)
  );
  dff_cell flipflop4 (
    .d (net4),
    .clk (net1),
    .notq (net17)
  );
  and_cell gate9 (
    .a (net4),
    .b (net17),
    .out (net18)
  );
  dff_cell flipflop10 (
    .d (net19),
    .clk (net1),
    .q (net20)
  );
  dff_cell flipflop11 (
    .d (net20),
    .clk (net1),
    .notq (net19)
  );
  dff_cell flipflop7 (
    .d (net22),
    .clk (net23),
    .q (net5)
  );
  and_cell and1 (
    .a (net5),
    .b (net12),
    .out (net27)
  );
  or_cell or2 (
    .a (net1),
    .b (net12),
    .out (net23)
  );
  dff_cell flipflop5 (
    .d (net28),
    .clk (net29),
    .q (net6)
  );
  or_cell or4 (
    .a (net1),
    .b (net15),
    .out (net29)
  );
  dff_cell flipflop6 (
    .d (net30),
    .clk (net31),
    .q (net7)
  );
  or_cell or6 (
    .a (net1),
    .b (net18),
    .out (net31)
  );
  and_cell and2 (
    .a (net6),
    .b (net15),
    .out (net32)
  );
  and_cell and3 (
    .a (net7),
    .b (net18),
    .out (net33)
  );
  or_cell or7 (
    .a (net27),
    .b (net34),
    .out (net8)
  );
  or_cell or8 (
    .a (net32),
    .b (net33),
    .out (net34)
  );
  dff_cell flipflop8 (
    .d (net35),
    .clk (net1),
    .q (net36),
    .notq (net37)
  );
  dff_cell flipflop9 (
    .d (net36),
    .clk (net1),
    .q (net38),
    .notq (net39)
  );
  dff_cell flipflop12 (
    .d (net38),
    .clk (net1),
    .q (net40),
    .notq (net41)
  );
  dff_cell flipflop13 (
    .d (net40),
    .clk (net1),
    .q (net42),
    .notq (net43)
  );
  dff_cell flipflop14 (

  );
  dff_cell flipflop15 (
    .d (net42),
    .clk (net1),
    .q (net44),
    .notq (net45)
  );
  dff_cell flipflop16 (
    .d (net44),
    .clk (net1),
    .q (net46),
    .notq (net47)
  );
  xor_cell xor1 (
    .a (net44),
    .b (net46),
    .out (net48)
  );
  and_cell and4 (
    .a (net47),
    .b (net45),
    .out (net49)
  );
  and_cell and5 (
    .a (net43),
    .b (net41),
    .out (net50)
  );
  and_cell and6 (
    .a (net39),
    .b (net37),
    .out (net51)
  );
  and_cell and7 (
    .a (net49),
    .b (net50),
    .out (net52)
  );
  and_cell and8 (
    .a (net52),
    .b (net51),
    .out (net53)
  );
  or_cell or9 (
    .a (net48),
    .b (net53),
    .out (net35)
  );
  and_cell and9 (
    .a (net20),
    .b (net46),
    .out (net55)
  );
  and_cell and10 (
    .a (net42),
    .b (net44),
    .out (net57)
  );
  and_cell and11 (
    .a (net55),
    .b (net57),
    .out (net22)
  );
  and_cell and12 (
    .a (net58),
    .b (net44),
    .out (net59)
  );
  not_cell gate13 (
    .in (net42),
    .out (net58)
  );
  and_cell and13 (
    .a (net42),
    .b (net60),
    .out (net61)
  );
  not_cell gate14 (
    .in (net44),
    .out (net60)
  );
  and_cell and14 (
    .a (net55),
    .b (net61),
    .out (net30)
  );
  and_cell and15 (
    .a (net55),
    .b (net59),
    .out (net28)
  );
endmodule
