`default_nettype none

module scanchain #(
    parameter NUM_IOS = 8
)(
    // Chain input
    input  wire clk_in,
    input  wire data_in,
    input  wire scan_select_in,
    input  wire latch_enable_in,

    // Chain output
    output wire clk_out,
    output wire data_out,
    output wire scan_select_out,
    output wire latch_enable_out,

    // User module connections
    input  wire [NUM_IOS-1:0] module_data_out,
    output wire [NUM_IOS-1:0] module_data_in
);

    // Signals
    // -------

    // Internal clock
    wire clk;

    // Scan Flop chain
    wire [NUM_IOS-1:0] scan_data_out;
    wire [NUM_IOS-1:0] scan_data_in;


    // Clock distribution
    // ------------------

    // Pass-through inverter
    sky130_fd_sc_hd__clkinv_4 buf_clk (
        .A          (clk_in),
        .Y          (clk_out),
        .VPWR       (1'b1),
        .VGND       (1'b0)
    );

    // Internal clock net inverter
    sky130_fd_sc_hd__clkinv_2 buf_clk_int (
        .A          (clk_out),
        .Y          (clk),
        .VPWR       (1'b1),
        .VGND       (1'b0)
    );


    // Through buffers
    // ---------------

    sky130_fd_sc_hd__buf_4 through_buffers[1:0] (
        .A          ({ scan_select_in,  latch_enable_in  }),
        .X          ({ scan_select_out, latch_enable_out }),
        .VPWR       (1'b1),
        .VGND       (1'b0)
    );


    // Scan Chain
    // ----------

    // Link all the flops, with data coming from data_in
    assign scan_data_in = { scan_data_out[NUM_IOS-2:0], data_in };

    // scan flops have a mux on their inputs to choose either data from the user module or the previous flop's output
    // https://antmicro-skywater-pdk-docs.readthedocs.io/en/test-submodules-in-rtd/contents/libraries/sky130_fd_sc_ls/cells/sdfxtp/README.html
`ifndef FORMAL
`ifndef FORMAL_COMPAT
    sky130_fd_sc_hd__sdfxtp_1 scan_flop [NUM_IOS-1:0] (
        .CLK  (clk),
        .D    (scan_data_in),
        .SCD  (module_data_out),
        .SCE  (scan_select_in),
        .Q    (scan_data_out),
        .VPWR (1'b1),
        .VGND (1'b0)
    );

    // end of the chain FF to compensate for clock inversion and lost cycle
	// between blocks
    sky130_fd_sc_hd__dfrtp_4 out_flop (
        .RESET_B (1'b1),
        .CLK     (clk),
        .D       (scan_data_out[NUM_IOS-1]),
        .Q       (data_out),
        .VPWR    (1'b1),
        .VGND    (1'b0)
    );

    // latch is used to latch the input data of the user module while the scan chain is used to capture the user module's outputs
    // https://antmicro-skywater-pdk-docs.readthedocs.io/en/test-submodules-in-rtd/contents/libraries/sky130_fd_sc_hd/cells/dlxtp/README.html
    sky130_fd_sc_hd__dlxtp_1 latch [NUM_IOS-1:0] (
        .D    (scan_data_out),
        .GATE (latch_enable_in),
        .Q    (module_data_in),
        .VPWR (1'b1),
        .VGND (1'b0)
    );
`endif
`endif

endmodule // scanchain
