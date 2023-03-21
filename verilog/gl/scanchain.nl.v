// This is the unpowered netlist.
module scanchain (clk_in,
    clk_out,
    data_in,
    data_out,
    latch_enable_in,
    latch_enable_out,
    scan_select_in,
    scan_select_out,
    module_data_in,
    module_data_out);
 input clk_in;
 output clk_out;
 input data_in;
 output data_out;
 input latch_enable_in;
 output latch_enable_out;
 input scan_select_in;
 output scan_select_out;
 output [7:0] module_data_in;
 input [7:0] module_data_out;

 wire clk;
 wire data_out_i;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire \scan_data_in[1] ;
 wire \scan_data_in[2] ;
 wire \scan_data_in[3] ;
 wire \scan_data_in[4] ;
 wire \scan_data_in[5] ;
 wire \scan_data_in[6] ;
 wire \scan_data_in[7] ;
 wire \scan_data_out[7] ;

 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_36 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_23_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_27_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_27_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_28_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_13 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_30_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_30_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_32_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_32_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_33_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_33_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_34_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_34_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_35_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_35_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_35_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_36_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_36_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_37_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_37_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_37_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_38_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_38_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_39_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_39_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_39_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_20 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_8 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_23 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_36 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(data_in),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(module_data_out[7]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_4 input11 (.A(scan_select_in),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(latch_enable_in),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(module_data_out[0]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(module_data_out[1]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(module_data_out[2]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(module_data_out[3]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(module_data_out[4]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(module_data_out[5]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(module_data_out[6]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input_buf_clk (.A(clk_in),
    .X(clk));
 sky130_fd_sc_hd__dlxtp_1 \latch[0]  (.D(\scan_data_in[1] ),
    .GATE(net2),
    .Q(module_data_in[0]));
 sky130_fd_sc_hd__dlxtp_1 \latch[1]  (.D(\scan_data_in[2] ),
    .GATE(net2),
    .Q(module_data_in[1]));
 sky130_fd_sc_hd__dlxtp_1 \latch[2]  (.D(\scan_data_in[3] ),
    .GATE(net2),
    .Q(module_data_in[2]));
 sky130_fd_sc_hd__dlxtp_1 \latch[3]  (.D(\scan_data_in[4] ),
    .GATE(net2),
    .Q(module_data_in[3]));
 sky130_fd_sc_hd__dlxtp_1 \latch[4]  (.D(\scan_data_in[5] ),
    .GATE(net2),
    .Q(module_data_in[4]));
 sky130_fd_sc_hd__dlxtp_1 \latch[5]  (.D(\scan_data_in[6] ),
    .GATE(net2),
    .Q(module_data_in[5]));
 sky130_fd_sc_hd__dlxtp_1 \latch[6]  (.D(\scan_data_in[7] ),
    .GATE(net2),
    .Q(module_data_in[6]));
 sky130_fd_sc_hd__dlxtp_1 \latch[7]  (.D(\scan_data_out[7] ),
    .GATE(net2),
    .Q(module_data_in[7]));
 sky130_fd_sc_hd__dfrtn_1 out_flop (.CLK_N(clk),
    .D(\scan_data_out[7] ),
    .RESET_B(net12),
    .Q(data_out_i));
 sky130_fd_sc_hd__conb_1 out_flop_12 (.HI(net12));
 sky130_fd_sc_hd__buf_4 \output_buffers[0]  (.A(net2),
    .X(latch_enable_out));
 sky130_fd_sc_hd__buf_4 \output_buffers[1]  (.A(net11),
    .X(scan_select_out));
 sky130_fd_sc_hd__buf_4 \output_buffers[2]  (.A(data_out_i),
    .X(data_out));
 sky130_fd_sc_hd__buf_4 \output_buffers[3]  (.A(clk),
    .X(clk_out));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[0]  (.CLK(clk),
    .D(net1),
    .SCD(net3),
    .SCE(net11),
    .Q(\scan_data_in[1] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[1]  (.CLK(clk),
    .D(\scan_data_in[1] ),
    .SCD(net4),
    .SCE(net11),
    .Q(\scan_data_in[2] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[2]  (.CLK(clk),
    .D(\scan_data_in[2] ),
    .SCD(net5),
    .SCE(net11),
    .Q(\scan_data_in[3] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[3]  (.CLK(clk),
    .D(\scan_data_in[3] ),
    .SCD(net6),
    .SCE(net11),
    .Q(\scan_data_in[4] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[4]  (.CLK(clk),
    .D(\scan_data_in[4] ),
    .SCD(net7),
    .SCE(net11),
    .Q(\scan_data_in[5] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[5]  (.CLK(clk),
    .D(\scan_data_in[5] ),
    .SCD(net8),
    .SCE(net11),
    .Q(\scan_data_in[6] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[6]  (.CLK(clk),
    .D(\scan_data_in[6] ),
    .SCD(net9),
    .SCE(net11),
    .Q(\scan_data_in[7] ));
 sky130_fd_sc_hd__sdfxtp_1 \scan_flop[7]  (.CLK(clk),
    .D(\scan_data_in[7] ),
    .SCD(net10),
    .SCE(net11),
    .Q(\scan_data_out[7] ));
endmodule

