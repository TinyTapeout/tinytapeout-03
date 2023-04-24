
/*
tiny logic analyzer
*/

module yubex_tiny_logic_analyzer (
        input  [7:0] io_in,
        output [7:0] io_out
    );
  
    wire clk;
    localparam clk_frequency = 14'd12500; // frequency in Hz
    wire rst;
    wire data_in;
  
    assign clk     = io_in[0];
    assign rst     = io_in[1];
    assign data_in = io_in[2];

    localparam sample_sr_size = 8;
    reg [sample_sr_size-1:0] sample_sr;

    reg high_detected;
    reg low_detected;
    reg rising_edge_detected;
    reg falling_edge_detected;

    localparam edge_delay_cnt_size = 12;
    localparam cnt_max_val = 2500;
    reg [edge_delay_cnt_size-1:0] rising_edge_delay_cnt;
    reg rising_edge_delay_cnt_en;
    reg [edge_delay_cnt_size-1:0] falling_edge_delay_cnt;
    reg falling_edge_delay_cnt_en;
 
  // store samples in shift register and avoid metastability
  always @(posedge clk or posedge rst)
  begin
	if(rst) begin
       		sample_sr <= {sample_sr_size{1'b0}};
    	    end 
    else begin
        sample_sr <= {sample_sr[sample_sr_size-2:0],data_in};
    end
  end 

  // analyze samples
  always @(posedge clk or posedge rst)
  begin
	if(rst) begin
                high_detected         <= 1'b0;
                low_detected          <= 1'b0;
                rising_edge_detected  <= 1'b0;
                falling_edge_detected <= 1'b0;
    	    end 
    else begin
        high_detected         <= 1'b0;
        low_detected          <= 1'b0;
        rising_edge_detected  <= 1'b0;
        falling_edge_detected <= 1'b0;
        case(sample_sr[sample_sr_size-1:sample_sr_size-2])
              2'b00: 
                  begin
                    low_detected <= 1'b1;
                  end
              2'b11: 
                  begin
                    high_detected <= 1'b1;
                  end
              2'b01: 
                  begin
	            rising_edge_detected <= 1'b1;
                  end
              2'b10: 
                  begin
	            falling_edge_detected <= 1'b1;
                  end
              default:;
          endcase
    end
  end

  // add delay for edge events, to make it visible on the 7 segment display
  always @(posedge clk or posedge rst)
  begin
	if(rst) begin
        	rising_edge_delay_cnt     <= {edge_delay_cnt_size{1'b0}};
                rising_edge_delay_cnt_en  <= 1'b0;
        	falling_edge_delay_cnt    <= {edge_delay_cnt_size{1'b0}};
                falling_edge_delay_cnt_en <= 1'b0;
    	    end 
    else begin
        if (rising_edge_delay_cnt_en) begin
            if (rising_edge_delay_cnt >= cnt_max_val) begin
                rising_edge_delay_cnt    <= {edge_delay_cnt_size{1'b0}};
                rising_edge_delay_cnt_en <= 1'b0;
            end
            else begin
                rising_edge_delay_cnt <= rising_edge_delay_cnt + 1;
            end 
        end
        if (rising_edge_detected) begin
            rising_edge_delay_cnt_en <= 1'b1;
            rising_edge_delay_cnt    <= {edge_delay_cnt_size{1'b0}};
        end

        if (falling_edge_delay_cnt_en) begin
            if (falling_edge_delay_cnt >= cnt_max_val) begin
                falling_edge_delay_cnt    <= {edge_delay_cnt_size{1'b0}};
                falling_edge_delay_cnt_en <= 1'b0;
            end
            else begin
                falling_edge_delay_cnt <= falling_edge_delay_cnt + 1;
            end 
        end
        if (falling_edge_detected) begin
            falling_edge_delay_cnt_en <= 1'b1;
            falling_edge_delay_cnt    <= {edge_delay_cnt_size{1'b0}};
        end
    end
  end 

// assign 7 segment outputs
assign io_out[0]   = (high_detected == 1'b1) ? 1'b1 : 1'b0;
assign io_out[2:1] = (falling_edge_delay_cnt_en == 1'b1) ? 2'b11 : 2'b00;
assign io_out[3]   = (low_detected == 1'b1) ? 1'b1 : 1'b0;
assign io_out[5:4] = (rising_edge_delay_cnt_en == 1'b1) ? 2'b11 : 2'b00;
assign io_out[6]   = 1'b0;
assign io_out[7]   = (rst == 1'b1) ? 1'b1 : 1'b0;


endmodule
