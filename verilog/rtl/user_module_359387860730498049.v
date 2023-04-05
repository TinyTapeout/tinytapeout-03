/* Automatically generated from https://wokwi.com/projects/359387860730498049 */

`default_nettype none

module user_module_359387860730498049(
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
  wire net10 = 1'b0;
  wire net11 = 1'b1;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19;

  assign io_out[0] = net9;

  not_cell not1 (
    .in (net2),
    .out (net12)
  );
  not_cell not2 (
    .in (net7),
    .out (net13)
  );
  and_cell and1 (
    .a (net1),
    .b (net12),
    .out (net14)
  );
  and_cell and2 (
    .a (net13),
    .b (net8),
    .out (net15)
  );
  and_cell and3 (
    .a (net14),
    .b (net3),
    .out (net16)
  );
  and_cell and4 (
    .a (net16),
    .b (net4),
    .out (net17)
  );
  and_cell and5 (
    .a (net17),
    .b (net5),
    .out (net18)
  );
  and_cell and6 (
    .a (net18),
    .b (net6),
    .out (net19)
  );
  and_cell and7 (
    .a (net19),
    .b (net15),
    .out (net9)
  );
endmodule
