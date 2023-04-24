
//
//	(C) Copyright Paul Campbell 2023 taniwha@gmail.com
//	Released under an Apache License 2.0
//

//
//	This is a basic PDP8 designed for Tiny Tapeout's tiny interface
//	it doesn't include the extended math unit (multiply/divide).
//	Also we don't have FP switches so it boots to address 0200
//

`default_nettype none

module moonbase_pdp8 #(parameter MAX_COUNT=1000) (input [7:0] io_in, output [7:0] io_out);
   
	//
	//	External interface
	//
	//	12 bits address (2 beats)
	//	12 bits data    (3 beats D D D/4 beats I D D D D)
	//
	//	output bits:
	//	7 6 5 4 3 2 1 0
	//	1 0 A A A A A A		address hi
	//	1 1 A A A A A A		address lo
	//
	//	0 1 1 I I I I I		IO cycle intro
	//
	//	0 0 0 0 D D D D		read data high nibble
	//	0 0 1 0 D D D D		read data med nibble
	//	0 1 0 0 D D D D		read data low nibble
	//
	//	0 0 0 1 D D D D		write data high nibble
	//	0 0 1 1 D D D D		write data med nibble
	//	0 1 0 1 D D D D		write data low nibble
	//
	//	input bits:
	//
	//	0:   clk
	//	1:	 rst
	//	2:	 interrupt
	//	4-7: data in
	//
	//

    wire clk			= io_in[0];
    wire reset			= io_in[1];
    wire [3:0]ext_in	= io_in[7:4];
    
    wire      strobe_out=~r_phase[2];// address strobe		- designed to be wired to a 7 bit latch and a MWS5101AEL3
    reg       write;		// write enable for ram/io
	wire [1:0]bus_index = r_phase[1:0];
	reg [11:0]addr;
	reg   [3:0]data_out;
	always @(*)
	case (bus_index)
	2'b00: data_out = r_data[3:0];
	2'b01: data_out = r_data[7:4];
	2'b10: data_out = r_data[11:8];
	2'b11: data_out = {1'b0,r_ins[2:0]};
	endcase
    wire [5:0]addr_out_mux = (bus_index[1]?addr[11:6]:addr[5:0]);			// mux-d by portion
    assign    io_out   = {strobe_out, bus_index[1], strobe_out ? addr_out_mux : {bus_index[0], write, data_out}};

    reg  [11:0]r_pc, c_pc;	// program counter	// actual flops in the system 
    reg  [11:0]r_a,  c_a;	// accumulator
    reg  [11:0]r_mq,  c_mq;	// accumulator
    reg        r_l,  c_l;	// carry flag
	reg  [11:0]r_ins, c_ins;
	reg	 [11:0]wdata;
	reg	 [11:0]r_data, c_data;
	reg	 [11:0]r_data_addr, c_data_addr;
	reg		   r_io_ready, c_io_ready;
	reg		   r_io_skip, c_io_skip;
	reg		   r_int_pending, c_int_pending;
	reg		   r_int_enable, c_int_enable;
	reg		clear_int_pending;
    //
    //	phase:
	//	    st	name		next
    //		0 - addrH		2
    //		2 - addrL		7/4
	//		7 - IO			4
    //		4 - dataH		5
    //		5 - dataM		6
    //		6 - dataL		0
	//

    reg [2:0]r_phase, c_phase;	// CPU internal state machine
	reg	[2:0]r_super, c_super;

	//	super phase
	//	
	//		0 - instruction fetch
	//		1 - data fetch
	//		2 - indir data fetch
	//		3 - execute/acc write/fetch indir/store pc
	//		4 - indir data write
	//

    // instructions (note real pdp8 bits are numbered backwards)
	//
	//	ins = [15:13], Indirect=ins[12] Zero=ins[11] addr=ins[10:0]
	//	
    //  0:		and i,z, mem		and mem to acc
    //  1:		tad i,z, mem		add mem to acc
    //  2:		isz i,z, mem		inc memory and skip is the result is 0
	//	3:		dca i, z, m			store to mem and clear acc
	//	4:		jms i, z, m			store PC to mem, jump 
	//	5:		jmp i, z, m			jump 
	//	6:		iot
	//			  ins[12:3]==0
	//				ins[2:0]
	//				0 
	//				1 - interrupt enable
	//				2 - interrupt disable
	//				3-7
	//			  ins[12:3]!=0
	//				addr=ins[12:0]
	//				ins[2] move data
	//				ins[1] clears AC
	//				ins[0] skip if ready
	//	7:		opr
	//		      ins[8]==0									group 1 
	//				bit		  opcode function				order
	//				ins[7]  - cla	clear ACC				1
	//				ins[6]  - cll	clear L					1
	//				ins[5]  - cma	~ACC					2
	//				ins[4]  - cml	~L						2
	//				ins[3]  - rar	shl (twice if ins[1])	4
	//				ins[2]  - ral	shr (twice if ins[1])	4
	//				ins[1]  - bsw	byte switch				4
	//				ins[0]  - iac	increment acc			3
	//
	//			  ins[8]==1 & ins[3]==0 && ins[0] == 0		group 2 or
	//				ins[7]  - cla	clear ACC				2
	//				ins[6]  - sma	skip on ACC < 0			1
	//				ins[5]  - sza	skip on ACC == 0		1
	//				ins[4]  - snl	skip on L != 0			1
	//				ins[3]  - 0 -	or function
	//				ins[2]  - osr							3
	//				ins[1]  - hlt							2
    //		
	//			  ins[8]==1 & ins[3]==1 && ins[0] == 0		group 2 and
	//				ins[7]  - cla	clear ACC				2
	//				ins[6]  - spa	skip on ACC >= 0		1
	//				ins[5]  - sna	skip on ACC != 0		1
	//				ins[4]  - szl	skip on L == 0			1
	//				ins[3]  - 1 -	and function
	//				ins[2]  - osr							3
	//				ins[1]  - hlt							2
    //		
	//			  ins[8]==1 & ins[0] == 1					group 3
	//				ins[7]  - cla	clear ACC				1
	//				ins[6]  - sca	ACC |= MQ				2
	//				ins[5]  - mql	ACC = step counter (*)	2
	//				ins[4]  - mqa	MQ = ACC				2
	//				ins[3:1] 0 - nop						3
	//				ins[3:1] 1 - scl (*)					3
	//				ins[3:1] 2 - mul (*)					3
	//				ins[3:1] 3 - div (*)					3
	//				ins[3:1] 4 - nmi						3
	//				ins[3:1] 5 - shl						3
	//				ins[3:1] 6 - asr						3
	//				ins[3:1] 7 - lsr						3
	//

	wire [11:0]c_pc_inc = r_pc+1;
	reg			next_io; // insert an IO cycle
	
    always @(*) begin
		c_data  = r_data;	
		c_ins = r_ins;
		c_io_ready = r_io_ready;
		c_io_skip = r_io_skip;
		c_int_pending = r_int_pending&!clear_int_pending;
    	if (reset) begin	// reset clears the state machine and sets PC to 0
			c_phase = 0;
			c_io_ready = 0;
			c_int_pending = 0;
    	end else 
    	case (r_phase) // synthesis full_case parallel_case
    	0:	begin					// 0: address latch address hi
				c_phase = 2;
				if (write) 
					c_data = wdata;
				c_int_pending = c_int_pending|ext_in[0];
			end
    	2:	begin					// 1: address latch address lo
				c_phase = (next_io?7:4);
			end
    	7:	begin					// 1: address latch address lo
				c_io_ready = ext_in[0];
				c_io_skip = ext_in[1];
				c_phase = 4;
			end
    	4:	begin					// 1: read data in r_ins
				if (!write)
					c_data[11:8] = ext_in;
				c_phase = 5;
			end
    	5:	begin					// 3: read data in r_v
				if (!write) 
					c_data[7:4] = ext_in;
				c_phase = 6;
			end
		6:	begin						// 4 address latch for next operand  
				if (!write) 
					c_data[3:0] = ext_in;
				if (r_super == 0) begin
					if (r_int_pending && r_int_enable) begin
						c_ins = 12'o400;	// jms 0
					end else begin
						c_ins = {r_data[11:4], ext_in};
					end
				end
				c_phase = 0;
			end
		endcase
	end

	always @(*) begin
		c_pc    = r_pc;
		c_super = r_super;
		c_l = r_l;
		c_a = r_a;
		c_data_addr = r_data_addr;
		c_int_enable = r_int_enable;
		c_mq = r_mq;

		wdata = 'bx;
		addr = 'bx;
		next_io = 0;
		write = 0;
		clear_int_pending = 0;
		addr = {r_ins[7]? r_pc[11:7]: 5'b0, r_ins[6:0]};
		if (reset) begin
			c_int_enable = 0;
			c_super = 0;
			c_pc = 12'o200;
			c_l = 0;
		end else
		case (r_super) // synthesis full_case parallel_case
		0:	begin
				addr = r_pc;
				if (r_phase == 6) begin
					c_super = 1;
					if (r_int_pending && r_int_enable) begin
						c_int_enable = 0;
					end else begin
						c_pc = r_pc+1;
					end
				end
			end
		1:  begin							// data fetch
				if (r_phase == 0) begin
					case (r_ins[11:9]) 
					2:	begin		// ISZ
							c_data_addr = addr;
						end
					3:	begin		// DCA
							c_data_addr = addr;
							if (!r_ins[8]) begin
								wdata = r_a;
								write = 1;
								c_a = 0;
								c_super = 4;
							end
						end
					4:	begin		// jms
							if (!r_ins[8]) begin
								c_pc = {r_ins[7]? r_pc[11:7]: 5'b0, r_ins[6:0]}+1;
								addr = {r_ins[7]? c_pc[11:7]: 5'b0, r_ins[6:0]};
								wdata = r_pc;
								write = 1;
								c_super = 4;
							end
							c_data_addr = addr;
						end
					5:	begin		// jmp
							if (!r_ins[8]) begin
								c_pc = {r_ins[7]? r_pc[11:7]: 5'b0, r_ins[6:0]};
								addr = {r_ins[7]? c_pc[11:7]: 5'b0, r_ins[6:0]};
								c_super = 0;
							end
							c_data_addr = addr;
						end
					6:	begin
							wdata = r_a;
							if (r_ins[9:4] == 0) begin
								addr = r_pc;
								case (r_ins[2:0])
								0: begin
									if (r_int_enable) begin
										addr = r_pc+1;
										c_pc = r_pc+1;
									end
									c_int_enable = 0;
								   end
								1: c_int_enable = 1;
								2: c_int_enable = 0;
								3: begin
									if (r_int_pending) begin
										addr = r_pc+1;
										c_pc = r_pc+1;
									end
							       end
								7: begin
										clear_int_pending = 1;
								   end
								default:;
								endcase
								c_super = 0;
							end else begin
								next_io = 1;
								addr = {6'bx, r_ins[9:4]};
								c_super = r_ins[4] ? 5:4;
								write = !r_ins[4];
							end
						end
					7:	begin
							c_super = 0;
							if (!r_ins[8]) begin
								if (r_ins[7])
									c_a = 0;
								if (r_ins[6])
									c_l = 0;
								if (r_ins[5])
									c_a = ~c_a;
								if (r_ins[4])
									c_l = ~c_l;
								if (r_ins[0])
									c_a = c_a+1;
								case (r_ins[3:1])
								0:	;
								1:  c_a = {c_a[5:0], c_a[11:6]};
								2:  {c_l,c_a} = {c_a, c_l};
								3:  {c_l,c_a} = {c_a[10:0], c_l, c_a[11]};
								4:  {c_l,c_a} = {c_a[0], c_l, c_a[11:1]};
								5:  {c_l,c_a} = {c_a[1:0], c_l, c_a[11:2]};
								6:;
								7:;
								endcase
							end else 
							if (!r_ins[0]) begin : rr
								reg cond;

								if (r_ins[3]) begin
									cond = (!r_ins[5] || r_a!=0) && (!r_ins[6] || !r_a[11]) && (!r_ins[4] || !r_l);
								end else begin
									cond = (r_ins[5] && r_a==0) || (r_ins[6] && r_a[11]) || (r_ins[4] && r_l);
								end
								if (cond) begin
									c_pc = r_pc+1;
								end
								if (r_ins[7])
									c_a = 0;
								if (r_ins[1])
									c_super = 7;
							end else begin
								if (r_ins[7])
									c_a = 0;
								if (r_ins[6])
									c_a = c_a|r_mq;
								if (r_ins[4]) begin
									c_mq = r_ins[7]?0:r_a;
									if (!r_ins[6])
										c_a = 0;
								end
							end
							addr = c_pc;
						end
					default: ;
					endcase
				end
				if (r_phase == 6) begin
					case (r_ins[11:9]) 
					0, 1, 2: c_super = r_ins[8] ? 2 : 3;
					3, 4, 5: c_super = 3;
					default:;
					endcase
				end
		    end
		2:	begin	// indir read
				addr = r_data;
				if (r_phase == 0) 
					c_data_addr = r_data;
				if (r_phase == 6) begin
					c_super = 3;
				end
			end
		3:	begin	// execute/ write back
				if (r_phase == 0) begin
					case (r_ins[11:9]) 
					0:	begin						// and
							c_a = r_a&r_data;
							addr = r_pc;
							c_super = 0;
						end						
					1:	begin :pp	// tad
							{c_l, c_a} = {r_l,r_a}+{1'b0,r_data};
							addr = r_pc;
							c_super = 0;
						end	 
					2:  begin						// isz
							wdata = r_data+1;
							write = 1;
							if (r_data==12'hfff)
								c_pc=r_pc+1;
							addr = r_data_addr;
							c_super = 4;
						end 
					3:  begin						// dca
							wdata = r_a;
							c_a = 0;
							c_data_addr = r_data;
							addr = r_data;
							write = 1;
							c_super = 4;
						end	
					4:  begin						// jms indir
							write = 1;
							c_data_addr = r_data;
							addr = r_data;
							wdata = r_pc;
							c_pc = r_data+1;
							c_super = 4;
						end
					5:  begin						// jmp indir
							addr = r_data;
							c_pc = r_data;
							c_super = 0;
						end
					6:	begin						// IO read/write
							if (r_io_ready && r_ins[4]) begin // read
								c_a = r_data;
							end else
							if ((r_io_skip&(r_ins[2:1]==0) || (r_io_ready&(r_ins[2:1]==2))) && r_ins[0])
								c_pc = r_pc+1;
							if (r_io_ready && !r_ins[3] && r_ins[2:0] == 4) begin
								next_io = 1;
								c_super = 4;
							end else begin
								addr = c_pc;
								c_super = 0;
							end
						end
					default:;
					endcase
				end
			end
		4:	begin 
				next_io = r_ins[11:9] == 6;
				write = 1;
				addr = r_data_addr;
				if (r_phase == 6)
					c_super = 0;
			end
		5:	begin  // io_read
				next_io = 1;
				addr = r_data_addr;
				if (r_phase == 6) begin
					c_a = {r_data[11:4], ext_in};
					c_super = 0;
				end
			end
		7:  begin // halt
				;
		    end
	    default:;
    	endcase
    end

    always @(posedge clk) begin
		r_a     <= c_a;
		r_l     <= c_l;
		r_mq    <= c_mq;
		r_ins   <= c_ins;
		r_pc    <= c_pc;
		r_phase <= c_phase;
		r_super <= c_super;
		r_data  <= c_data;
		r_data_addr <= c_data_addr;
		r_io_ready <= c_io_ready;
		r_io_skip <= c_io_skip;
		r_int_pending <= c_int_pending;
		r_int_enable <= c_int_enable;
    end

endmodule

/* For Emacs:   
 * Local Variables:
 * mode:c       
 * indent-tabs-mode:t
 * tab-width:4  
 * c-basic-offset:4
 * End: 
 * For VIM:
 * vim:set softtabstop=4 shiftwidth=4 tabstop=4:
 */
