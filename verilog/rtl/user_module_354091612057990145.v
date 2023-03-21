/* Automatically generated from https://wokwi.com/projects/354091612057990145 */

`default_nettype none

module user_module_354091612057990145(
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
  wire net14 = 1'b0;
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
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;

  assign io_out[0] = net9;
  assign io_out[1] = net10;
  assign io_out[2] = net11;
  assign io_out[3] = net12;
  assign io_out[4] = net13;

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
  xor_cell gate1 (
    .a (net1),
    .b (net5),
    .out (net9)
  );
  and_cell gate8 (
    .a (net1),
    .b (net5),
    .out (net17)
  );
  xor_cell gate16 (
    .a (net17),
    .b (net2),
    .out (net18)
  );
  xor_cell gate17 (
    .a (net18),
    .b (net6),
    .out (net10)
  );
  and_cell gate18 (
    .a (net6),
    .b (net2),
    .out (net19)
  );
  and_cell gate19 (
    .a (net6),
    .b (net17),
    .out (net20)
  );
  and_cell gate20 (
    .a (net2),
    .b (net17),
    .out (net21)
  );
  or_cell gate21 (
    .a (net19),
    .b (net20),
    .out (net22)
  );
  or_cell gate22 (
    .a (net22),
    .b (net21),
    .out (net23)
  );
  xor_cell gate9 (
    .a (net23),
    .b (net3),
    .out (net24)
  );
  xor_cell gate10 (
    .a (net24),
    .b (net7),
    .out (net11)
  );
  and_cell gate11 (
    .a (net7),
    .b (net3),
    .out (net25)
  );
  and_cell gate12 (
    .a (net7),
    .b (net23),
    .out (net26)
  );
  and_cell gate13 (
    .a (net3),
    .b (net23),
    .out (net27)
  );
  or_cell gate14 (
    .a (net25),
    .b (net26),
    .out (net28)
  );
  or_cell gate15 (
    .a (net28),
    .b (net27),
    .out (net29)
  );
  xor_cell gate23 (
    .a (net29),
    .b (net4),
    .out (net30)
  );
  xor_cell gate24 (
    .a (net30),
    .b (net8),
    .out (net12)
  );
  and_cell gate25 (
    .a (net8),
    .b (net4),
    .out (net31)
  );
  and_cell gate26 (
    .a (net8),
    .b (net29),
    .out (net32)
  );
  and_cell gate27 (
    .a (net4),
    .b (net29),
    .out (net33)
  );
  or_cell gate28 (
    .a (net31),
    .b (net32),
    .out (net34)
  );
  or_cell gate29 (
    .a (net34),
    .b (net33),
    .out (net13)
  );
endmodule
