`default_nettype none

// copy parameters to tb.v, ttfir.v, test.py
// as files may be used individually
module gbsha_top #(parameter N_TAPS = 6,
                             BW_in = 6,
                             BW_product = 12,
                             BW_sum = 15,
                             BW_out = 8
                             )
(
  input [7:0] io_in,
  output [7:0] io_out
);
    // control signals
    wire clk = io_in[0];
    wire reset = io_in[1];
    reg [3:0] coefficient_loaded;

    // inputs and output
    wire [BW_in - 1:0] x_in = io_in[BW_in - 1 + 2:2];
    wire [BW_out - 1:0] y_out;
    assign io_out[BW_out - 1:0] = y_out;
    if (BW_out < 8)
        assign io_out[7:BW_out] = 0;

    // storage for input, multiplier
    reg signed [BW_in - 1:0] coefficient [N_TAPS -1:0];
    reg signed [BW_in - 1:0] x [N_TAPS -1:0];

    // intermediate
    wire signed [BW_product - 1:0] product [N_TAPS -1: 0];
    reg signed [BW_sum - 1:0] sum;


    always @(posedge clk) begin
        // initialize shift register with zeros
        if (reset) begin
            x[0] <= 0;
            x[1] <= 0;
            x[2] <= 0;
            x[3] <= 0;
            x[4] <= 0;
            x[5] <= 0;
            coefficient[0] <= 0;
            coefficient[1] <= 0;
            coefficient[2] <= 0;
            coefficient[3] <= 0;
            coefficient[4] <= 0;
            coefficient[5] <= 0;
            sum <= 0;
            coefficient_loaded <= 0;
        end else if (coefficient_loaded < N_TAPS) begin
            coefficient[5] <= coefficient[4];
            coefficient[4] <= coefficient[3];
            coefficient[3] <= coefficient[2];
            coefficient[2] <= coefficient[1];
            coefficient[1] <= coefficient[0];
            coefficient[0] <= x_in;
            coefficient_loaded <= coefficient_loaded + 1;
        end else begin
            sum <= product[0] + product[1] + product[2] + product[3] + product[4] + product[5];
            x[5] <= x[4];
            x[4] <= x[3];
            x[3] <= x[2];
            x[2] <= x[1];
            x[1] <= x[0];
            x[0] <= x_in;
        end
    end

    assign product[0] = x[0] * coefficient[0];
    assign product[1] = x[1] * coefficient[1];
    assign product[2] = x[2] * coefficient[2];
    assign product[3] = x[3] * coefficient[3];
    assign product[4] = x[4] * coefficient[4];
    assign product[5] = x[5] * coefficient[5];
    // assign sum = product[0]; // + product[1]; // WORKS
    // assign sum = product[0] + product[1];     // FAILS

    assign y_out = sum[BW_out - 1:0];
endmodule
