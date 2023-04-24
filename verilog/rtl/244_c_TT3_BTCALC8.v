module c_TT3_BTCALC8(
     input [7:0] io_in,
     output [7:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[3:2];
wire [1:0] tnet_3 = tnet_2;
wire [1:0] tnet_4 = io_in[5:4];
wire [1:0] tnet_5 = tnet_4;
wire [1:0] tnet_6 = io_in[7:6];
wire [1:0] tnet_7 = tnet_6;
wire [1:0] tnet_8 = tnet_6;
wire [1:0] tnet_9 = tnet_6;

wire [1:0] tnet_10;
wire [1:0] tnet_11;
wire [1:0] tnet_12;
wire [1:0] tnet_13;
wire [1:0] tnet_14;
wire [1:0] tnet_15;
wire [1:0] tnet_16;
wire [1:0] tnet_17;
wire bnet_18;
wire [1:0] tnet_19;
wire [1:0] tnet_20;
wire [1:0] tnet_21;
wire [1:0] tnet_22;

assign io_out[1:0] = tnet_19;
assign io_out[3:2] = tnet_20;
assign io_out[5:4] = tnet_21;
assign io_out[7:6] = tnet_22;

c_BTDeselect4 SavedGate_0 (
.io_in({bnet_18,tnet_17,tnet_16,tnet_15,tnet_14,tnet_13,tnet_12,tnet_11,tnet_10,tnet_9[1]}),
.io_out({tnet_22,tnet_21,tnet_20,tnet_19})
);

c_BTM2 SavedGate_1 (
.io_in({tnet_7,tnet_5,tnet_3,tnet_0}),
.io_out({tnet_13,tnet_12,tnet_11,tnet_10})
);

c_BTA4 SavedGate_2 (
.io_in({tnet_6,tnet_4,tnet_2,tnet_1}),
.io_out({tnet_17,tnet_16,tnet_15,tnet_14})
);

c_BINV SavedGate_3 (
.io_in({tnet_8[1]}),
.io_out({bnet_18})
);

endmodule

module c_BINV (
     input [0:0] io_in,
     output [0:0] io_out
);

wire bnet_0 = io_in[0];

wire bnet_1;

assign io_out[0] = bnet_1;

f_2 LogicGate_0 (
.in_0(bnet_0),
.out_0(bnet_1)
);

endmodule

module c_BTA (
     input [3:0] io_in,
     output [3:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[3:2];
wire [1:0] tnet_3 = tnet_2;

wire [1:0] tnet_4;
wire [1:0] tnet_5;

assign io_out[1:0] = tnet_4;
assign io_out[3:2] = tnet_5;

f_RDC_bet LogicGate_0 (
.in_1(tnet_3),
.in_0(tnet_0),
.out_0(tnet_4)
);

f_7PB_bet LogicGate_1 (
.in_1(tnet_2),
.in_0(tnet_1),
.out_0(tnet_5)
);

endmodule

module c_BTA4 (
     input [7:0] io_in,
     output [7:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = io_in[3:2];
wire [1:0] tnet_2 = io_in[5:4];
wire [1:0] tnet_3 = io_in[7:6];

wire [1:0] tnet_4;
wire [1:0] tnet_5;
wire [1:0] tnet_6;
wire [1:0] tnet_7;
wire [1:0] tnet_8;
wire [1:0] tnet_9;
wire [1:0] tnet_10;
wire [1:0] tnet_11;

assign io_out[1:0] = tnet_8;
assign io_out[3:2] = tnet_9;
assign io_out[5:4] = tnet_10;
assign io_out[7:6] = tnet_11;

c_BTA SavedGate_0 (
.io_in({tnet_2,tnet_0}),
.io_out({tnet_5,tnet_4})
);

c_BTA SavedGate_1 (
.io_in({tnet_3,tnet_1}),
.io_out({tnet_11,tnet_6})
);

c_BTA SavedGate_2 (
.io_in({tnet_6,tnet_4}),
.io_out({tnet_10,tnet_7})
);

c_BTA SavedGate_3 (
.io_in({tnet_7,tnet_5}),
.io_out({tnet_9,tnet_8})
);

endmodule

module c_BTDeselect4 (
     input [17:0] io_in,
     output [7:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = io_in[3:2];
wire [1:0] tnet_2 = io_in[5:4];
wire [1:0] tnet_3 = io_in[7:6];
wire bnet_4 = io_in[8];
wire bnet_5 = bnet_4;
wire bnet_6 = bnet_4;
wire bnet_7 = bnet_4;
wire bnet_8 = io_in[9];
wire bnet_9 = bnet_8;
wire bnet_10 = bnet_8;
wire bnet_11 = bnet_8;
wire [1:0] tnet_12 = io_in[11:10];
wire [1:0] tnet_13 = io_in[13:12];
wire [1:0] tnet_14 = io_in[15:14];
wire [1:0] tnet_15 = io_in[17:16];

wire [1:0] tnet_16;
wire [1:0] tnet_17;
wire [1:0] tnet_18;
wire [1:0] tnet_19;
wire [1:0] tnet_20;
wire [1:0] tnet_21;
wire [1:0] tnet_22;
wire [1:0] tnet_23;
wire [1:0] tnet_24;
wire [1:0] tnet_25;
wire [1:0] tnet_26;
wire [1:0] tnet_27;

assign io_out[1:0] = tnet_24;
assign io_out[3:2] = tnet_25;
assign io_out[5:4] = tnet_26;
assign io_out[7:6] = tnet_27;

f_RD4_bet LogicGate_0 (
.in_1(tnet_3),
.in_0({bnet_7,!bnet_7}),
.out_0(tnet_16)
);

f_RD4_bet LogicGate_1 (
.in_1(tnet_2),
.in_0({bnet_6,!bnet_6}),
.out_0(tnet_17)
);

f_RD4_bet LogicGate_2 (
.in_1(tnet_1),
.in_0({bnet_5,!bnet_5}),
.out_0(tnet_18)
);

f_RD4_bet LogicGate_3 (
.in_1(tnet_0),
.in_0({bnet_4,!bnet_4}),
.out_0(tnet_19)
);

f_RD4_bet LogicGate_4 (
.in_1(tnet_13),
.in_0({bnet_8,!bnet_8}),
.out_0(tnet_20)
);

f_RD4_bet LogicGate_5 (
.in_1(tnet_12),
.in_0({bnet_11,!bnet_11}),
.out_0(tnet_21)
);

f_RD4_bet LogicGate_6 (
.in_1(tnet_15),
.in_0({bnet_10,!bnet_10}),
.out_0(tnet_22)
);

f_RD4_bet LogicGate_7 (
.in_1(tnet_14),
.in_0({bnet_9,!bnet_9}),
.out_0(tnet_23)
);

f_VP0_bet LogicGate_8 (
.in_1(tnet_21),
.in_0(tnet_19),
.out_0(tnet_24)
);

f_VP0_bet LogicGate_9 (
.in_1(tnet_20),
.in_0(tnet_18),
.out_0(tnet_25)
);

f_VP0_bet LogicGate_10 (
.in_1(tnet_23),
.in_0(tnet_17),
.out_0(tnet_26)
);

f_VP0_bet LogicGate_11 (
.in_1(tnet_22),
.in_0(tnet_16),
.out_0(tnet_27)
);

endmodule

module c_BTM1 (
     input [3:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = io_in[3:2];

wire [1:0] tnet_2;

assign io_out[1:0] = tnet_2;

f_PD5_bet LogicGate_0 (
.in_1(tnet_1),
.in_0(tnet_0),
.out_0(tnet_2)
);

endmodule

module c_BTM2 (
     input [7:0] io_in,
     output [7:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = tnet_0;
wire [1:0] tnet_2 = io_in[3:2];
wire [1:0] tnet_3 = tnet_2;
wire [1:0] tnet_4 = io_in[5:4];
wire [1:0] tnet_5 = tnet_4;
wire [1:0] tnet_6 = io_in[7:6];
wire [1:0] tnet_7 = tnet_6;

wire [1:0] tnet_8;
wire [1:0] tnet_9;
wire [1:0] tnet_10;
wire [1:0] tnet_11;
wire [1:0] tnet_12 = tnet_11;
wire [1:0] tnet_13;
wire [1:0] tnet_14;
wire [1:0] tnet_15;
wire [1:0] tnet_16;
wire [1:0] tnet_17 = tnet_8;
wire [1:0] tnet_18 = tnet_10;
wire [1:0] tnet_19 = tnet_13;

assign io_out[1:0] = tnet_16;
assign io_out[3:2] = tnet_17;
assign io_out[5:4] = tnet_18;
assign io_out[7:6] = tnet_19;

f_CDR_bet LogicGate_0 (
.in_1(tnet_8),
.in_0(tnet_11),
.out_0(tnet_16)
);

f_RPC_bet LogicGate_1 (
.in_1(tnet_10),
.in_0(tnet_9),
.out_0(tnet_8)
);

f_3PT_bet LogicGate_2 (
.in_1(tnet_13),
.in_0(tnet_12),
.out_0(tnet_9)
);

c_BTS1 SavedGate_0 (
.io_in({tnet_15,tnet_14}),
.io_out({tnet_18})
);

c_BTM1 SavedGate_1 (
.io_in({tnet_4,tnet_0}),
.io_out({tnet_12})
);

c_BTM1 SavedGate_2 (
.io_in({tnet_7,tnet_3}),
.io_out({tnet_19})
);

c_BTM1 SavedGate_3 (
.io_in({tnet_6,tnet_1}),
.io_out({tnet_14})
);

c_BTM1 SavedGate_4 (
.io_in({tnet_5,tnet_2}),
.io_out({tnet_15})
);

endmodule

module c_BTS1 (
     input [3:0] io_in,
     output [1:0] io_out
);

wire [1:0] tnet_0 = io_in[1:0];
wire [1:0] tnet_1 = io_in[3:2];

wire [1:0] tnet_2;

assign io_out[1:0] = tnet_2;

f_7PB_bet LogicGate_0 (
.in_1(tnet_1),
.in_0(tnet_0),
.out_0(tnet_2)
);

endmodule

module f_2 (
     input wire in_0,
     output wire out_0
     );

     assign out_0 = (in_0 == 0);
endmodule

module f_3PT_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b10 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b10 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b10 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b01 :2'b00;
endmodule

module f_7PB_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b10 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b01 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b10 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b10 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b01 :2'b00;
endmodule

module f_CDR_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b10 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b11 :2'b00;
endmodule

module f_PD5_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b10 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b10 :2'b00;
endmodule

module f_RD4_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b10 :2'b00;
endmodule

module f_RDC_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b10 :2'b00;
endmodule

module f_RPC_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b10 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b10 :2'b00;
endmodule

module f_VP0_bet (
     input wire[1:0] in_0,
     input wire[1:0] in_1,
     output wire[1:0] out_0
     );

     assign out_0 = (in_0 == 2'b01) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b01) & (in_1 == 2'b11) ? 2'b01 :(in_0 == 2'b01) & (in_1 == 2'b10) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b11) & (in_1 == 2'b11) ? 2'b11 :(in_0 == 2'b11) & (in_1 == 2'b10) ? 2'b10 :(in_0 == 2'b10) & (in_1 == 2'b01) ? 2'b01 :(in_0 == 2'b10) & (in_1 == 2'b11) ? 2'b10 :(in_0 == 2'b10) & (in_1 == 2'b10) ? 2'b10 :2'b00;
endmodule

