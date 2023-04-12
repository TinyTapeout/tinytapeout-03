/*
 CRC Decelerator Top FSM

 RESET
  - No data. Resets CRC accumulator with CONFIG_INIT

 SETUP (variable cycle length):
   Cmd bitstring
     [config_lo - 4 bits] [config_hi - 4 bits] [poly X N-4B] [init X N-4B] [xor X N-4B]

   config_lo (4 bits) (MSB first)
     BIT_3: [width[3:0]] = data_in

   config_hi (4 bits) (MSB first)
     BIT_3: [width[5]] [width[4]] [reflect_out] [reflect_in]

   Output signal when setup complete

 MESSAGE
   [message_lo - 4 bits] [message_hi - 4 bits]
   Output current byte (with wrap around)

 FINAL
  - No data. Expect streamed CRC output on io_out
    Output current CRC byte
*/

`define BITWIDTH 32
`define BITPOS_MAX (`BITWIDTH - 1)
`define BITBITS (5) // 6 for 64-bits, 5 for 32-bits

`define BYTEWIDTH (`BITWIDTH/8)
`define NIBBLECOUNT (`BITWIDTH/4)

`define NIBBLEBITS (`BITBITS-2) // 4 for 64-bits, 3 for 32-bits
`define BYTEBITS (`NIBBLEBITS-1) // 3 for 64-bits, 2 for 32-bits

module granth_crc_decelerator (
  input [7:0] io_in,
  output reg [7:0] io_out
);
  wire clk, rst;
  wire [3:0] data_in;
  wire [1:0] cmd;

  // Friendly input names
  assign clk = io_in[0];
  assign rst = io_in[1];
  assign cmd = io_in[3:2];
  assign data_in = io_in[7:4];

  // Latched command and input data
  reg [1:0] current_cmd;
  reg [3:0] cur_data_in;

  // Top-level commands
  localparam
    CMD_RESET = 2'd0,
    CMD_SETUP = 2'd1,
    CMD_MESSAGE = 2'd2,
    CMD_FINAL = 2'd3;

  // CMD_SETUP FSM
  localparam
    SETUP_START = 3'd0,
    SETUP_CONFIG_LO = 3'd1,
    SETUP_CONFIG_HI = 3'd2,
    SETUP_POLY_N = 3'd3,
    SETUP_INIT_N = 3'd4,
    SETUP_XOR_N = 3'd5,
    SETUP_DONE = 3'd6;

  reg [2:0] setup_fsm;
  // Max nibbles is BITWIDTH/4
  reg [`NIBBLEBITS-1:0] setup_nibble_count;

  // CRC primary parameters
  reg [`BITBITS-1:0] bitwidth;
  wire [3-1:0] bitwidth_nibbles;
  reg crc_reflect_in, crc_reflect_out;
  reg [`BITWIDTH-1:0] crc_poly;
  reg [`BITWIDTH-1:0] crc_init;
  reg [`BITWIDTH-1:0] crc_xor;
  wire [`BITWIDTH-1:0] crc_result;

  // bitwidth >> 2
  assign bitwidth_nibbles = bitwidth[`BITBITS-1:2];

  wire setup_starting = current_cmd == CMD_SETUP && setup_fsm == SETUP_START;
  wire restart_crc = current_cmd == CMD_RESET || setup_starting;
  wire in_setup = setup_fsm != SETUP_START && !setup_can_exit;
  wire setup_can_exit = setup_fsm == SETUP_DONE && cmd != CMD_SETUP;

  // TODO: handle non-nibble aligned bitwidth
  wire bitwidth_reached = bitwidth_nibbles == setup_nibble_count;

  /////////////////////////////////
  // Common Registers and Logic
  /////////////////////////////////

  // Latch a copy of data from user input
  always @(posedge clk) begin
    if (rst)
      cur_data_in <= 4'b0;
    else
      cur_data_in <= data_in;
  end

  // for debugging FSM during live testing
  wire [7:0] setup_output = {4'b0, setup_fsm, in_setup | setup_starting};
  wire [7:0] message_output = {3'b0, crc_bit_index, crc_state};

  reg [7:0] final_output;

  // Pin driving
  always @(*) begin
    case (current_cmd)
      CMD_SETUP: io_out = setup_output;
      CMD_MESSAGE: io_out = message_output;
      CMD_FINAL: io_out = final_output;
      default: io_out = 0;
    endcase
  end

  always @(posedge clk) begin
    if (rst)
      current_cmd <= CMD_RESET;
    else begin
      case (current_cmd)
      // hold CMD_SETUP while processing config stream
      CMD_SETUP: if (in_setup) current_cmd <= current_cmd; else current_cmd <= cmd;
      default: current_cmd <= cmd;
      endcase
    end
  end

  /////////////////////////////////
  // CMD_SETUP Registers and Logic
  /////////////////////////////////

  always @(posedge clk) begin
    if (rst) begin
      // A conservative default (CRC-32)
      bitwidth <= 5'd31;
      crc_reflect_in <= 0;
      crc_reflect_out <= 0;
    end else begin
      if (setup_fsm == SETUP_CONFIG_LO) begin
        bitwidth <= {bitwidth[`BITBITS-1:4], cur_data_in};
        crc_reflect_in <= crc_reflect_in;
        crc_reflect_out <= crc_reflect_out;
      end else if (setup_fsm == SETUP_CONFIG_HI) begin
        bitwidth <= {cur_data_in[2:2], bitwidth[3:0]};
        crc_reflect_in <= cur_data_in[0];
        crc_reflect_out <= cur_data_in[1];
      end else begin
        bitwidth <= bitwidth;
        crc_reflect_in <= crc_reflect_in;
        crc_reflect_out <= crc_reflect_out;
      end
    end
  end

  always @(posedge clk) begin
    if (rst)
      setup_nibble_count <= 0;
    else begin
      if (setup_fsm == SETUP_POLY_N || setup_fsm == SETUP_INIT_N || setup_fsm == SETUP_XOR_N)
        if (bitwidth_reached)
          setup_nibble_count <= 0;
        else
          setup_nibble_count <= setup_nibble_count + 1;
      else
        setup_nibble_count <= 0;
    end
  end

  always @(posedge clk) begin
    if (rst)
      setup_fsm <= SETUP_START;
    else begin
      if (in_setup || setup_starting) begin
        case (setup_fsm)
          SETUP_START: setup_fsm <= SETUP_CONFIG_LO;
          SETUP_CONFIG_LO: setup_fsm <= SETUP_CONFIG_HI;
          SETUP_CONFIG_HI: setup_fsm <= SETUP_POLY_N;
          SETUP_POLY_N: if (bitwidth_reached) setup_fsm <= SETUP_INIT_N; else setup_fsm <= setup_fsm;
          SETUP_INIT_N: if (bitwidth_reached) setup_fsm <= SETUP_XOR_N; else setup_fsm <= setup_fsm;
          SETUP_XOR_N: if (bitwidth_reached) setup_fsm <= SETUP_DONE; else setup_fsm <= setup_fsm;
          // HOLD setup until command is released to prevent retriggering on combinational `cmd`
          SETUP_DONE: if (setup_can_exit) setup_fsm <= SETUP_START; else setup_fsm <= setup_fsm;
          default: setup_fsm <= SETUP_START;
        endcase
      end else begin
        setup_fsm <= SETUP_START;
      end
    end
  end

  always @(posedge clk) begin
    if (rst | setup_starting) begin
      crc_poly <= `BITWIDTH'b0;
      crc_init <= `BITWIDTH'b0;
      crc_xor <= `BITWIDTH'b0;
    end else begin
      if (setup_fsm == SETUP_POLY_N) begin
        crc_poly[{setup_nibble_count, 2'b0} +: 4] <= cur_data_in;
        crc_init <= crc_init;
        crc_xor <= crc_xor;
      end else if (setup_fsm == SETUP_INIT_N) begin
        crc_poly <= crc_poly;
        crc_init[{setup_nibble_count, 2'b0} +: 4] <= cur_data_in;
        crc_xor <= crc_xor;
      end else if (setup_fsm == SETUP_XOR_N) begin
        crc_poly <= crc_poly;
        crc_init <= crc_init;
        crc_xor[{setup_nibble_count, 2'b0} +: 4] <= cur_data_in; 
      end else begin
        crc_poly <= crc_poly;
        crc_init <= crc_init;
        crc_xor <= crc_xor;
      end
    end
  end

  /////////////////////////////////
  // CRC Datapath
  /////////////////////////////////

  // Stream in two nibbles to make a byte. Feed into crc_main.
  // Wait 8 cycles to feed in next set

  localparam CRC_INIT = 2'd0,
    CRC_DATA_LO = 2'd1,
    CRC_DATA_HI = 2'd2,
    CRC_SHIFTING = 2'd3;

  reg [1:0] crc_state;
  reg [2:0] crc_bit_index;
  reg [7:0] crc_data_buf;
  wire [2:0] crc_final_byte_index = cur_data_in;

  wire cmd_message = current_cmd == CMD_MESSAGE;
  wire cmd_final = current_cmd == CMD_FINAL;
  wire crc_shifting = crc_state == CRC_SHIFTING;

  always @(*) begin
    case (crc_final_byte_index)
      0: final_output = crc_result[8-1:0];
      1: final_output = crc_result[16-1:8];
      2: final_output = crc_result[24-1:16];
      3: final_output = crc_result[32-1:24];
      `ifdef CRC64
      4: final_output = crc_result[40-1:32];
      5: final_output = crc_result[48-1:40];
      6: final_output = crc_result[56-1:48];
      7: final_output = crc_result[64-1:56];
      `endif
      default: final_output = 0;
    endcase
  end

  always @(posedge clk) begin
    // Unless the user is holding CMD_MESSAGE, do nothing
    if (rst | restart_crc | ~cmd_message)
      crc_state <= CRC_INIT;
    else begin
      case (crc_state)
        CRC_INIT: crc_state <= cmd_message ? CRC_DATA_LO : crc_state;
        CRC_DATA_LO: crc_state <= cmd_message ? CRC_DATA_HI : crc_state;
        CRC_DATA_HI: crc_state <= cmd_message ? CRC_SHIFTING : crc_state;
        CRC_SHIFTING: crc_state <= (crc_bit_index == 7) ? CRC_DATA_LO : crc_state;
        default: crc_state <= crc_state;
      endcase
    end
  end

  always @(posedge clk) begin
    if (rst | restart_crc)
      crc_data_buf <= 0;
    else begin
      if (crc_state == CRC_DATA_LO)
        crc_data_buf <= {crc_data_buf[7:4], cur_data_in};
      else if (crc_state == CRC_DATA_HI)
        crc_data_buf <= {cur_data_in, crc_data_buf[3:0]};
      else
        crc_data_buf <= crc_data_buf;
    end
  end

  always @(posedge clk) begin
    if (rst | restart_crc | ~cmd_message)
      crc_bit_index <= 0;
    else begin
      if (crc_shifting)
        // overflow intended
        crc_bit_index <= crc_bit_index + 1;
      else
        crc_bit_index <= 0;
    end
  end

  crcN #(`BITWIDTH, `BITBITS) crc_main(
    .clk (clk),
    .rst (rst),
    .initialize (restart_crc),
    .shift (crc_shifting),
    .reflect_in (crc_reflect_in),
    .reflect_out (crc_reflect_out),
    .bitwidth (bitwidth),
    .bit_index (crc_bit_index),
    .data (crc_data_buf),
    .poly (crc_poly),
    .init_value (crc_init),
    .xor_out (crc_xor),
    .crc (crc_result)
  );

endmodule
