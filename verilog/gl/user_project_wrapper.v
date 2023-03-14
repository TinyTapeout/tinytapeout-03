module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire sc_clk_in;
 wire sc_clk_out;
 wire sc_data_in;
 wire sc_data_out;
 wire sc_latch_out;
 wire sc_scan_out;
 wire sw_000_clk_out;
 wire sw_000_data_out;
 wire sw_000_latch_out;
 wire \sw_000_module_data_in[0] ;
 wire \sw_000_module_data_in[1] ;
 wire \sw_000_module_data_in[2] ;
 wire \sw_000_module_data_in[3] ;
 wire \sw_000_module_data_in[4] ;
 wire \sw_000_module_data_in[5] ;
 wire \sw_000_module_data_in[6] ;
 wire \sw_000_module_data_in[7] ;
 wire \sw_000_module_data_out[0] ;
 wire \sw_000_module_data_out[1] ;
 wire \sw_000_module_data_out[2] ;
 wire \sw_000_module_data_out[3] ;
 wire \sw_000_module_data_out[4] ;
 wire \sw_000_module_data_out[5] ;
 wire \sw_000_module_data_out[6] ;
 wire \sw_000_module_data_out[7] ;
 wire sw_000_scan_out;
 wire sw_001_clk_out;
 wire sw_001_data_out;
 wire sw_001_latch_out;
 wire \sw_001_module_data_in[0] ;
 wire \sw_001_module_data_in[1] ;
 wire \sw_001_module_data_in[2] ;
 wire \sw_001_module_data_in[3] ;
 wire \sw_001_module_data_in[4] ;
 wire \sw_001_module_data_in[5] ;
 wire \sw_001_module_data_in[6] ;
 wire \sw_001_module_data_in[7] ;
 wire \sw_001_module_data_out[0] ;
 wire \sw_001_module_data_out[1] ;
 wire \sw_001_module_data_out[2] ;
 wire \sw_001_module_data_out[3] ;
 wire \sw_001_module_data_out[4] ;
 wire \sw_001_module_data_out[5] ;
 wire \sw_001_module_data_out[6] ;
 wire \sw_001_module_data_out[7] ;
 wire sw_001_scan_out;
 wire sw_002_clk_out;
 wire sw_002_data_out;
 wire sw_002_latch_out;
 wire \sw_002_module_data_in[0] ;
 wire \sw_002_module_data_in[1] ;
 wire \sw_002_module_data_in[2] ;
 wire \sw_002_module_data_in[3] ;
 wire \sw_002_module_data_in[4] ;
 wire \sw_002_module_data_in[5] ;
 wire \sw_002_module_data_in[6] ;
 wire \sw_002_module_data_in[7] ;
 wire \sw_002_module_data_out[0] ;
 wire \sw_002_module_data_out[1] ;
 wire \sw_002_module_data_out[2] ;
 wire \sw_002_module_data_out[3] ;
 wire \sw_002_module_data_out[4] ;
 wire \sw_002_module_data_out[5] ;
 wire \sw_002_module_data_out[6] ;
 wire \sw_002_module_data_out[7] ;
 wire sw_002_scan_out;
 wire sw_003_clk_out;
 wire sw_003_data_out;
 wire sw_003_latch_out;
 wire \sw_003_module_data_in[0] ;
 wire \sw_003_module_data_in[1] ;
 wire \sw_003_module_data_in[2] ;
 wire \sw_003_module_data_in[3] ;
 wire \sw_003_module_data_in[4] ;
 wire \sw_003_module_data_in[5] ;
 wire \sw_003_module_data_in[6] ;
 wire \sw_003_module_data_in[7] ;
 wire \sw_003_module_data_out[0] ;
 wire \sw_003_module_data_out[1] ;
 wire \sw_003_module_data_out[2] ;
 wire \sw_003_module_data_out[3] ;
 wire \sw_003_module_data_out[4] ;
 wire \sw_003_module_data_out[5] ;
 wire \sw_003_module_data_out[6] ;
 wire \sw_003_module_data_out[7] ;
 wire sw_003_scan_out;
 wire sw_004_latch_out;
 wire \sw_004_module_data_in[0] ;
 wire \sw_004_module_data_in[1] ;
 wire \sw_004_module_data_in[2] ;
 wire \sw_004_module_data_in[3] ;
 wire \sw_004_module_data_in[4] ;
 wire \sw_004_module_data_in[5] ;
 wire \sw_004_module_data_in[6] ;
 wire \sw_004_module_data_in[7] ;
 wire \sw_004_module_data_out[0] ;
 wire \sw_004_module_data_out[1] ;
 wire \sw_004_module_data_out[2] ;
 wire \sw_004_module_data_out[3] ;
 wire \sw_004_module_data_out[4] ;
 wire \sw_004_module_data_out[5] ;
 wire \sw_004_module_data_out[6] ;
 wire \sw_004_module_data_out[7] ;
 wire sw_004_scan_out;

 meiniki_pi meiniki_pi_003 (.vccd1(vccd1),
    .vssd1(vssd1),
    .io_in({\sw_003_module_data_in[7] ,
    \sw_003_module_data_in[6] ,
    \sw_003_module_data_in[5] ,
    \sw_003_module_data_in[4] ,
    \sw_003_module_data_in[3] ,
    \sw_003_module_data_in[2] ,
    \sw_003_module_data_in[1] ,
    \sw_003_module_data_in[0] }),
    .io_out({\sw_003_module_data_out[7] ,
    \sw_003_module_data_out[6] ,
    \sw_003_module_data_out[5] ,
    \sw_003_module_data_out[4] ,
    \sw_003_module_data_out[3] ,
    \sw_003_module_data_out[2] ,
    \sw_003_module_data_out[1] ,
    \sw_003_module_data_out[0] }));
 scan_controller scan_controller (.clk(wb_clk_i),
    .la_scan_clk_in(la_data_in[0]),
    .la_scan_data_in(la_data_in[1]),
    .la_scan_data_out(la_data_out[0]),
    .la_scan_latch_en(la_data_in[3]),
    .la_scan_select(la_data_in[2]),
    .ready(io_out[37]),
    .reset(wb_rst_i),
    .scan_clk_in(sc_clk_in),
    .scan_clk_out(sc_clk_out),
    .scan_data_in(sc_data_in),
    .scan_data_out(sc_data_out),
    .scan_latch_en(sc_latch_out),
    .scan_select(sc_scan_out),
    .set_clk_div(io_in[11]),
    .slow_clk(io_out[10]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .active_select({io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12]}),
    .driver_sel({io_in[9],
    io_in[8]}),
    .inputs({io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21]}),
    .oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .outputs({io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29]}));
 scanchain scanchain_000 (.clk_in(sc_clk_out),
    .clk_out(sw_000_clk_out),
    .data_in(sc_data_out),
    .data_out(sw_000_data_out),
    .latch_enable_in(sc_latch_out),
    .latch_enable_out(sw_000_latch_out),
    .scan_select_in(sc_scan_out),
    .scan_select_out(sw_000_scan_out),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .module_data_in({\sw_000_module_data_in[7] ,
    \sw_000_module_data_in[6] ,
    \sw_000_module_data_in[5] ,
    \sw_000_module_data_in[4] ,
    \sw_000_module_data_in[3] ,
    \sw_000_module_data_in[2] ,
    \sw_000_module_data_in[1] ,
    \sw_000_module_data_in[0] }),
    .module_data_out({\sw_000_module_data_out[7] ,
    \sw_000_module_data_out[6] ,
    \sw_000_module_data_out[5] ,
    \sw_000_module_data_out[4] ,
    \sw_000_module_data_out[3] ,
    \sw_000_module_data_out[2] ,
    \sw_000_module_data_out[1] ,
    \sw_000_module_data_out[0] }));
 scanchain scanchain_001 (.clk_in(sw_000_clk_out),
    .clk_out(sw_001_clk_out),
    .data_in(sw_000_data_out),
    .data_out(sw_001_data_out),
    .latch_enable_in(sw_000_latch_out),
    .latch_enable_out(sw_001_latch_out),
    .scan_select_in(sw_000_scan_out),
    .scan_select_out(sw_001_scan_out),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .module_data_in({\sw_001_module_data_in[7] ,
    \sw_001_module_data_in[6] ,
    \sw_001_module_data_in[5] ,
    \sw_001_module_data_in[4] ,
    \sw_001_module_data_in[3] ,
    \sw_001_module_data_in[2] ,
    \sw_001_module_data_in[1] ,
    \sw_001_module_data_in[0] }),
    .module_data_out({\sw_001_module_data_out[7] ,
    \sw_001_module_data_out[6] ,
    \sw_001_module_data_out[5] ,
    \sw_001_module_data_out[4] ,
    \sw_001_module_data_out[3] ,
    \sw_001_module_data_out[2] ,
    \sw_001_module_data_out[1] ,
    \sw_001_module_data_out[0] }));
 scanchain scanchain_002 (.clk_in(sw_001_clk_out),
    .clk_out(sw_002_clk_out),
    .data_in(sw_001_data_out),
    .data_out(sw_002_data_out),
    .latch_enable_in(sw_001_latch_out),
    .latch_enable_out(sw_002_latch_out),
    .scan_select_in(sw_001_scan_out),
    .scan_select_out(sw_002_scan_out),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .module_data_in({\sw_002_module_data_in[7] ,
    \sw_002_module_data_in[6] ,
    \sw_002_module_data_in[5] ,
    \sw_002_module_data_in[4] ,
    \sw_002_module_data_in[3] ,
    \sw_002_module_data_in[2] ,
    \sw_002_module_data_in[1] ,
    \sw_002_module_data_in[0] }),
    .module_data_out({\sw_002_module_data_out[7] ,
    \sw_002_module_data_out[6] ,
    \sw_002_module_data_out[5] ,
    \sw_002_module_data_out[4] ,
    \sw_002_module_data_out[3] ,
    \sw_002_module_data_out[2] ,
    \sw_002_module_data_out[1] ,
    \sw_002_module_data_out[0] }));
 scanchain scanchain_003 (.clk_in(sw_002_clk_out),
    .clk_out(sw_003_clk_out),
    .data_in(sw_002_data_out),
    .data_out(sw_003_data_out),
    .latch_enable_in(sw_002_latch_out),
    .latch_enable_out(sw_003_latch_out),
    .scan_select_in(sw_002_scan_out),
    .scan_select_out(sw_003_scan_out),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .module_data_in({\sw_003_module_data_in[7] ,
    \sw_003_module_data_in[6] ,
    \sw_003_module_data_in[5] ,
    \sw_003_module_data_in[4] ,
    \sw_003_module_data_in[3] ,
    \sw_003_module_data_in[2] ,
    \sw_003_module_data_in[1] ,
    \sw_003_module_data_in[0] }),
    .module_data_out({\sw_003_module_data_out[7] ,
    \sw_003_module_data_out[6] ,
    \sw_003_module_data_out[5] ,
    \sw_003_module_data_out[4] ,
    \sw_003_module_data_out[3] ,
    \sw_003_module_data_out[2] ,
    \sw_003_module_data_out[1] ,
    \sw_003_module_data_out[0] }));
 scanchain scanchain_004 (.clk_in(sw_003_clk_out),
    .clk_out(sc_clk_in),
    .data_in(sw_003_data_out),
    .data_out(sc_data_in),
    .latch_enable_in(sw_003_latch_out),
    .latch_enable_out(sw_004_latch_out),
    .scan_select_in(sw_003_scan_out),
    .scan_select_out(sw_004_scan_out),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .module_data_in({\sw_004_module_data_in[7] ,
    \sw_004_module_data_in[6] ,
    \sw_004_module_data_in[5] ,
    \sw_004_module_data_in[4] ,
    \sw_004_module_data_in[3] ,
    \sw_004_module_data_in[2] ,
    \sw_004_module_data_in[1] ,
    \sw_004_module_data_in[0] }),
    .module_data_out({\sw_004_module_data_out[7] ,
    \sw_004_module_data_out[6] ,
    \sw_004_module_data_out[5] ,
    \sw_004_module_data_out[4] ,
    \sw_004_module_data_out[3] ,
    \sw_004_module_data_out[2] ,
    \sw_004_module_data_out[1] ,
    \sw_004_module_data_out[0] }));
 user_module_357464855584307201 user_module_357464855584307201_000 (.vccd1(vccd1),
    .vssd1(vssd1),
    .io_in({\sw_000_module_data_in[7] ,
    \sw_000_module_data_in[6] ,
    \sw_000_module_data_in[5] ,
    \sw_000_module_data_in[4] ,
    \sw_000_module_data_in[3] ,
    \sw_000_module_data_in[2] ,
    \sw_000_module_data_in[1] ,
    \sw_000_module_data_in[0] }),
    .io_out({\sw_000_module_data_out[7] ,
    \sw_000_module_data_out[6] ,
    \sw_000_module_data_out[5] ,
    \sw_000_module_data_out[4] ,
    \sw_000_module_data_out[3] ,
    \sw_000_module_data_out[2] ,
    \sw_000_module_data_out[1] ,
    \sw_000_module_data_out[0] }));
 user_module_357752736742764545 user_module_357752736742764545_002 (.vccd1(vccd1),
    .vssd1(vssd1),
    .io_in({\sw_002_module_data_in[7] ,
    \sw_002_module_data_in[6] ,
    \sw_002_module_data_in[5] ,
    \sw_002_module_data_in[4] ,
    \sw_002_module_data_in[3] ,
    \sw_002_module_data_in[2] ,
    \sw_002_module_data_in[1] ,
    \sw_002_module_data_in[0] }),
    .io_out({\sw_002_module_data_out[7] ,
    \sw_002_module_data_out[6] ,
    \sw_002_module_data_out[5] ,
    \sw_002_module_data_out[4] ,
    \sw_002_module_data_out[3] ,
    \sw_002_module_data_out[2] ,
    \sw_002_module_data_out[1] ,
    \sw_002_module_data_out[0] }));
 weverest_top weverest_top_001 (.vccd1(vccd1),
    .vssd1(vssd1),
    .io_in({\sw_001_module_data_in[7] ,
    \sw_001_module_data_in[6] ,
    \sw_001_module_data_in[5] ,
    \sw_001_module_data_in[4] ,
    \sw_001_module_data_in[3] ,
    \sw_001_module_data_in[2] ,
    \sw_001_module_data_in[1] ,
    \sw_001_module_data_in[0] }),
    .io_out({\sw_001_module_data_out[7] ,
    \sw_001_module_data_out[6] ,
    \sw_001_module_data_out[5] ,
    \sw_001_module_data_out[4] ,
    \sw_001_module_data_out[3] ,
    \sw_001_module_data_out[2] ,
    \sw_001_module_data_out[1] ,
    \sw_001_module_data_out[0] }));
 wormy_top wormy_top_004 (.vccd1(vccd1),
    .vssd1(vssd1),
    .io_in({\sw_004_module_data_in[7] ,
    \sw_004_module_data_in[6] ,
    \sw_004_module_data_in[5] ,
    \sw_004_module_data_in[4] ,
    \sw_004_module_data_in[3] ,
    \sw_004_module_data_in[2] ,
    \sw_004_module_data_in[1] ,
    \sw_004_module_data_in[0] }),
    .io_out({\sw_004_module_data_out[7] ,
    \sw_004_module_data_out[6] ,
    \sw_004_module_data_out[5] ,
    \sw_004_module_data_out[4] ,
    \sw_004_module_data_out[3] ,
    \sw_004_module_data_out[2] ,
    \sw_004_module_data_out[1] ,
    \sw_004_module_data_out[0] }));
endmodule
