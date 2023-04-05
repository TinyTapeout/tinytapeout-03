// File: /media/marco/DATA/programming/rtl/ddpm/tt03-ddpm-pwm/src/myhdl/work_ddpm_top/bat52_pwm_ddpm_top.v
// Generated by MyHDL 0.11.42
// Date: Sun Mar 26 16:27:09 2023


`timescale 1ns/10ps

module bat52_pwm_ddpm_top (
    io_in,
    io_out
);


input [7:0] io_in;
output [7:0] io_out;
reg [7:0] io_out;

reg clk;
wire [5:0] count_out;
reg ddpm;
reg ddpm_sine;
wire e;
wire e_sine;
reg [5:0] inval;
reg pwm;
reg pwm_sine;
reg resetn;
wire sd;
reg sd_sine;
reg prescaler_en;
wire [7:0] sine_in;
wire [9:0] prescaler_out;
wire [5:0] pwm_ddpm0_ddpm_int_all;
reg [5:0] pwm_ddpm0_counter_down0_count;
reg [9:0] counter_up0_count;
wire [1:0] sine_lut0_in_index_msb2;
reg [6:0] sine_lut0_in_index_pi2;
reg sine_lut0_sign;
reg [7:0] sine_lut0_sine_out;
wire [6:0] sine_lut0_sine_pi2;
wire [447:0] sine_lut0_sine_lut_pi20_lut_module0_lut_c;
wire [7:0] pwm_ddpm1_count_out;
wire [7:0] pwm_ddpm1_ddpm_int_all;
reg [7:0] pwm_ddpm1_counter_down1_count;
reg [8:0] pwm_ddpm1_sd1_mod0_delta;
reg [7:0] pwm_ddpm1_sd1_mod0_qerr;
reg pwm_ddpm0_ddpm_int [0:6-1];
reg pwm_ddpm1_ddpm_int [0:8-1];

assign e = 1'd1;
assign e_sine = 1'd1;
assign sd = 1'd0;
assign pwm_ddpm0_ddpm_int_all[5] = pwm_ddpm0_ddpm_int[0];
assign pwm_ddpm0_ddpm_int_all[4] = pwm_ddpm0_ddpm_int[1];
assign pwm_ddpm0_ddpm_int_all[3] = pwm_ddpm0_ddpm_int[2];
assign pwm_ddpm0_ddpm_int_all[2] = pwm_ddpm0_ddpm_int[3];
assign pwm_ddpm0_ddpm_int_all[1] = pwm_ddpm0_ddpm_int[4];
assign pwm_ddpm0_ddpm_int_all[0] = pwm_ddpm0_ddpm_int[5];
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[448-1:441] = 'b1111111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[441-1:434] = 'b1111111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[434-1:427] = 'b1111111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[427-1:420] = 'b1111110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[420-1:413] = 'b1111110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[413-1:406] = 'b1111110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[406-1:399] = 'b1111101;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[399-1:392] = 'b1111101;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[392-1:385] = 'b1111100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[385-1:378] = 'b1111011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[378-1:371] = 'b1111010;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[371-1:364] = 'b1111010;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[364-1:357] = 'b1111001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[357-1:350] = 'b1111000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[350-1:343] = 'b1110110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[343-1:336] = 'b1110101;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[336-1:329] = 'b1110100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[329-1:322] = 'b1110011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[322-1:315] = 'b1110001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[315-1:308] = 'b1110000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[308-1:301] = 'b1101111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[301-1:294] = 'b1101101;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[294-1:287] = 'b1101011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[287-1:280] = 'b1101010;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[280-1:273] = 'b1101000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[273-1:266] = 'b1100110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[266-1:259] = 'b1100100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[259-1:252] = 'b1100010;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[252-1:245] = 'b1100000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[245-1:238] = 'b1011110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[238-1:231] = 'b1011100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[231-1:224] = 'b1011010;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[224-1:217] = 'b1011000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[217-1:210] = 'b1010101;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[210-1:203] = 'b1010011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[203-1:196] = 'b1010001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[196-1:189] = 'b1001110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[189-1:182] = 'b1001100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[182-1:175] = 'b1001001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[175-1:168] = 'b1000111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[168-1:161] = 'b1000100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[161-1:154] = 'b1000001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[154-1:147] = 'b0111111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[147-1:140] = 'b0111100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[140-1:133] = 'b0111001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[133-1:126] = 'b0110110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[126-1:119] = 'b0110011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[119-1:112] = 'b0110001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[112-1:105] = 'b0101110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[105-1:98] = 'b0101011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[98-1:91] = 'b0101000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[91-1:84] = 'b0100101;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[84-1:77] = 'b0100010;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[77-1:70] = 'b0011111;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[70-1:63] = 'b0011100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[63-1:56] = 'b0011001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[56-1:49] = 'b0010110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[49-1:42] = 'b0010011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[42-1:35] = 'b0010000;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[35-1:28] = 'b0001100;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[28-1:21] = 'b0001001;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[21-1:14] = 'b0000110;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[14-1:7] = 'b0000011;
assign sine_lut0_sine_lut_pi20_lut_module0_lut_c[7-1:0] = 'b0000000;
assign pwm_ddpm1_ddpm_int_all[7] = pwm_ddpm1_ddpm_int[0];
assign pwm_ddpm1_ddpm_int_all[6] = pwm_ddpm1_ddpm_int[1];
assign pwm_ddpm1_ddpm_int_all[5] = pwm_ddpm1_ddpm_int[2];
assign pwm_ddpm1_ddpm_int_all[4] = pwm_ddpm1_ddpm_int[3];
assign pwm_ddpm1_ddpm_int_all[3] = pwm_ddpm1_ddpm_int[4];
assign pwm_ddpm1_ddpm_int_all[2] = pwm_ddpm1_ddpm_int[5];
assign pwm_ddpm1_ddpm_int_all[1] = pwm_ddpm1_ddpm_int[6];
assign pwm_ddpm1_ddpm_int_all[0] = pwm_ddpm1_ddpm_int[7];


always @(negedge clk, negedge resetn) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM0_COUNTER_DOWN0_COUNT_PROC
    if (resetn == 0) begin
        pwm_ddpm0_counter_down0_count <= 63;
    end
    else begin
        if ((pwm_ddpm0_counter_down0_count > 0)) begin
            pwm_ddpm0_counter_down0_count <= (pwm_ddpm0_counter_down0_count - 1);
        end
        else begin
            pwm_ddpm0_counter_down0_count <= (64 - 1);
        end
        // pass
    end
end



assign count_out = pwm_ddpm0_counter_down0_count;


always @(count_out, inval) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM0_PWM_PROC
    if ((count_out < inval)) begin
        pwm = 1;
    end
    else begin
        pwm = 0;
    end
    // pass
end


always @(count_out, inval) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM0_DDPM_INT_PROC
    integer bidx;
    for (bidx=0; bidx<6; bidx=bidx+1) begin
        if ((($signed({1'b0, count_out}) & ((2 ** (6 - bidx)) - 1)) == (2 ** ((6 - 1) - bidx)))) begin
            pwm_ddpm0_ddpm_int[bidx] = inval[bidx];
        end
        else begin
            pwm_ddpm0_ddpm_int[bidx] = 0;
        end
        // pass
    end
end


always @(pwm_ddpm0_ddpm_int_all) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM0_DDPM_PROC
    if ((pwm_ddpm0_ddpm_int_all > 0)) begin
        ddpm = 1;
    end
    else begin
        ddpm = 0;
    end
end


always @(negedge clk, negedge resetn) begin: BAT52_PWM_DDPM_TOP_COUNTER_UP0_COUNT_PROC
    if (resetn == 0) begin
        counter_up0_count <= 0;
    end
    else begin
        if (prescaler_en) begin
            if (($signed({1'b0, counter_up0_count}) < (1024 - 1))) begin
                counter_up0_count <= (counter_up0_count + 1);
            end
            else begin
                counter_up0_count <= 0;
            end
        end
        else begin
            counter_up0_count <= counter_up0_count;
        end
        // pass
    end
end



assign prescaler_out = counter_up0_count;


always @(sine_in) begin: BAT52_PWM_DDPM_TOP_SINE_LUT0_GEN_INDEX_PI2_PROC
    if ((sine_in[(8 - 2)] == 0)) begin
        sine_lut0_in_index_pi2[(8 - 1)-1:0] = sine_in[(8 - 2)-1:0];
    end
    else begin
        sine_lut0_in_index_pi2[(8 - 1)-1:0] = (63 - sine_in[(8 - 2)-1:0]);
    end
end



assign sine_lut0_in_index_msb2 = sine_in[8-1:(8 - 2)];


always @(sine_lut0_in_index_msb2) begin: BAT52_PWM_DDPM_TOP_SINE_LUT0_GEN_INDEX_SIGN_PROC
    if (((sine_lut0_in_index_msb2 == 0) || (sine_lut0_in_index_msb2 == 1))) begin
        sine_lut0_sign = 0;
    end
    else begin
        sine_lut0_sign = 1;
    end
end



assign sine_lut0_sine_pi2 = ((sine_lut0_sine_lut_pi20_lut_module0_lut_c >>> (sine_lut0_in_index_pi2 * 7)) & ((2 ** 7) - 1));


always @(sine_lut0_sign, sine_lut0_sine_pi2) begin: BAT52_PWM_DDPM_TOP_SINE_LUT0_GEN_SINE_OUT_PROC
    if ((sine_lut0_sign == 0)) begin
        sine_lut0_sine_out = (127 + sine_lut0_sine_pi2);
    end
    else begin
        sine_lut0_sine_out = (127 - sine_lut0_sine_pi2);
    end
end


always @(negedge clk, negedge resetn) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_COUNTER_DOWN1_COUNT_PROC
    if (resetn == 0) begin
        pwm_ddpm1_counter_down1_count <= 255;
    end
    else begin
        if ((pwm_ddpm1_counter_down1_count > 0)) begin
            pwm_ddpm1_counter_down1_count <= (pwm_ddpm1_counter_down1_count - 1);
        end
        else begin
            pwm_ddpm1_counter_down1_count <= (256 - 1);
        end
        // pass
    end
end



assign pwm_ddpm1_count_out = pwm_ddpm1_counter_down1_count;


always @(pwm_ddpm1_count_out, sine_lut0_sine_out) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_PWM_PROC
    if ((pwm_ddpm1_count_out < sine_lut0_sine_out)) begin
        pwm_sine = 1;
    end
    else begin
        pwm_sine = 0;
    end
    // pass
end


always @(pwm_ddpm1_count_out, sine_lut0_sine_out) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_DDPM_INT_PROC
    integer bidx;
    for (bidx=0; bidx<8; bidx=bidx+1) begin
        if ((($signed({1'b0, pwm_ddpm1_count_out}) & ((2 ** (8 - bidx)) - 1)) == (2 ** ((8 - 1) - bidx)))) begin
            pwm_ddpm1_ddpm_int[bidx] = sine_lut0_sine_out[bidx];
        end
        else begin
            pwm_ddpm1_ddpm_int[bidx] = 0;
        end
        // pass
    end
end


always @(pwm_ddpm1_ddpm_int_all) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_DDPM_PROC
    if ((pwm_ddpm1_ddpm_int_all > 0)) begin
        ddpm_sine = 1;
    end
    else begin
        ddpm_sine = 0;
    end
end


always @(sine_lut0_sine_out, pwm_ddpm1_sd1_mod0_delta, pwm_ddpm1_sd1_mod0_qerr) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_SD1_MOD0_SATURATED_ADDER0_DELTA_PROC
    if (((sine_lut0_sine_out + pwm_ddpm1_sd1_mod0_qerr) > (512 - 1))) begin
        pwm_ddpm1_sd1_mod0_delta = (512 - 1);
    end
    else if (((sine_lut0_sine_out + pwm_ddpm1_sd1_mod0_qerr) < (0 + 1))) begin
        pwm_ddpm1_sd1_mod0_delta = (0 + 1);
    end
    else begin
        pwm_ddpm1_sd1_mod0_delta = (sine_lut0_sine_out + pwm_ddpm1_sd1_mod0_qerr);
    end
end


always @(negedge clk, negedge resetn) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_SD1_MOD0_QUANT_PROC
    if (resetn == 0) begin
        pwm_ddpm1_sd1_mod0_qerr <= 0;
    end
    else begin
        pwm_ddpm1_sd1_mod0_qerr[(9 - 1)-1:0] <= pwm_ddpm1_sd1_mod0_delta[(9 - 1)-1:0];
    end
end


always @(negedge clk, negedge resetn) begin: BAT52_PWM_DDPM_TOP_PWM_DDPM1_SD1_MOD0_SD_OUT_PROC
    if (resetn == 0) begin
        sd_sine <= 0;
    end
    else begin
        if (($signed({1'b0, pwm_ddpm1_sd1_mod0_delta}) > (2 ** (9 - 1)))) begin
            sd_sine <= 1;
        end
        else begin
            sd_sine <= 0;
        end
    end
end


always @(count_out) begin: BAT52_PWM_DDPM_TOP_PRESCALER_EN_PROC
    if ((count_out == 0)) begin
        prescaler_en = 1;
    end
    else begin
        prescaler_en = 0;
    end
end



assign sine_in = prescaler_out[10-1:(10 - 8)];


always @(io_in) begin: BAT52_PWM_DDPM_TOP_IN_PROC
    clk = io_in[0];
    resetn = io_in[1];
    inval[6-1:0] = io_in[8-1:2];
end


always @(ddpm_sine, ddpm, e_sine, sd_sine, pwm_sine, e, sd, pwm) begin: BAT52_PWM_DDPM_TOP_IO_OUT_PROC
    io_out[0] = pwm;
    io_out[1] = ddpm;
    io_out[2] = sd;
    io_out[3] = e;
    io_out[4] = pwm_sine;
    io_out[5] = ddpm_sine;
    io_out[6] = sd_sine;
    io_out[7] = e_sine;
end

endmodule
