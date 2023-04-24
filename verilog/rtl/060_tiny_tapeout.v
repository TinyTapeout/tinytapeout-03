`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2023 12:42:47 AM
// Design Name: 
// Module Name: tiny_tapeout
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//module kevinwguan_tiny_tapeout(input i0, i1, rst, output lpwm, rpwm);
module kevinwguan_tiny_tapeout(input [7:0] io_in, output [7:0] io_out);
    wire clk_int, clk_out;
    wire left, right;
    wire [2:0] lcontrol, rcontrol;
    wire [2:0] trigger;
    
    osc osc_inst(io_in[7], clk_int);
    mux_cell mux_clock(.a(clk_int), .b(io_in[2]), .sel(io_in[3]), .out(clk_out));
    counter counter_inst(io_in[7], clk_out, trigger);
    
    buffer_cell buffer_clk(.in(clk_out), .out(io_out[7]));
    buffer_cell buffer_counter2(.in(trigger[2]), .out(io_out[6]));
    buffer_cell buffer_counter1(.in(trigger[1]), .out(io_out[5]));
    buffer_cell buffer_counter0(.in(trigger[0]), .out(io_out[4]));
    buffer_cell buffer_rfsm(.in(right), .out(io_out[3]));
    buffer_cell buffer_lfsm(.in(left), .out(io_out[2]));
    
    fsm fsm_inst(io_in[0], io_in[1], clk_out, io_in[7], right, left);
    //fsm fsm_dut(io_in[0], io_in[1], clk_out, io_out[3], io_out[2]);
    //store store_right(io_in[7], clk_out, right, io_in[2], trigger, rcontrol);
    //store store_left(io_in[7], clk_out, left, io_in[2], trigger, lcontrol);
    dc_control dc_right(io_in[7], clk_out, right, io_in[6:4], trigger, rcontrol);
    dc_control dc_left(io_in[7], clk_out, left, io_in[6:4], trigger, lcontrol);
    pwm_simple pwm_simple_rinst(io_out[1], io_in[7], clk_out, trigger, rcontrol);
    pwm_simple pwm_simple_linst(io_out[0], io_in[7], clk_out, trigger, lcontrol);
endmodule
