
module gameshow_buzzer (
  input [7:0] io_in,
  output [7:0] io_out
);

  wire [5:0] buzzer_inputs;
  wire clk;
  wire rst;

  reg [5:0] buzzer_lockout_reg;

  assign clk = io_in[0];
  assign rst = io_in[1];
  assign buzzer_inputs = io_in[7:2];


  always @(posedge clk, posedge rst) begin
    if (rst) begin
      buzzer_lockout_reg <= 6'b000000;
    end else if (buzzer_lockout_reg== 6'b000000) begin
      buzzer_lockout_reg <= buzzer_inputs;
    end
  end

  assign io_out[5:0] = buzzer_lockout_reg;

endmodule