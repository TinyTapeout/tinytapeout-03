/* Automatically generated from https://wokwi.com/projects/362371515213982721 */

`default_nettype none

module user_module_362371515213982721(
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
  wire net9;
  wire net10;
  wire net11;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14 = 1'b1;
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

  assign io_out[0] = net5;
  assign io_out[1] = net6;
  assign io_out[2] = net7;
  assign io_out[3] = net8;
  assign io_out[4] = net9;
  assign io_out[5] = net10;
  assign io_out[6] = net11;

  not_cell gate31 (
    .in (net15),
    .out (net16)
  );
  not_cell gate32 (
    .in (net1),
    .out (net15)
  );
  not_cell gate33 (
    .in (net17),
    .out (net18)
  );
  not_cell gate34 (
    .in (net2),
    .out (net17)
  );
  not_cell gate35 (
    .in (net19),
    .out (net20)
  );
  not_cell gate36 (
    .in (net3),
    .out (net19)
  );
  not_cell gate37 (
    .in (net21),
    .out (net22)
  );
  not_cell gate38 (
    .in (net4),
    .out (net21)
  );
  or_cell gate51 (
    .a (net16),
    .b (net20),
    .out (net23)
  );
  or_cell gate52 (
    .a (net24),
    .b (net23),
    .out (net5)
  );
  and_cell gate49 (
    .a (net17),
    .b (net21),
    .out (net25)
  );
  and_cell gate50 (
    .a (net18),
    .b (net22),
    .out (net26)
  );
  or_cell gate53 (
    .a (net25),
    .b (net26),
    .out (net24)
  );
  and_cell gate54 (
    .a (net21),
    .b (net19),
    .out (net27)
  );
  and_cell gate55 (
    .a (net22),
    .b (net20),
    .out (net28)
  );
  or_cell gate56 (
    .a (net27),
    .b (net28),
    .out (net29)
  );
  or_cell gate57 (
    .a (net17),
    .b (net29),
    .out (net6)
  );
  or_cell gate58 (
    .a (net19),
    .b (net22),
    .out (net30)
  );
  or_cell gate59 (
    .a (net30),
    .b (net18),
    .out (net7)
  );
  or_cell gate60 (
    .a (net31),
    .b (net25),
    .out (net9)
  );
  or_cell gate61 (
    .a (net32),
    .b (net33),
    .out (net34)
  );
  or_cell gate62 (
    .a (net34),
    .b (net9),
    .out (net35)
  );
  and_cell gate63 (
    .a (net17),
    .b (net20),
    .out (net33)
  );
  and_cell gate64 (
    .a (net18),
    .b (net19),
    .out (net36)
  );
  and_cell gate65 (
    .a (net36),
    .b (net22),
    .out (net32)
  );
  and_cell gate66 (
    .a (net20),
    .b (net21),
    .out (net31)
  );
  or_cell gate67 (
    .a (net35),
    .b (net16),
    .out (net8)
  );
  and_cell gate68 (
    .a (net19),
    .b (net21),
    .out (net37)
  );
  and_cell gate69 (
    .a (net21),
    .b (net18),
    .out (net38)
  );
  and_cell gate70 (
    .a (net18),
    .b (net19),
    .out (net39)
  );
  or_cell gate71 (
    .a (net37),
    .b (net38),
    .out (net40)
  );
  or_cell gate72 (
    .a (net39),
    .b (net16),
    .out (net41)
  );
  or_cell gate73 (
    .a (net40),
    .b (net41),
    .out (net10)
  );
  and_cell gate74 (
    .a (net19),
    .b (net18),
    .out (net42)
  );
  and_cell gate75 (
    .a (net17),
    .b (net20),
    .out (net43)
  );
  or_cell gate76 (
    .a (net43),
    .b (net42),
    .out (net44)
  );
  or_cell gate77 (
    .a (net44),
    .b (net31),
    .out (net45)
  );
  or_cell gate78 (
    .a (net45),
    .b (net16),
    .out (net11)
  );
endmodule
