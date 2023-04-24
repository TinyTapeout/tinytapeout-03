module clemensnasenberg_top  #(
    parameter WIDTH=24,
    parameter CTRL_WIDTH=23
) (  
    input [7:0] io_in,
    output [7:0] io_out
);
    wire sck = io_in[0];
    wire reset = io_in[1];
    wire ws = io_in[2];
    wire sd_ch1 = io_in[3];
    wire sd_ch2 = io_in[4];
    wire [1:0] channel_sel = io_in[6:5];
    wire sd_out;
    assign io_out[7:0] = {5'b0, sd_out, wsd, wsp}; 

    reg wsd;
    reg wsd_reg;
    wire wsp;

    reg [WIDTH:0] data_left_add;
    reg [WIDTH:0] data_right_add;
    reg [WIDTH-1:0] data_ch1;
    reg [WIDTH-1:0] data_ch2;
    reg [CTRL_WIDTH-1:0] control_reg;
    integer i;

    assign wsp = wsd ^ wsd_reg;

    //I2S receiver of 2 Channels (2xLR)
    always @ (posedge sck) begin
        if (reset == 1'b1) begin
            wsd <= 1'b0;
            wsd <= 1'b0;
            data_ch1 <= 'b0;
            data_ch2 <= 'b0;
            control_reg <= 'b0;
        end else begin
            if (wsp == 1'b1) begin
                control_reg[CTRL_WIDTH-2:0] <= 'b0;
                control_reg[CTRL_WIDTH-1] <= 1'b1;
                data_ch1[WIDTH-2:0] <= 'b0;
                data_ch1[WIDTH-1] <= sd_ch1;
                data_ch2[WIDTH-2:0] <= 'b0;
                data_ch2[WIDTH-1] <= sd_ch2;
            end else begin
                control_reg[CTRL_WIDTH-1] <= 1'b0;
                for (i = 1; i < CTRL_WIDTH; i = i+1) begin
                    control_reg[CTRL_WIDTH-1-i] <= control_reg[CTRL_WIDTH-i];
                end
                for (i = 0; i <= CTRL_WIDTH; i = i+1) begin
                    if (control_reg[CTRL_WIDTH-i] == 1'b1) begin        
                        data_ch1[WIDTH-1-i] <= sd_ch1;
                        data_ch2[WIDTH-1-i] <= sd_ch2;
                    end
                end
            end
    
            wsd <= ws;
            wsd_reg <= wsd;
        end
    end

    //Add the received data according to channel_sel
    always @ (posedge sck) begin
        if (reset == 1'b1) begin
            data_right_add <= 'b0;
            data_left_add <= 'b0;
        end else begin
            if (wsd & wsp) begin
                case (channel_sel) 
                    2'b00 : begin 
                        data_left_add <= 33'b0;
                    end
                    2'b01 : begin 
                        data_left_add <= data_ch1;
                    end
                    2'b10 : begin 
                        data_left_add <= data_ch2;
                    end
                    2'b11 : begin 
                        data_left_add <= data_ch2 + data_ch1;
                    end
                endcase
            end 
            if (!wsd & wsp) begin
                case (channel_sel) 
                    2'b00 : begin 
                        data_right_add <= 33'b0;
                    end
                    2'b01 : begin 
                        data_right_add <= data_ch1;
                    end
                    2'b10 : begin 
                        data_right_add <= data_ch2;
                    end
                    2'b11 : begin 
                        data_right_add <= data_ch2 + data_ch1;
                    end
                endcase
            end
        end
    end

    //I2S Transmitter of manipulated data

    reg [WIDTH-1:0] data_shift;
    wire [WIDTH:0] add_left_channel;
    wire [WIDTH:0] add_right_channel;

    assign sd_out = data_shift[WIDTH-1];

    always @ (negedge sck) begin
        if (reset == 1'b1) begin
            data_shift <= 'b0;
        end else begin
            if (wsp == 1'b1) begin
                if (wsd == 1'b1) begin
                    data_shift <= data_right_add >> 1;
                end else begin
                    data_shift <= data_left_add >> 1;
                end
            end else begin
                data_shift <= {data_shift[WIDTH-2:0], 1'b0};
            end
        end
    end
endmodule
