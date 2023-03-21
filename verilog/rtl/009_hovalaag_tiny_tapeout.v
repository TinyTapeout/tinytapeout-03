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
    wire inv_clk;
    wire inv_clk2;

    wire reset;

    reg [9:0] addr;

    assign reset = io_in[1] && io_in[2];

`ifdef SIM
    assign inv_clk = ~io_in[0];
    assign inv_clk2 = ~io_in[0];
`else
    wire inv_clk_mid;
    sky130_fd_sc_hd__inv_1 clkinv(.Y(inv_clk_mid), .A(io_in[0]));
    sky130_fd_sc_hd__clkbuf_8 invclkbuf(.X(inv_clk), .A(inv_clk_mid));
    sky130_fd_sc_hd__clkbuf_8 invclkbuf2(.X(inv_clk2), .A(inv_clk_mid));
`endif

    HovalaagWrapper wrapper (
        .clk(clk),
        .inv_clk(inv_clk),
        .reset(reset),
        .addr(addr),
        .io_in(io_in[7:2]),
        .io_out(io_out[7:0])
    );

    always @(posedge inv_clk2) begin
        if (io_in[1] && (io_in[2] || io_in[3])) begin
            addr <= 10'b1000000000;
        end
        else begin
            addr <= { addr[8:0], addr[9] };
        end
    end

endmodule