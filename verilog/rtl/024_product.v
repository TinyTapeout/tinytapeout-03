`default_nettype none

module algofoogle_product (
    input   [7:0]   io_in,
    output  [7:0]   io_out
);
    wire        clk    = io_in[0];
    wire        reset  = io_in[1];
    wire [3:0]  nibble = io_in[7:4];

    reg [2:0]   state;

    reg [15:0]  product;

    assign io_out = product[15:8];

    always @(posedge clk) begin
        if (reset) begin
            // Reset.
            product <= 0;
            state <= 0;
        end else begin
            if (state < 4) begin
                // We're clocking in 4 nibbles (2 byte values):
                product <= {product[11:0],nibble};
            end else if (state == 4) begin
                // We've got the data we need; now calculate the product:
                product <= {8'b0,product[7:0]} * {8'b0,product[15:8]};
            end else begin
                // Start clocking out the result, as 2 bytes.
                product <= product << 8;
            end
            state <= (state==5) ? 0 : state+1;
        end
    end

endmodule
