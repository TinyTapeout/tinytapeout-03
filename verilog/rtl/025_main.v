`default_nettype none

module andrewm_parallel_to_uart #(
    parameter IDLE = 2'b00,
    parameter READ_LSB = 2'b01,
    parameter READ_MSB = 2'b10,
    parameter SEND_DATA = 2'b11
) (
    input [7:0] io_in,
    output [7:0] io_out
);
    // Define the I/O
    wire clk = io_in[0];
    wire reset = io_in[1];
    wire [3:0] data_pins = io_in[5:2];
    wire [1:0] mode = io_in[7:6];

    reg uart_tx;
    assign io_out[0] = uart_tx;
    assign io_out[7:1] = 7'b1111111;

    reg [7:0] data;
    reg [3:0] lsb_data;
    reg [3:0] msb_data;
    reg [2:0] bit_counter;
    reg [7:0] baud_counter;
    reg transmitting;

    always @(posedge clk) begin
        if (reset) begin
            // Reset state machine and data registers
            data <= 8'h00;
            lsb_data <= 4'h0;
            msb_data <= 4'h0;
            bit_counter <= 3'h0;
            baud_counter <= 8'hFF;
            transmitting <= 1'b0;
            uart_tx <= 1'b1;
        end else begin
            case (mode)
                IDLE: begin
                    transmitting <= 1'b0;
                end
                READ_LSB: begin
                    // Read least significant bits from input pins
                    lsb_data <= data_pins;
                end
                READ_MSB: begin
                    // Read most significant bits from input pins and combine with least significant bits
                    msb_data <= data_pins;
                    data <= {msb_data, lsb_data};
                end
                SEND_DATA: begin
                    // Send start bit and restart counter
                    if (!transmitting) begin
                        transmitting <= 1'b1;
                        baud_counter <= 8'hFF;
                        bit_counter <= 3'h0;
                        uart_tx <= 1'b0;
                    end else if (baud_counter == 0) begin
                        // Send next bit
                        uart_tx <= data[bit_counter];
                        bit_counter <= bit_counter + 1;
                        baud_counter <= 8'hFF;
                        if (bit_counter == 7) begin
                            // End transmission
                            transmitting <= 1'b0;
                            uart_tx <= 1'b1; // stop bit
                        end
                    end else begin
                        // Wait for next baud period
                        baud_counter <= baud_counter - 1;
                    end
                end
            endcase
        end
    end
    
endmodule

// module seven_segment_seconds #( parameter MAX_COUNT = 1000 ) (
//   input [7:0] io_in,
//   output [7:0] io_out
// );
    
//     wire clk = io_in[0];
//     wire reset = io_in[1];
//     wire [6:0] led_out;
//     assign io_out[6:0] = led_out;

//     // slow clock out on the last gpio
//     assign io_out[7] = second_counter[4];

//     // external clock is 1000Hz, so need 10 bit counter
//     reg [9:0] second_counter;
//     reg [3:0] digit;

//     always @(posedge clk) begin
//         // if reset, set counter to 0
//         if (reset) begin
//             second_counter <= 0;
//             digit <= 0;
//         end else begin
//             // if up to 16e6
//             if (second_counter == MAX_COUNT) begin
//                 // reset
//                 second_counter <= 0;

//                 // increment digit
//                 digit <= digit + 1'b1;

//                 // only count from 0 to 9
//                 if (digit == 9)
//                     digit <= 0;

//             end else
//                 // increment counter
//                 second_counter <= second_counter + 1'b1;
//         end
//     end

//     // instantiate segment display
//     seg7 seg7(.counter(digit), .segments(led_out));

// endmodule
