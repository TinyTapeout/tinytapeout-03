module digit_bit(input rst, input srclk, input [3:0] digit, input [2:0] cnt, output reg mbit);
    localparam [7:0] DIGIT_0 = 8'b11111100;
    localparam [7:0] DIGIT_1 = 8'b01100000;
    localparam [7:0] DIGIT_2 = 8'b11011010;
    localparam [7:0] DIGIT_3 = 8'b11110010;
    localparam [7:0] DIGIT_4 = 8'b01100110;
    localparam [7:0] DIGIT_5 = 8'b10110110;
    localparam [7:0] DIGIT_6 = 8'b10111110;
    localparam [7:0] DIGIT_7 = 8'b11100000;
    localparam [7:0] DIGIT_8 = 8'b11111110;
    localparam [7:0] DIGIT_9 = 8'b11110110;
    localparam [7:0] DIGIT_B = 8'b00000000;
    localparam DIGITS = {
        DIGIT_B, DIGIT_9, DIGIT_8, DIGIT_7, DIGIT_6, DIGIT_5,
        DIGIT_4, DIGIT_3, DIGIT_2, DIGIT_1, DIGIT_0
    };
    always @(*) begin
        if (rst) begin
            mbit = 0;
        end else begin
            mbit = DIGITS[cnt + 8 * digit];
        end
        //$write("rst=%b srclk=%b digit=%d cnt=%d mbit=%b d=%b\n", rst, srclk, digit, cnt, mbit, DIGITS[cnt + 8 * digit]);
    end
endmodule


module nikor_clock (input [7:0] io_in, output [7:0] io_out);
    localparam minutes = 32; // 32 cycles is needed to output to display
    wire clk, rst, min, hour;
    assign {hour, min, rst, clk} = io_in[3:0];

    reg [4:0] nc_out;

    reg srclk;//data clock
    reg rclk; //flip display
    wire ser;  //data

    reg [3:0] digit;
    assign io_out = {nc_out, ser, rclk, srclk};

    reg [31:0] cnt;
    reg add_min;
    reg add_hour;

    always @(posedge hour) begin
        add_hour <= 1;
    end

    always @(posedge min) begin
        add_min <= 1;
    end

    always @(posedge clk) begin
        if (rst) begin
            digit <= 0;
            cnt <= 0;
            nc_out <= 0;
            srclk <= 0;
            rclk <= 0;
            add_min <= 0;
            add_hour <= 0;
        end else begin
            rclk <= srclk && (cnt % 32)== 31 ? 1 : 0 ;
            case ((cnt/8) % 4)
                0: digit <= cnt/minutes / 10 / 6 / 10;
                1: digit <= cnt/minutes / 10 / 6 % 10;
                2: digit <= cnt/minutes / 10 % 6;
                3: digit <= cnt/minutes % 10;
            endcase
            if (srclk) begin
                cnt <= (cnt + 1 + (minutes * 60) * add_hour + minutes * add_min) % (minutes * 60 * 24);
                add_hour = 0;
                add_min = 0;
            end
            srclk <= srclk == 0;
        end
    end
    digit_bit db(.rst(rst), .srclk(srclk), .digit(digit), .cnt(cnt[2:0]), .mbit(ser));
endmodule
