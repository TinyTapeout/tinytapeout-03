`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: New York University
// Engineer: Hammond Pearce
// 
// Last Edited Date: 04/19/2023
//////////////////////////////////////////////////////////////////////////////////

`default_nettype none
module lucaz97_tt_top(
    input wire [7:0] io_in,
    output wire [7:0] io_out
    );
    
wire clk = io_in[0];
wire rst = io_in[1];

wire scan_enable_in = !io_in[2]; //SPI uses active low
wire proc_enable_in = !io_in[3]; //SPI uses active low
wire scan_in = io_in[4];
wire btn_in = io_in[5];
wire scan_out, halt_out;

wire miso = scan_enable_in ? scan_out :
            proc_enable_in ? halt_out :
            0;

wire [6:0] led_out;

assign io_out[7] = miso;
assign io_out[6:0] = led_out;

accumulator_microcontroller #(
    .MEM_SIZE(14)
) 
qtcore
(
    .clk(clk),
    .rst(rst),
    .scan_enable(scan_enable_in),
    .scan_in(scan_in),
    .scan_out(scan_out),
    .proc_en(proc_enable_in),
    .halt(halt_out),
    .btn_in(btn_in),
    .led_out(led_out)
);
endmodule
