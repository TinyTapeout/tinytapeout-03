`default_nettype none

module knight_rider_KolosKoblasz (
    input [7:0]     io_in,
    output [7:0]    io_out
);

    // Number of output LEDs
    localparam OUT_WIDTH = 8;

    // Assumed CLK frequency is 6KHz
    localparam CLK_FREQ = 6000;

    // Input assignments
    wire clk                = io_in[0];
    wire reset              = io_in[1];
    wire change_rate        = io_in[2];
    wire change_brightness  = io_in[3];

    // Output assignments
    wire [OUT_WIDTH-1:0] leds;
    assign io_out   = leds;

    // Signals
    wire next_pos;
    wire pwm_enable;

    rate_ctrl #
    (
        .CLK_FREQ(CLK_FREQ)
    )
    rate_ctrl_inst
    (
        .clk(clk),
        .reset(reset),
        .change_rate(change_rate),
        .next_pos(next_pos)
    );

    brightness_ctrl #
    (
        .CLK_FREQ(CLK_FREQ)
    )
    brightness_ctrl_inst
    (
        .clk(clk),
        .reset(reset),
        .change_brightness(change_brightness),
        .pwm_enable(pwm_enable)
    );

    light_shift #
    (
        .OUT_WIDTH(OUT_WIDTH)
    )
    light_shift_inst
    (
        .clk(clk),
        .reset(reset),
        .next_pos(next_pos),
        .pwm_enable(pwm_enable),
        .leds(leds)
    );


endmodule
