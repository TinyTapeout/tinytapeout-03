// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 * THIS FILE HAS BEEN GENERATED USING multi_tools_project CODEGEN
 * IF YOU NEED TO MAKE EDITS TO IT, EDIT codegen/caravel_iface_header.txt
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
)(
`ifdef USE_POWER_PINS
    inout vdda1,       // User area 1 3.3V supply
    inout vdda2,       // User area 2 3.3V supply
    inout vssa1,       // User area 1 analog ground
    inout vssa2,       // User area 2 analog ground
    inout vccd1,       // User area 1 1.8V supply
    inout vccd2,       // User area 2 1.8v supply
    inout vssd1,       // User area 1 digital ground
    inout vssd2,       // User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

    // start of module instantiation

    wire sc_clk_out, sc_data_out, sc_latch_out, sc_scan_out;
    wire sc_clk_in,  sc_data_in;

    scan_controller #(.NUM_DESIGNS(5)) scan_controller (
       .clk                    (wb_clk_i),
       .reset                  (wb_rst_i),
       .active_select          (io_in[20:12]),
       .inputs                 (io_in[28:21]),
       .outputs                (io_out[36:29]),
       .ready                  (io_out[37]),
       .slow_clk               (io_out[10]),
       .set_clk_div            (io_in[11]),

       .scan_clk_out           (sc_clk_out),
       .scan_clk_in            (sc_clk_in),
       .scan_data_out          (sc_data_out),
       .scan_data_in           (sc_data_in),
       .scan_select            (sc_scan_out),
       .scan_latch_en          (sc_latch_out),

       .la_scan_clk_in         (la_data_in[0]),
       .la_scan_data_in        (la_data_in[1]),
       .la_scan_data_out       (la_data_out[0]),
       .la_scan_select         (la_data_in[2]),
       .la_scan_latch_en       (la_data_in[3]),

       .driver_sel             (io_in[9:8]),

       .oeb                    (io_oeb)
    );

    // [000] https://github.com/TinyTapeout/tt03-test-invert
    wire sw_000_clk_out, sw_000_data_out, sw_000_scan_out, sw_000_latch_out;
    wire [7:0] sw_000_module_data_in;
    wire [7:0] sw_000_module_data_out;
    scanchain #(.NUM_IOS(8)) scanchain_000 (
        .clk_in          (sc_clk_out),
        .data_in         (sc_data_out),
        .scan_select_in  (sc_scan_out),
        .latch_enable_in (sc_latch_out),
        .clk_out         (sw_000_clk_out),
        .data_out        (sw_000_data_out),
        .scan_select_out (sw_000_scan_out),
        .latch_enable_out(sw_000_latch_out),
        .module_data_in  (sw_000_module_data_in),
        .module_data_out (sw_000_module_data_out)
    );

    user_module_357464855584307201 user_module_357464855584307201_000 (
        .io_in  (sw_000_module_data_in),
        .io_out (sw_000_module_data_out)
    );

    // [001] https://github.com/WallieEverest/tt03
    wire sw_001_clk_out, sw_001_data_out, sw_001_scan_out, sw_001_latch_out;
    wire [7:0] sw_001_module_data_in;
    wire [7:0] sw_001_module_data_out;
    scanchain #(.NUM_IOS(8)) scanchain_001 (
        .clk_in          (sw_000_clk_out),
        .data_in         (sw_000_data_out),
        .scan_select_in  (sw_000_scan_out),
        .latch_enable_in (sw_000_latch_out),
        .clk_out         (sw_001_clk_out),
        .data_out        (sw_001_data_out),
        .scan_select_out (sw_001_scan_out),
        .latch_enable_out(sw_001_latch_out),
        .module_data_in  (sw_001_module_data_in),
        .module_data_out (sw_001_module_data_out)
    );

    weverest_top weverest_top_001 (
        .io_in  (sw_001_module_data_in),
        .io_out (sw_001_module_data_out)
    );

    // [002] https://github.com/icegoat9/tinytapeout03-7seglife
    wire sw_002_clk_out, sw_002_data_out, sw_002_scan_out, sw_002_latch_out;
    wire [7:0] sw_002_module_data_in;
    wire [7:0] sw_002_module_data_out;
    scanchain #(.NUM_IOS(8)) scanchain_002 (
        .clk_in          (sw_001_clk_out),
        .data_in         (sw_001_data_out),
        .scan_select_in  (sw_001_scan_out),
        .latch_enable_in (sw_001_latch_out),
        .clk_out         (sw_002_clk_out),
        .data_out        (sw_002_data_out),
        .scan_select_out (sw_002_scan_out),
        .latch_enable_out(sw_002_latch_out),
        .module_data_in  (sw_002_module_data_in),
        .module_data_out (sw_002_module_data_out)
    );

    user_module_357752736742764545 user_module_357752736742764545_002 (
        .io_in  (sw_002_module_data_in),
        .io_out (sw_002_module_data_out)
    );

    // [003] https://github.com/meiniKi/tt03-another-piece-of-pi
    wire sw_003_clk_out, sw_003_data_out, sw_003_scan_out, sw_003_latch_out;
    wire [7:0] sw_003_module_data_in;
    wire [7:0] sw_003_module_data_out;
    scanchain #(.NUM_IOS(8)) scanchain_003 (
        .clk_in          (sw_002_clk_out),
        .data_in         (sw_002_data_out),
        .scan_select_in  (sw_002_scan_out),
        .latch_enable_in (sw_002_latch_out),
        .clk_out         (sw_003_clk_out),
        .data_out        (sw_003_data_out),
        .scan_select_out (sw_003_scan_out),
        .latch_enable_out(sw_003_latch_out),
        .module_data_in  (sw_003_module_data_in),
        .module_data_out (sw_003_module_data_out)
    );

    meiniki_pi meiniki_pi_003 (
        .io_in  (sw_003_module_data_in),
        .io_out (sw_003_module_data_out)
    );

    // [004] https://github.com/nqbit/wormy
    wire sw_004_clk_out, sw_004_data_out, sw_004_scan_out, sw_004_latch_out;
    wire [7:0] sw_004_module_data_in;
    wire [7:0] sw_004_module_data_out;
    scanchain #(.NUM_IOS(8)) scanchain_004 (
        .clk_in          (sw_003_clk_out),
        .data_in         (sw_003_data_out),
        .scan_select_in  (sw_003_scan_out),
        .latch_enable_in (sw_003_latch_out),
        .clk_out         (sw_004_clk_out),
        .data_out        (sw_004_data_out),
        .scan_select_out (sw_004_scan_out),
        .latch_enable_out(sw_004_latch_out),
        .module_data_in  (sw_004_module_data_in),
        .module_data_out (sw_004_module_data_out)
    );

    wormy_top wormy_top_004 (
        .io_in  (sw_004_module_data_in),
        .io_out (sw_004_module_data_out)
    );

    // Connect final signals back to the scan controller
    assign sc_clk_in  = sw_004_clk_out;
    assign sc_data_in = sw_004_data_out;

    // end of module instantiation

endmodule	// user_project_wrapper
`default_nettype wire
