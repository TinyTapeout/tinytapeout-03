module jblocklove_cgpt_benchmark_wrapper (
    input wire [7:0] io_in,
    output reg [7:0] io_out
);

    wire clk = io_in[0];
    wire reset_n = io_in[1];
    wire [7:0] shift_register_out;
    wire [7:0] sequence_generator_out;
    wire [7:0] lfsr_out;
    wire [7:0] dice_roller_out;
    wire [2:0] sequence_detector_data;
    wire sequence_found;
    wire A, B, O;
    wire [3:0] state;
    wire [4:0] binary_input;
    wire [3:0] bcd_tens, bcd_units;
    wire red, yellow, green;

    // Instantiate modules
    shift_register shift_reg (
        .clk(clk),
        .reset_n(reset_n),
        .data_in(io_in[2]),
        .shift_enable(io_in[3]),
        .data_out(shift_register_out)
    );

    sequence_generator seq_gen (
        .clock(clk),
        .reset_n(reset_n),
        .enable(io_in[4]),
        .data(sequence_generator_out)
    );

    sequence_detector seq_det (
        .clk(clk),
        .reset_n(reset_n),
        .data(sequence_detector_data),
        .sequence_found(sequence_found)
    );

    abro_state_machine abro_sm (
        .clk(clk),
        .reset_n(reset_n),
        .A(io_in[2]),
        .B(io_in[3]),
        .O(O),
        .state(state)
    );

    binary_to_bcd b2b (
        .binary_input(binary_input),
        .bcd_tens(bcd_tens),
        .bcd_units(bcd_units)
    );

    lfsr lfsr_inst (
        .clk(clk),
        .reset_n(reset_n),
        .data(lfsr_out)
    );

    traffic_light traffic_inst (
        .clk(clk),
        .reset_n(reset_n),
        .enable(io_in[3]),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    dice_roller dice_inst (
        .clk(clk),
        .reset_n(reset_n),
        .die_select({io_in[2], io_in[3]}),
        .roll(io_in[4]),
        .rolled_number(dice_roller_out)
    );

    // Connect additional inputs and outputs
    assign sequence_detector_data = io_in[4:2];
    assign A = io_in[2];
    assign B = io_in[3];
    assign binary_input = io_in[4:0];

    // Select output based on 3-bit selector
    always @(*) begin
        case (io_in[7:5])
            3'b000: io_out = shift_register_out;
            3'b001: io_out = sequence_generator_out;
            3'b010: io_out = {sequence_found, 7'b0};
            3'b011: io_out = {O, state};
            3'b100: io_out = {bcd_tens, bcd_units};
            3'b101: io_out = lfsr_out;
            3'b110: io_out = {red, yellow, green, 5'b0};
            3'b111: io_out = dice_roller_out;
            default: io_out = 8'b0;
        endcase
    end

endmodule

