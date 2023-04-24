/* Automatically generated from https://wokwi.com/projects/362675777226104833 */

`default_nettype none

module user_module_362675777226104833(
  input [7:0] io_in,
  output [7:0] io_out
);
  wire net1 = io_in[0];
  wire net2 = io_in[6];
  wire net3 = io_in[7];
  wire net4;
  wire net5;
  wire net6 = 1'b1;
  wire net7 = 1'b1;
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14 = 1'b0;
  wire net15 = 1'b0;
  wire net16 = 1'b0;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21 = 1'b0;
  wire net22 = 1'b0;

  assign io_out[0] = net4;
  assign io_out[1] = net5;

  or_cell or2 (
    .a (net2),
    .b (net8),
    .out (net9)
  );
  not_cell not2 (
    .in (net2),
    .out (net10)
  );
  and_cell and5 (
    .a (net10),
    .b (net4),
    .out (net11)
  );
  dff_cell flop1 (
    .d (net9),
    .clk (net1),
    .q (net4)
  );
  or_cell or4 (
    .a (net12),
    .b (net3),
    .out (net13)
  );
  dff_cell flop2 (
    .d (net13),
    .clk (net1),
    .q (net5)
  );
  and_cell and1 (
    .a (net17),
    .b (net4),
    .out (net18)
  );
  not_cell not1 (
    .in (net3),
    .out (net17)
  );
  or_cell or1 (
    .a (net18),
    .b (net19),
    .out (net8)
  );
  and_cell and3 (
    .a (net10),
    .b (net5),
    .out (net20)
  );
  or_cell or3 (
    .a (net11),
    .b (net20),
    .out (net12)
  );
  and_cell and2 (
    .a (net17),
    .b (net5),
    .out (net19)
  );
endmodule
