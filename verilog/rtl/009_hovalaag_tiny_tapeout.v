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

/* Top module for the Hovalaag Tiny Tapeout
 *
 * IN: 0: CLK
 *     1: RESET_EN
 *   2-7: DATA if RESET_EN false
 *     2: RESET if RESET_EN true
 *     3: RESET address only
 */

module MichaelBell_hovalaag (
  input [7:0] io_in,
  output [7:0] io_out
);
    wire clk = io_in[0];

    wire reset_enable = !io_in[1];
    wire reset_n;
    reg reset_rosc_n;

    reg [3:0] addr;
    reg [3:0] next_addr;

    assign reset_n = !(reset_enable && io_in[2]);

    wire [7:0] out_from_wrapper;

    HovalaagWrapper wrapper (
        .clk(clk),
        .reset_n(reset_n),
        .reset_rosc_n(reset_rosc_n),
        .addr(addr),
        .io_in(io_in[7:2]),
        .io_out(out_from_wrapper)
    );

    always @(posedge clk) begin
        if (reset_enable && io_in[4]) begin
            reset_rosc_n <= 1'b1;
        end
        else if (reset_enable) begin
            reset_rosc_n <= 1'b0;
        end 

        if (reset_enable && (io_in[2] || io_in[3])) begin
            next_addr <= 4'h0;
        end
        else begin
            if (next_addr == 9) next_addr <= 0;
            else next_addr <= next_addr + 1;
        end
    end

`ifdef SIM
    always @(negedge clk) begin
        addr <= next_addr;
    end
`else
    genvar i;
    generate
        for (i = 0; i <= 3; i = i + 1) begin
            sky130_fd_sc_hd__dfrtn_1 addrff(.Q(addr[i]), .D(next_addr[i]), .CLK_N(clk), .RESET_B(1'b1));
        end
    endgenerate
`endif

    // Output data.  For addr 7 and 8 output clock so that the output can be used as input to MichaelBell_6bit_fifo
    assign io_out[7:1] = out_from_wrapper[7:1];
    assign io_out[0] = (addr == 7 || addr == 8) ? io_in[0] : out_from_wrapper[0];

endmodule