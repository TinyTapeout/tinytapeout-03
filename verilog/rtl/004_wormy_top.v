module wormy_top(
  input [7:0] io_in,
  output [7:0] io_out
);


  wire clk;
  wire rst;
  wire [3:0] buttons;
  reg [3:0] A;
  reg [3:0] B;

  assign clk = io_in[0];
  assign rst = io_in[1];
  assign buttons = io_in[5:2];

  assign io_out[3:0] = A;
  assign io_out[7:4] = B;

reg [15:0] arena_on;

reg       button_pushed;
reg [1:0] button_state;

multiplexer multiplexer (
  .clk,
  .rst,

  .arena_on,

  .A,
  .B
);

user_input user_input(
  .clk,

  .buttons,

  .button_pushed,
  .button_state
);

wormy wormy (
  .clk,
  .rst,

  .button_pushed,
  .button_state,

  .arena_on
);

endmodule