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
    wire clk;
    wire [7:2] io_in_b;

`ifdef SIM
    assign #30 io_in_b[7:2] = io_in[7:2];
`else
    // Delay the main inputs to help with hold time violations
    genvar i;
    generate
        for (i = 2; i <= 7; i = i + 1) begin
            sky130_fd_sc_hd__dlymetal6s6s_1 dly1(.X(io_in_b[i]), .A(io_in[i]));
        end
    endgenerate
`endif

    wire reset;

    reg [9:0] addr;

    assign clk = io_in[0];
    assign reset = io_in[1] && io_in[2];

    HovalaagWrapper wrapper (
        .clk(clk),
        .reset(reset),
        .addr(addr),
        .io_in(io_in_b[7:2]),
        .io_out(io_out[7:0])
    );

    always @(negedge clk) begin
        if (io_in[1] && (io_in[2] || io_in[3])) begin
            addr <= 10'b1000000000;
        end
        else begin
            addr <= { addr[8:0], addr[9] };
        end
    end

endmodule