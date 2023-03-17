/* Automatically generated from https://wokwi.com/projects/359360834113498113 */

`default_nettype none

module user_module_359360834113498113(
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
  wire net11 = 1'b0;
  wire net12 = 1'b1;
  wire net13 = 1'b1;
  wire net14;
  wire net15;
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

  assign io_out[0] = net6;
  assign io_out[1] = net7;
  assign io_out[2] = net8;
  assign io_out[3] = net9;
  assign io_out[4] = net10;

  xor_cell xor1 (
    .a (net1),
    .b (net5),
    .out (net14)
  );
  xor_cell xor2 (
    .a (net2),
    .b (net3),
    .out (net15)
  );
  xor_cell xor3 (
    .a (net4),
    .b (net5),
    .out (net16)
  );
  not_cell not1 (
    .in (net14),
    .out (net17)
  );
  xor_cell xor4 (
    .a (net14),
    .b (net18),
    .out (net19)
  );
  and_cell and1 (
    .a (net17),
    .b (net2),
    .out (net20)
  );
  xor_cell xor5 (
    .a (net19),
    .b (net10),
    .out (net6)
  );
  xor_cell xor6 (
    .a (net19),
    .b (net21),
    .out (net7)
  );
  xor_cell xor7 (
    .a (net2),
    .b (net22),
    .out (net21)
  );
  xor_cell xor8 (
    .a (net16),
    .b (net20),
    .out (net10)
  );
  and_cell and2 (
    .a (net23),
    .b (net16),
    .out (net24)
  );
  not_cell not2 (
    .in (net4),
    .out (net23)
  );
  and_cell and3 (
    .a (net25),
    .b (net15),
    .out (net18)
  );
  not_cell not3 (
    .in (net2),
    .out (net25)
  );
  not_cell not4 (
    .in (net15),
    .out (net26)
  );
  not_cell not5 (
    .in (net16),
    .out (net27)
  );
  and_cell and4 (
    .a (net26),
    .b (net4),
    .out (net22)
  );
  and_cell and5 (
    .a (net27),
    .b (net14),
    .out (net28)
  );
  xor_cell xor9 (
    .a (net4),
    .b (net28),
    .out (net29)
  );
  xor_cell xor10 (
    .a (net30),
    .b (net29),
    .out (net9)
  );
  not_cell not6 (
    .in (net30),
    .out (net8)
  );
  xor_cell xor11 (
    .a (net15),
    .b (net24),
    .out (net30)
  );
endmodule
