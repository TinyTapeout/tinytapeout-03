`default_nettype none

module jmw95_top (
    input  [7:0] io_in,
    output [7:0] io_out
);

wire unused = &{ io_in[7:5] };

localparam CLK_FREQ = 12500;

// Inputs
wire clk  = io_in[0];
wire rst  = io_in[1];
wire data = io_in[2];
wire inverted = io_in[3];
wire shift_date = io_in[4];

// bit_sampler <-> decoder
wire sample_valid;
wire sample_data;

// decoder <-> time_date_decoder
wire       bits_valid;
wire       bits_is_second_00;
wire [1:0] bits_data;

// second_counter <-> digits
wire second_inc;

// time_date_decoder <-> digits
wire [3:0]  year_h;
wire [3:0]  year_l;
wire [0:0]  month_h;
wire [3:0]  month_l;
wire [1:0]  day_h;
wire [3:0]  day_l;
wire [1:0]  hour_h;
wire [3:0]  hour_l;
wire [2:0]  minute_h;
wire [3:0]  minute_l;
wire        time_load;

// digits <-> seven_seg_digits
wire [3:0] year_h_digit;
wire [3:0] year_l_digit;
wire [0:0] month_h_digit;
wire [3:0] month_l_digit;
wire [1:0] day_h_digit;
wire [3:0] day_l_digit;
wire [1:0] hour_h_digit;
wire [3:0] hour_l_digit;
wire [2:0] minute_h_digit;
wire [3:0] minute_l_digit;
wire [2:0] second_h_digit;
wire [3:0] second_l_digit;

// pulse_delay <-> shift_reg
wire digits_updated;

// seven_seg_digits <-> time_date_shift
wire [7 * 12 - 1:0] seven_seg;

// time_date_shift <-> shift_reg
wire [7 * 12 - 1:0] seven_seg_shifted;

// Outputs
wire shift_reg_sclk;
wire shift_reg_data;
wire shift_reg_latch;
assign io_out = {5'b0, shift_reg_latch, shift_reg_data, shift_reg_sclk};

bit_sampler #(
    .CLK_FREQ(CLK_FREQ)
) bit_sampler (
    .clk_i   (clk),
    .rst_i   (rst),
    .data_i  (data ^ inverted),
    .bit_o   (sample_data),
    .valid_o (sample_valid)
);

decoder decoder (
    .clk_i               (clk),
    .rst_i               (rst),
    .sample_valid_i      (sample_valid),
    .sample_data_i       (sample_data),
    .bits_valid_o        (bits_valid),
    .bits_is_second_00_o (bits_is_second_00),
    .bits_data_o         (bits_data)
);

// verilator lint_off PINCONNECTEMPTY

time_date_decoder time_date_decoder (
    .clk_i               (clk),
    .rst_i               (rst),
    .bits_valid_i        (bits_valid),
    .bits_is_second_00_i (bits_is_second_00),
    .bits_data_i         (bits_data),
    .year_h_o            (year_h),
    .year_l_o            (year_l),
    .month_h_o           (month_h),
    .month_l_o           (month_l),
    .day_h_o             (day_h),
    .day_l_o             (day_l),
    .dow_o               (),
    .hour_h_o            (hour_h),
    .hour_l_o            (hour_l),
    .minute_h_o          (minute_h),
    .minute_l_o          (minute_l),
    .valid_o             (time_load)
);

// verilator lint_on PINCONNECTEMPTY

second_counter #(
    .CLK_FREQ(CLK_FREQ)
) second_counter (
    .clk_i (clk),
    .rst_i (rst | time_load),
    .second_inc_o (second_inc)
);

digits digits (
    .clk_i             (clk),
    .rst_i             (rst),
    .inc_i             (second_inc),
    .year_h_digit_o    (year_h_digit),
    .year_l_digit_o    (year_l_digit),
    .month_h_digit_o   (month_h_digit),
    .month_l_digit_o   (month_l_digit),
    .day_h_digit_o     (day_h_digit),
    .day_l_digit_o     (day_l_digit),
    .hour_h_digit_o    (hour_h_digit),
    .hour_l_digit_o    (hour_l_digit),
    .minute_h_digit_o  (minute_h_digit),
    .minute_l_digit_o  (minute_l_digit),
    .second_h_digit_o  (second_h_digit),
    .second_l_digit_o  (second_l_digit),
    .load_i            (time_load),
    .year_h_load_i     (year_h),
    .year_l_load_i     (year_l),
    .month_h_load_i    (month_h),
    .month_l_load_i    (month_l),
    .day_h_load_i      (day_h),
    .day_l_load_i      (day_l),
    .hour_h_load_i     (hour_h),
    .hour_l_load_i     (hour_l),
    .minute_h_load_i   (minute_h),
    .minute_l_load_i   (minute_l),
    .second_h_load_i   (3'h0),
    .second_l_load_i   (4'h0)
);

seven_seg_digits #(.DIGITS(12)) seven_seg_digits (
    .digits_i ({
        // Date
        {2'b0, day_h_digit},
        {day_l_digit},
        {3'b0, month_h_digit},
        {month_l_digit},
        {year_h_digit},
        {year_l_digit},

        // Time
        {2'b0, hour_h_digit},
        {hour_l_digit},
        {1'b0, minute_h_digit},
        {minute_l_digit},
        {1'b0, second_h_digit},
        {second_l_digit}
    }),
    .seven_seg_o (seven_seg)
);

pulse_delay #(.DELAY(1)) pulse_delay (
    .clk_i (clk),
    .rst_i (rst),
    .data_i (second_inc),
    .data_o (digits_updated)
);

time_date_shift #(.WIDTH(7 * 12)) time_date_shift (
    .shift_i (shift_date),
    .data_i (seven_seg),
    .data_o (seven_seg_shifted)
);

shift_reg #(.WIDTH(7 * 12)) shift_reg (
    .clk_i   (clk),
    .rst_i   (rst),

    .start_i (digits_updated),
    .data_i  (seven_seg_shifted),

    .sclk_o  (shift_reg_sclk),
    .data_o  (shift_reg_data),
    .latch_o (shift_reg_latch)
);

endmodule
