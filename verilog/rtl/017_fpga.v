`default_nettype none
module diferential_muxpga (
	io_in,
	io_out
);
	input [7:0] io_in;
	output reg [7:0] io_out;
	wire clk = io_in[0];
	wire reset = io_in[1];
	wire [3:0] nibble_in = io_in[5:2];
	wire [1:0] cmd = io_in[7:6];
	localparam ROWS = 7;
	localparam COLS = 6;
	localparam CELLS = 36;
	localparam CELL_BITS = 2;
	localparam CFG_BITS = 4;
	localparam INPUT_MUX_BITS = 2;
	reg [3:0] cell_cfg [35:0];
	wire [83:0] cell_q;
	reg [3:0] global_cfg;
	wire en_cells = global_cfg[0];
	always @(posedge clk)
		if (reset)
			global_cfg <= 0;
		else if (cmd == 2)
			global_cfg <= nibble_in;
		else
			global_cfg <= global_cfg;
	always @(*)
		case (cmd)
			0: io_out = {cell_cfg[35], 4'b0000};
			1: io_out = {cell_q[0+:2], cell_q[10+:2], 4'b0000};
			2: io_out = {cell_cfg[35], 4'b0000};
			3: io_out = {cell_cfg[35], 4'b0000};
			default: io_out = 8'b00000000;
		endcase
	genvar row;
	genvar col;
	generate
		for (row = 0; row < ROWS; row = row + 1'b1) begin : genrow
			for (col = 0; col < COLS; col = col + 1'b1) begin : gencol
				if (row == 0) begin : genblk1
					assign cell_q[(((6 - row) * 6) + (5 - col)) * 2+:2] = nibble_in;
				end
				else begin : genblk1
					localparam cfg_i = ((row - 1) * COLS) + col;
					wire [3:0] left_cfg = (cfg_i == 0 ? nibble_in : cell_cfg[cfg_i - 1]);
					localparam cminus1 = ((COLS + col) - 1) % COLS;
					localparam rminus1 = row - 1;
					wire [1:0] left_q = cell_q[(((6 - row) * 6) + (5 - cminus1)) * 2+:2];
					wire [1:0] down_q = cell_q[(((6 - rminus1) * 6) + (5 - col)) * 2+:2];
					always @(posedge clk)
						if (reset)
							cell_cfg[cfg_i] <= 0;
						else if (cmd == 0)
							cell_cfg[cfg_i] <= left_cfg;
						else if (cell_cfg[cfg_i][3:2] == 2'b00)
							cell_cfg[cfg_i] <= {cell_cfg[cfg_i][3:2], left_q};
						else
							cell_cfg[cfg_i] <= cell_cfg[cfg_i];
					wire [1:0] mux_bits = cell_cfg[cfg_i][1:0];
					wire [1:0] cfg_bits = cell_cfg[cfg_i][3:2];
					reg [1:0] cell_in1;
					wire [2:1] sv2v_tmp_inmux1_q;
					always @(*) cell_in1 = sv2v_tmp_inmux1_q;
					diferential_mux_in #(
						.B(CELL_BITS),
						.ROWS(ROWS),
						.COLS(COLS),
						.row(row),
						.col(col)
					) inmux1(
						.sel(mux_bits),
						.cell_q(cell_q),
						.q(sv2v_tmp_inmux1_q)
					);
					localparam odd = col % 2;
					diferential_cell #(
						.B(CELL_BITS),
						.odd(odd)
					) c(
						.clk(clk),
						.reset(reset),
						.en(en_cells),
						.cfg(cfg_bits),
						.mux(mux_bits),
						.left_q(left_q),
						.down_q(down_q),
						.in1(cell_in1),
						.q(cell_q[(((6 - row) * 6) + (5 - col)) * 2+:2])
					);
				end
			end
		end
	endgenerate
endmodule
module diferential_mux_in (
	sel,
	cell_q,
	q
);
	parameter signed [31:0] B = 4;
	parameter signed [31:0] ROWS = 0;
	parameter signed [31:0] COLS = 0;
	parameter signed [31:0] row = 0;
	parameter signed [31:0] col = 0;
	input [1:0] sel;
	input [((ROWS * COLS) * B) - 1:0] cell_q;
	output reg [B - 1:0] q;
	localparam rminus1 = ((ROWS + row) - 1) % ROWS;
	localparam rplus1 = ((ROWS + row) + 1) % ROWS;
	localparam cminus1 = ((COLS + col) - 1) % COLS;
	localparam cplus1 = ((COLS + col) + 1) % COLS;
	generate
		if (((col == 0) || (col == 1)) || (col == (COLS - 1))) begin : genblk1
			always @(*)
				case (sel)
					0: q = cell_q[((((ROWS - 1) - rminus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					1: q = cell_q[((((ROWS - 1) - rplus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					2: q = cell_q[((((ROWS - 1) - row) * COLS) + ((COLS - 1) - cplus1)) * B+:B];
					3: q = cell_q[((((ROWS - 1) - (ROWS - 1)) * COLS) + ((COLS - 1) - ((row + col) % COLS))) * B+:B];
					default: q = 0;
				endcase
		end
		else begin : genblk1
			always @(*)
				case (sel)
					0: q = cell_q[((((ROWS - 1) - rminus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					1: q = cell_q[((((ROWS - 1) - rplus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					2: q = cell_q[((((ROWS - 1) - row) * COLS) + ((COLS - 1) - cplus1)) * B+:B];
					3: q = cell_q[((((ROWS - 1) - row) * COLS) + (COLS - 1)) * B+:B];
					default: q = 0;
				endcase
		end
	endgenerate
endmodule
module diferential_cell (
	clk,
	reset,
	en,
	cfg,
	mux,
	left_q,
	down_q,
	in1,
	q
);
	parameter signed [31:0] B = 2;
	parameter signed [31:0] odd = 1;
	input clk;
	input reset;
	input en;
	input [1:0] cfg;
	input [1:0] mux;
	input [B - 1:0] left_q;
	input [B - 1:0] down_q;
	input [B - 1:0] in1;
	output wire [B - 1:0] q;
	reg [B - 1:0] f_out;
	always @(*)
		case (cfg[1:0])
			0: f_out = mux;
			1: f_out = in1;
			2: f_out = (left_q[0] ? {1'b0, mux[left_q[1]]} : {1'b1, left_q[1]});
			3: f_out = {left_q[mux[0]], down_q[mux[1]]};
		endcase
	wire f_out_en = f_out & {en, en};
	sky130_fd_sc_hd__buf_2 bufs[B - 1:0](
		.A(f_out_en),
		.X(q)
	);
endmodule
