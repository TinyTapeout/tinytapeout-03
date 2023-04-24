`timescale 1ns / 1ps

module top_tt03(input [7:0] io_in, output [7:0] io_out);

wire reset, rx, rx_ready, tx, tx_start, tx_busy;
wire sum_ready, sum_en;
wire osc_sel, en_inv_osc, en_nand_osc, en;
wire clk_external, clk_sel, clk_internal, clk;
wire out_osc_inv, out_osc_nand, out_osc;
wire [23:0] promedio;
wire [15:0] count;
reg [15:0] count_reg;
wire [7:0] rx_data;
reg [7:0] tx_data;
wire [1:0] send_sel;

//INPUTS
assign clk_internal = io_in[0];
assign clk_external = io_in[1];
assign clk_sel = io_in[2];
assign en_inv_osc = io_in[3];
assign en_nand_osc = io_in[4];
assign reset = io_in[5];
assign rx = io_in[6];
assign osc_sel = io_in[7];

//OUTPUTS
assign io_out[0] = tx;
assign io_out[1] = count_reg[8];
assign io_out[2] = count_reg[9];
assign io_out[3] = count_reg[10];
assign io_out[4] = count_reg[11];
assign io_out[5] = count_reg[12];
assign io_out[6] = count_reg[13];
assign io_out[7] = count_reg[14];

//Clocks management
mux m(clk_external, clk_internal, clk_sel, clk);

mux m3(en_inv_osc, en_nand_osc, osc_sel, en);

//tx_data management
always @* begin
	case(send_sel)
		0: tx_data = promedio[7:0];
		1: tx_data = promedio[15:8];
		2: tx_data = promedio[23:16];
		default: tx_data = promedio[7:0];
	endcase
end

//Oscillators
USM_ringoscillator_inv2 osc1(en_inv_osc, out_osc_inv);
USM_ringoscillator_nand4 osc2(en_nand_osc, out_osc_nand);
mux m2(out_osc_inv, out_osc_nand, osc_sel, out_osc);

//Counters
contador #(16) cont(out_osc, en, reset, clk, count);

always @(posedge clk) begin
	if(reset) count_reg <= 0;
	else count_reg <= count; 
end

promedio #(24) prom(clk, reset, en, sum_en, count, promedio, sum_ready);

//Controller
FSM_controller controller(clk, reset, sum_ready, test, rx_ready, rx_data, sum_en, tx_start, send_sel);

//Comunication
uart_basic #(10000,1000) uart(clk, reset, rx, rx_data, rx_ready, tx, tx_start, tx_data, test);

endmodule
