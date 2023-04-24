module robbertvanginkel_hamming74 (
    input [7:0] io_in,
    output reg [7:0] io_out
);

wire [6:0] encoder_out_data;
wire [3:0] decoder_out_data;
wire decoder_out_error;

hamming_encoder hamming_encoder(
    .in_data(io_in[3:0]),
    .encoded_data(encoder_out_data)
);

hamming_decoder hamming_decoder(
    .encoded_data(io_in[6:0]),
    .decoded_data(decoder_out_data),
    .error(decoder_out_error)
);

always @(*) begin
    if (io_in[7] == 1'b0) begin
        io_out[6:0] <= encoder_out_data;
        io_out[7] <= 0;
    end
    else begin
        io_out[3:0] <= decoder_out_data;
        io_out[4] <= decoder_out_error;
        io_out[7:5] <= 3'b000;
    end
end

endmodule
