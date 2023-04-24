`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PONTIFICIA UNIVERSIDAD JAVERIANA
// Engineer: JUAN DIEGO SANCHEZ ROJAS
// 
// Create Date:    22:52:12 02/28/2023 
// Design Name: 
// Module Name:    FSM_LAT
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module FSM_LAT(
					 input [7:0]io_in,
					 output [7:0]io_out			 
					 );
					 
wire clk,sel_clk,sel_out,clk_ring,ok;
wire [4:0]state1,state2,state3,state4,state5;
wire [7:0]out;		


wire clk_in;
wire reset;
wire [4:0]in;
wire REG_STATE;
			 	 
assign out[5] =clk;

				SIPO Sipo(
							.clock(io_in[7]),
							.rst(io_in[6]),
							.in(io_in[5]),
							.en(1),
							.clk_sel(sel_clk),
							.out_sel(sel_out),
							.out1(state1),
							.out2(state2),
							.out3(state3),
							.out4(state4),
							.out5(state5),
							.finished(ok)
							);	
							
							
				clk_sel clock_selector(
												.clk1(io_in[7]),
												.clk2(clk_ring),
												.select(sel_clk),
												.out(clk));
					
					
				 FSM State_machine(
					 .clk(clk),
					 .reset(io_in[6]),
					 .in(io_in[4:0]),
					 .ok(ok),
					 .jump1(state1),
					 .jump2(state2),
					 .jump3(state3),
					 .jump4(state4),
					 .jump5(state5),
					 .out(out[4:0])
					 );
					 
					 
		 
			chaout changa_out(
									.in(out),
									.sel(sel_out),
									.out_in(io_out[7:5]),
									.out(io_out[4:0])
									);
									
	desition desition(
			.clk(clk),
			.rst(io_in[6]),
			.timer(out[4]),
			.register(out[3]),
			.comp(out[6]));
				
				
		   PISO_div PISO(
			.clk(clk),
			.rst(io_in[6]),
			.DATA({sel_out,sel_clk,state1,state2,state3,state4,state5,5'b01010}),
			.shift_in(0),
			.out(out[7])
			);
	ring_osc RING(.nrst(1),
		      .osc(clk_ring));
					 
endmodule


