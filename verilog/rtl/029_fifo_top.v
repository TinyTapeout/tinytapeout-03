/* Copyright (C) 2023 Michael Bell
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at
       http://www.apache.org/licenses/LICENSE-2.0
   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

module MichaelBell_6bit_fifo (
  input [7:0] io_in,
  output [7:0] io_out
);

    // Name the inputs
    wire clk = io_in[0];
    wire mode = io_in[1];
    wire reset_n_in = io_in[1] || io_in[2];  // Reset if in[1] and in[2] both low
    wire pop = (mode == 0) && io_in[3];
    wire [3:0] peek = mode ? 0 : io_in[7:4];
    wire write_en = mode;
    wire [5:0] data_in = write_en ? io_in[7:2] : 0;

    // Buffer the reset so it doesn't glitch when inputs change
    reg reset_n;
    always @(posedge clk)
        reset_n <= reset_n_in;

    // Buffer the data inputs to the latch FIFO so they don't glitch when the inputs change
    reg [5:0] data_in_buf;
    wire [5:0] data_in_dbuf;
    reg write_en_buf;
    wire ready_back;
    always @(posedge clk) begin
        data_in_buf <= data_in;
        write_en_buf <= write_en;
    end

    // Delay input data so new data is never seen when write is turned off
    delay #(.DELAY(2)) data_in_buffer[5:0] (
        .X(data_in_dbuf),
        .A(data_in_buf)
    );

    // Simple outputs
    wire ready, empty_n;
    assign io_out[0] = ready;
    assign io_out[1] = empty_n;

    wire [5:0] fifo_data_out;
    reg [5:0] data_out;
    assign io_out[7:2] = data_out;

    always @(posedge clk)
    begin
        if (!reset_n) begin
            data_out <= 0;
        end
        else begin
            data_out <= fifo_data_out;
        end
    end

`ifdef ICE40
    ff_fifo #(.DEPTH_BITS(5), .WIDTH(6)) f_fifo(
        .clk(clk),
        .reset_n(reset_n),
        .write_en(write_en_buf),
        .data_in(data_in_dbuf),
        .peek(peek[1:0]),
        .pop(pop),
        .data_out(fifo_data_out),
        .empty_n(empty_n),
        .full_n(ready)
    );
`else
    wire ff_fifo_full_n;
    wire [5:0] l_to_ff_data;
    wire l_to_ff_write;

    latch_fifo #(.DEPTH(48), .WIDTH(6)) l_fifo(
        .clk(clk),
        .reset_n(reset_n),
        .write_en(write_en_buf),
        .data_in(data_in_dbuf),
        .pop(ff_fifo_full_n),
        .data_out(l_to_ff_data),
        .write_out(l_to_ff_write),
        .ready(ready),
        .ready_back(ready_back)
    );

    ff_fifo #(.DEPTH_BITS(2), .WIDTH(6)) f_fifo(
        .clk(clk),
        .reset_n(reset_n),
        .write_en(l_to_ff_write),
        .data_in(l_to_ff_data),
        .peek(peek[1:0]),
        .pop(pop),
        .data_out(fifo_data_out),
        .empty_n(empty_n),
        .full_n(ff_fifo_full_n)
    );
`endif

endmodule
