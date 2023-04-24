module diferential_rvb2 (
	io_in,
	io_out
);
	input [7:0] io_in;
	output wire [7:0] io_out;
	wire [27:0] mbox_io_outbox_payload;
	wire [7:0] mbox_io_tt_out;
	wire mbox_io_out_clk;
	wire mbox_io_out_rst;
	wire mbox_io_inbox_valid;
	wire [27:0] mbox_io_inbox_payload;
	wire mbox_io_outbox_ready;
	wire [3:0] mbox_io_address;
	wire mbox_masterClock_clk_1;
	wire mbox_masterClock_reset_1;
	wire [15:0] _zz_c_counter;
	reg [15:0] c_counter;
	reg [0:0] c_inc_on;
	wire [3:0] c_cmd;
	assign _zz_c_counter = {15'd0, c_inc_on};
	Scriv2Mailbox mbox(
		.io_tt_in(io_in[7:0]),
		.io_tt_out(mbox_io_tt_out[7:0]),
		.io_out_clk(mbox_io_out_clk),
		.io_out_rst(mbox_io_out_rst),
		.io_inbox_valid(mbox_io_inbox_valid),
		.io_inbox_payload(mbox_io_inbox_payload[27:0]),
		.io_outbox_valid(1'b1),
		.io_outbox_ready(mbox_io_outbox_ready),
		.io_outbox_payload(mbox_io_outbox_payload[27:0]),
		.io_address(mbox_io_address[3:0]),
		.masterClock_clk_1(mbox_masterClock_clk_1),
		.masterClock_reset_1(mbox_masterClock_reset_1)
	);
	assign io_out = mbox_io_tt_out;
	assign mbox_io_outbox_payload = {8'h00, c_counter, 4'b0000};
	assign c_cmd = mbox_io_inbox_payload[3:0];
	always @(posedge mbox_masterClock_clk_1)
		if (mbox_masterClock_reset_1) begin
			c_counter <= 16'h0000;
			c_inc_on <= 1'b0;
		end
		else if (mbox_io_inbox_valid) begin
			case (c_cmd)
				4'b1010: c_inc_on <= mbox_io_inbox_payload[4];
				default:
					;
			endcase
			c_counter <= c_counter ^ mbox_io_inbox_payload[19:4];
		end
		else
			c_counter <= c_counter + _zz_c_counter;
endmodule
module Scriv2Mailbox (
	io_tt_in,
	io_tt_out,
	io_out_clk,
	io_out_rst,
	io_inbox_valid,
	io_inbox_payload,
	io_outbox_valid,
	io_outbox_ready,
	io_outbox_payload,
	io_address,
	masterClock_clk_1,
	masterClock_reset_1
);
	input [7:0] io_tt_in;
	output reg [7:0] io_tt_out;
	output wire io_out_clk;
	output wire io_out_rst;
	output reg io_inbox_valid;
	output wire [27:0] io_inbox_payload;
	input io_outbox_valid;
	output reg io_outbox_ready;
	input [27:0] io_outbox_payload;
	output wire [3:0] io_address;
	output wire masterClock_clk_1;
	output wire masterClock_reset_1;
	localparam c_fsm_enumDef_stateSerialIn = 2'd0;
	localparam c_fsm_enumDef_stateChainOutput = 2'd1;
	localparam c_fsm_enumDef_stateOutsideOutput = 2'd2;
	reg ffSerDataIn_r;
	reg ffSerDataIn_s;
	reg ffSerDataPresent_r;
	reg ffSerDataPresent_s;
	reg ffSerDataDone_r;
	reg ffSerDataDone_s;
	wire ffSerDataIn_q;
	wire ffSerDataPresent_q;
	wire ffSerDataDone_q;
	wire masterClock_clk;
	wire masterClock_reset;
	reg [2:0] resetArea_cnt;
	wire resetArea_rst_reached;
	wire resetArea_not_rst_reached;
	wire resetArea_rst_asserted;
	reg [7:0] c_state_cnt;
	wire c_state_cnt_zero;
	wire c_fsm_wantExit;
	reg c_fsm_wantStart;
	wire c_fsm_wantKill;
	reg [27:0] c_fsm_inbox_storage;
	reg [27:0] c_fsm_outbox;
	reg [3:0] c_fsm_outCyclesLeft;
	reg [3:0] c_fsm_blockAddress;
	wire c_fsm_blockIsLast;
	wire c_fsm_blockIsFirst;
	reg [1:0] c_fsm_stateReg;
	reg [1:0] c_fsm_stateNext;
	reg _zz_io_tt_out;
	reg [1:0] _zz_io_tt_out_1;
	wire when_Scriv2Mailbox_l161;
	wire when_Scriv2Mailbox_l162;
	wire [2:0] _zz_io_tt_out_2;
	reg _zz_io_tt_out_3;
	reg [6:0] _zz_io_tt_out_4;
	wire when_Scriv2Mailbox_l161_1;
	wire when_Scriv2Mailbox_l162_1;
	wire [7:0] _zz_c_state_cnt;
	wire [3:0] switch_Scriv2Mailbox_l135;
	wire when_StateMachine_l234;
	Scriv2BB_RSFF ffSerDataIn(
		.r(ffSerDataIn_r),
		.s(ffSerDataIn_s),
		.q(ffSerDataIn_q)
	);
	Scriv2BB_RSFF ffSerDataPresent(
		.r(ffSerDataPresent_r),
		.s(ffSerDataPresent_s),
		.q(ffSerDataPresent_q)
	);
	Scriv2BB_RSFF ffSerDataDone(
		.r(ffSerDataDone_r),
		.s(ffSerDataDone_s),
		.q(ffSerDataDone_q)
	);
	assign resetArea_rst_reached = &resetArea_cnt;
	assign resetArea_not_rst_reached = !resetArea_rst_reached;
	assign resetArea_rst_asserted = (io_tt_in & 8'hfe) == 8'hfe;
	assign io_out_rst = resetArea_rst_reached;
	assign masterClock_reset = resetArea_rst_reached;
	assign io_out_clk = io_tt_in[0];
	assign masterClock_clk = io_tt_in[0];
	always @(*) begin
		io_tt_out[0] = !io_tt_in[0];
		io_tt_out[7:1] = 7'h00;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				if (c_fsm_blockIsFirst)
					io_tt_out = 8'h01;
				else if (c_fsm_blockIsLast)
					io_tt_out = 8'h00;
				else
					io_tt_out = {_zz_io_tt_out_2, 1'b0, _zz_io_tt_out_2, 1'b1};
			c_fsm_enumDef_stateOutsideOutput: io_tt_out = {_zz_io_tt_out_4, _zz_io_tt_out_3};
			default:
				;
		endcase
	end
	always @(*) begin
		ffSerDataIn_r = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: ffSerDataIn_r = io_tt_in[1];
		endcase
		if (when_StateMachine_l234)
			ffSerDataIn_r = 1'b1;
	end
	always @(*) begin
		ffSerDataIn_s = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: ffSerDataIn_s = io_tt_in[2];
		endcase
		if (when_StateMachine_l234)
			ffSerDataIn_s = 1'b0;
	end
	always @(*) begin
		ffSerDataPresent_r = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: ffSerDataPresent_r = io_tt_in[3];
		endcase
		if (when_StateMachine_l234)
			ffSerDataPresent_r = 1'b1;
	end
	always @(*) begin
		ffSerDataPresent_s = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: ffSerDataPresent_s = ffSerDataIn_r || ffSerDataIn_s;
		endcase
		if (when_StateMachine_l234)
			ffSerDataPresent_s = 1'b0;
	end
	always @(*) begin
		ffSerDataDone_r = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: ffSerDataDone_r = io_tt_in[3];
		endcase
		if (when_StateMachine_l234)
			ffSerDataDone_r = 1'b1;
	end
	always @(*) begin
		ffSerDataDone_s = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: ffSerDataDone_s = io_tt_in[4];
		endcase
		if (when_StateMachine_l234)
			ffSerDataDone_s = 1'b0;
	end
	always @(*) begin
		io_outbox_ready = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				if (!c_fsm_blockIsFirst)
					if (!c_fsm_blockIsLast)
						if (when_Scriv2Mailbox_l161)
							if (when_Scriv2Mailbox_l162)
								io_outbox_ready = 1'b1;
			c_fsm_enumDef_stateOutsideOutput:
				if (when_Scriv2Mailbox_l161_1)
					if (when_Scriv2Mailbox_l162_1)
						io_outbox_ready = 1'b1;
			default:
				;
		endcase
	end
	assign c_state_cnt_zero = !(|c_state_cnt);
	assign c_fsm_wantExit = 1'b0;
	always @(*) begin
		c_fsm_wantStart = 1'b0;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				;
			c_fsm_enumDef_stateOutsideOutput:
				;
			default: c_fsm_wantStart = 1'b1;
		endcase
	end
	assign c_fsm_wantKill = 1'b0;
	assign io_inbox_payload = c_fsm_inbox_storage;
	always @(*) begin
		io_inbox_valid = ffSerDataDone_q;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				if (!c_fsm_blockIsFirst)
					if (c_fsm_blockIsLast)
						io_inbox_valid = io_tt_in[1];
					else
						io_inbox_valid = io_tt_in[1];
			c_fsm_enumDef_stateOutsideOutput:
				;
			default:
				;
		endcase
	end
	assign c_fsm_blockIsLast = &c_fsm_blockAddress;
	assign c_fsm_blockIsFirst = !(|c_fsm_blockAddress);
	assign io_address = c_fsm_blockAddress;
	always @(*) begin
		c_fsm_stateNext = c_fsm_stateReg;
		case (c_fsm_stateReg)
			c_fsm_enumDef_stateChainOutput:
				if (c_state_cnt_zero)
					c_fsm_stateNext = c_fsm_enumDef_stateSerialIn;
			c_fsm_enumDef_stateOutsideOutput:
				if (c_state_cnt_zero)
					c_fsm_stateNext = c_fsm_enumDef_stateSerialIn;
			default:
				if (io_inbox_valid)
					case (switch_Scriv2Mailbox_l135)
						4'b0001: c_fsm_stateNext = c_fsm_enumDef_stateSerialIn;
						4'b0011: c_fsm_stateNext = c_fsm_enumDef_stateChainOutput;
						4'b0100: c_fsm_stateNext = c_fsm_enumDef_stateOutsideOutput;
						default:
							;
					endcase
		endcase
		if (c_fsm_wantKill)
			c_fsm_stateNext = c_fsm_enumDef_stateSerialIn;
	end
	assign when_Scriv2Mailbox_l161 = c_fsm_outCyclesLeft == 4'b0000;
	assign when_Scriv2Mailbox_l162 = io_outbox_valid && (8'h0e < c_state_cnt);
	always @(*)
		if (when_Scriv2Mailbox_l161)
			_zz_io_tt_out_1 = 2'b00;
		else
			_zz_io_tt_out_1 = c_fsm_outbox[27:26];
	always @(*)
		if (when_Scriv2Mailbox_l161)
			_zz_io_tt_out = 1'b0;
		else
			_zz_io_tt_out = c_fsm_outCyclesLeft == 4'b0001;
	assign _zz_io_tt_out_2 = {_zz_io_tt_out_1, _zz_io_tt_out};
	assign when_Scriv2Mailbox_l161_1 = c_fsm_outCyclesLeft == 4'b0000;
	assign when_Scriv2Mailbox_l162_1 = io_outbox_valid && (8'h04 < c_state_cnt);
	always @(*)
		if (when_Scriv2Mailbox_l161_1)
			_zz_io_tt_out_4 = 7'h00;
		else
			_zz_io_tt_out_4 = c_fsm_outbox[27:21];
	always @(*)
		if (when_Scriv2Mailbox_l161_1)
			_zz_io_tt_out_3 = 1'b0;
		else
			_zz_io_tt_out_3 = c_fsm_outCyclesLeft == 4'b0001;
	assign _zz_c_state_cnt = io_inbox_payload[11:4];
	assign switch_Scriv2Mailbox_l135 = io_inbox_payload[3:0];
	assign when_StateMachine_l234 = c_fsm_stateReg != c_fsm_enumDef_stateSerialIn;
	assign masterClock_clk_1 = masterClock_clk;
	assign masterClock_reset_1 = masterClock_reset;
	always @(posedge masterClock_clk)
		if (resetArea_rst_asserted) begin
			if (resetArea_not_rst_reached)
				resetArea_cnt <= resetArea_cnt + 3'b001;
		end
		else
			resetArea_cnt <= 3'b000;
	always @(posedge masterClock_clk)
		if (masterClock_reset) begin
			c_state_cnt <= 8'h00;
			c_fsm_inbox_storage <= 28'h0000000;
			c_fsm_outbox <= 28'h0000000;
			c_fsm_outCyclesLeft <= 4'b0000;
			c_fsm_blockAddress <= 4'b0000;
			c_fsm_stateReg <= c_fsm_enumDef_stateSerialIn;
		end
		else begin
			c_state_cnt <= c_state_cnt - 8'h01;
			c_fsm_stateReg <= c_fsm_stateNext;
			case (c_fsm_stateReg)
				c_fsm_enumDef_stateChainOutput:
					if (!c_fsm_blockIsFirst)
						if (c_fsm_blockIsLast)
							c_fsm_inbox_storage <= {c_fsm_inbox_storage[27:2], io_tt_in[3:2]};
						else begin
							c_fsm_inbox_storage <= {c_fsm_inbox_storage[27:2], io_tt_in[3:2]};
							if (when_Scriv2Mailbox_l161) begin
								if (when_Scriv2Mailbox_l162) begin
									c_fsm_outbox <= io_outbox_payload;
									c_fsm_outCyclesLeft <= 4'b1110;
								end
							end
							else begin
								c_fsm_outCyclesLeft <= c_fsm_outCyclesLeft - 4'b0001;
								c_fsm_outbox <= {c_fsm_outbox[25:0], c_fsm_outbox[27:26]};
							end
						end
				c_fsm_enumDef_stateOutsideOutput:
					if (when_Scriv2Mailbox_l161_1) begin
						if (when_Scriv2Mailbox_l162_1) begin
							c_fsm_outbox <= io_outbox_payload;
							c_fsm_outCyclesLeft <= 4'b0100;
						end
					end
					else begin
						c_fsm_outCyclesLeft <= c_fsm_outCyclesLeft - 4'b0001;
						c_fsm_outbox <= {c_fsm_outbox[20:0], c_fsm_outbox[27:21]};
					end
				default: begin
					if (ffSerDataPresent_q)
						c_fsm_inbox_storage <= {c_fsm_inbox_storage[26:0], ffSerDataIn_q};
					if (io_inbox_valid)
						case (switch_Scriv2Mailbox_l135)
							4'b0001: c_state_cnt <= _zz_c_state_cnt;
							4'b0010: c_fsm_blockAddress <= io_inbox_payload[7:4];
							4'b0011: c_state_cnt <= _zz_c_state_cnt;
							4'b0100: c_state_cnt <= _zz_c_state_cnt;
							default:
								;
						endcase
				end
			endcase
		end
endmodule
`default_nettype none
module Scriv2BB_RSFF (
	r,
	s,
	q
);
	input r;
	input s;
	output wire q;
	wire q_out = (r ? 1'b0 : (s ? 1'b1 : q));
	sky130_fd_sc_hd__buf_2 mybuf(
		.A(q_out),
		.X(q)
	);
endmodule
