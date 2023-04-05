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
	localparam ROWS = 4;
	localparam COLS = 3;
	localparam CELLS = 9;
	localparam CELL_BITS = 4;
	localparam CFG_BITS = 4;
	localparam INPUT_MUX_BITS = 2;
	localparam BOTH_MUX_BITS = 4;
	reg [3:0] cell_cfg [17:0];
	wire [47:0] cell_q;
	genvar i;
	generate
		for (i = 1; i < 18; i = i + 1'b1) begin : genblk1
			always @(posedge clk)
				if (reset)
					cell_cfg[i] <= 0;
				else if (cmd == 0)
					cell_cfg[i] <= cell_cfg[i - 1];
				else
					cell_cfg[i] <= cell_cfg[i];
		end
	endgenerate
	always @(posedge clk)
		if (reset)
			cell_cfg[0] <= 0;
		else if (cmd == 0)
			cell_cfg[0] <= nibble_in;
		else
			cell_cfg[0] <= cell_cfg[0];
	always @(*)
		case (cmd)
			0: io_out = {cell_cfg[17], 4'b0000};
			1: io_out = {cell_q[0+:4], cell_q[8+:4]};
			2: io_out = {cell_cfg[17], 4'b0000};
			3: io_out = {cell_cfg[17], 4'b0000};
			default: io_out = 8'b00000000;
		endcase
	genvar row;
	genvar col;
	generate
		for (row = 0; row < ROWS; row = row + 1'b1) begin : genrow
			for (col = 0; col < COLS; col = col + 1'b1) begin : gencol
				if (row == 0) begin : genblk1
					assign cell_q[(((3 - row) * 3) + (2 - col)) * 4+:4] = nibble_in;
				end
				else begin : genblk1
					localparam cfg_i = 2 * (((row - 1) * COLS) + col);
					localparam bigcell = (col + 1) % 2;
					wire [3:0] mux_bits = cell_cfg[cfg_i];
					wire mux_same = mux_bits[1:0] == mux_bits[3:2];
					wire [3:0] cfg_bits = cell_cfg[cfg_i + 1];
					reg [3:0] cell_in1;
					reg [3:0] cell_in2;
					wire [4:1] sv2v_tmp_inmux1_q;
					always @(*) cell_in1 = sv2v_tmp_inmux1_q;
					diferential_mux_in #(
						.B(CELL_BITS),
						.ROWS(ROWS),
						.COLS(COLS),
						.row(row),
						.col(col)
					) inmux1(
						.sel(mux_bits[1:0]),
						.cell_q(cell_q),
						.q(sv2v_tmp_inmux1_q)
					);
					wire [4:1] sv2v_tmp_inmux2_q;
					always @(*) cell_in2 = sv2v_tmp_inmux2_q;
					diferential_mux_in #(
						.B(CELL_BITS),
						.ROWS(ROWS),
						.COLS(COLS),
						.row(row),
						.col(col)
					) inmux2(
						.sel(mux_bits[3:INPUT_MUX_BITS]),
						.cell_q(cell_q),
						.q(sv2v_tmp_inmux2_q)
					);
					wire en = cmd == 2'b01;
					diferential_cell #(
						.B(CELL_BITS),
						.BIGCELL(bigcell)
					) c(
						.clk(clk),
						.reset(reset),
						.en(en),
						.in1(cell_in1),
						.in2(cell_in2),
						.mux_same(mux_same),
						.cfg(cfg_bits),
						.q(cell_q[(((3 - row) * 3) + (2 - col)) * 4+:4])
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
		if ((col == 0) || (col == 1)) begin : genblk1
			always @(*)
				case (sel)
					0: q = cell_q[((((ROWS - 1) - rminus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					1: q = cell_q[((((ROWS - 1) - rplus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					2: q = cell_q[((((ROWS - 1) - row) * COLS) + ((COLS - 1) - cminus1)) * B+:B];
					3: q = cell_q[((((ROWS - 1) - (ROWS - 1)) * COLS) + ((COLS - 1) - ((row + col) % COLS))) * B+:B];
					default: q = 0;
				endcase
		end
		else begin : genblk1
			always @(*)
				case (sel)
					0: q = cell_q[((((ROWS - 1) - rminus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					1: q = cell_q[((((ROWS - 1) - rplus1) * COLS) + ((COLS - 1) - col)) * B+:B];
					2: q = cell_q[((((ROWS - 1) - row) * COLS) + ((COLS - 1) - cminus1)) * B+:B];
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
	in1,
	in2,
	mux_same,
	cfg,
	q
);
	parameter signed [31:0] B = 4;
	parameter signed [31:0] BIGCELL = 0;
	input clk;
	input reset;
	input en;
	input [B - 1:0] in1;
	input [B - 1:0] in2;
	input mux_same;
	input [3:0] cfg;
	output wire [B - 1:0] q;
	reg [3:0] dff;
	reg [3:0] f_out;
	always @(*)
		if (en) begin
			if (BIGCELL)
				case (cfg[1:0])
					0: f_out = in1 | in2;
					1: f_out = in1 + in2;
					2: f_out = in1;
					3: f_out = in2;
				endcase
			else
				case (cfg[1:0])
					0: f_out = in1 | in2;
					1: f_out = in1 & in2;
					2: f_out = in1 == in2;
					3: f_out = in1;
				endcase
		end
		else
			f_out = dff;
	always @(posedge clk)
		if (reset)
			dff <= 0;
		else
			dff <= f_out;
	wire [B - 1:0] qq;
	assign qq = (cfg[2] ? f_out : dff);
	sky130_fd_sc_hd__buf_2 bufs[3:0](
		.A(qq),
		.X(q)
	);
endmodule
