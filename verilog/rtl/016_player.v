module shadow1229_player(
  input [7:0] io_in,
  output [7:0] io_out
);

  wire clk = io_in[0];
  wire reset = io_in[1];
  wire [4:0] phrase_id_wire;
  wire [31:0] phrase_wire; //freq(4)*len_phrase(8)
  wire [31:0] phrase_wire_2; //freq(4)*len_phrase(8)
  wire [7:0] freq_wire;
  wire [7:0] freq_wire_2;
  wire [7:0] length_wire; 
  wire [7:0] length_wire_2; 
  wire [2:0] n_wire;
  wire [2:0] n_wire_2;   
  reg length_note;
  reg [7:0] length_entry; 
  reg [2:0] n_note;   
  reg [7:0] phrase_address; //8-bit  
  reg [4:0] phrase_id_total; // for triplet note detection
  reg [3:0] phrase_id;
  reg phrase_type;
  reg [31:0] phrase; //freq(4)*len_phrase(8)
  reg [3:0] freq_address; //4-bit
  reg [7:0] freq; 
  reg speaker;
  reg is_highkey;
  reg [1:0] counter_cycle;
  reg [2:0] counter_note; //3-bit
  reg [11:0] ticks;
  reg [7:0] counter;
  assign io_out[0] = speaker;
  assign io_out[1] = ~speaker;

  // simple ripple clock divider
  parameter HIGHKEY_COUNT=129;
  parameter MAX_COUNT=255;
  always @(posedge clk) begin
    if (reset) begin
      phrase_address <=0;
      phrase_id_total <= 0; 
      phrase_id <=0;
      phrase_type <=0; 
      phrase <=0;
      freq_address <=0;
      freq <=0;
      speaker <=0;
      is_highkey <=0;
      counter_cycle <=0;
      counter_note <=0;
      ticks <=0;
      counter <=0;
      length_entry <=0;
      length_note <=0;
      n_note <=0;
    end
    else begin
      counter_cycle <= counter_cycle + 1;
      case(counter_cycle)
        1: begin //get is_highkey, phrase_id 
            if (phrase_address<HIGHKEY_COUNT) begin
                is_highkey <= 0;
            end else begin
                is_highkey <= 1'b1;
            end
            phrase_id_total <= phrase_id_wire[4:0];
            phrase_id <= phrase_id_wire[3:0];
            phrase_type <= phrase_id_wire[4]; //16~18
            //phrase_id <= 4'b1000; //arbitary values
        end
        
        2: begin //get phrase and freq_address
          if (ticks==12'b000000000000) begin
            if (n_note==3'b000) begin 
                    // update n-th note
                    counter_note <= 3'b111;
                    //n_note <= n_wire;
                    // reset frequency_address
                    if (phrase_type==1'b0) begin
                        phrase <= phrase_wire[31:0];
                        freq_address <= phrase_wire[31:28];
                        length_entry <= length_wire[7:0];
                        length_note <= length_wire[7];
                        n_note <= n_wire;
                    end else begin
                        phrase <= phrase_wire_2[31:0];
                        freq_address <= phrase_wire_2[31:28];
                        length_entry <= length_wire_2[7:0];
                        length_note <= length_wire_2[7];
                        n_note <= n_wire_2;
                    end
                    //phrase <=32'h134579AC; //arbitary values
                    //freq_address <=4'h1; //arbitary values
                end else begin
                    counter_note <= counter_note - 1'b1; 
                    n_note <= n_note - 1'b1;
                    //https://verificationguide.com/systemverilog/systemverilog-array-slice/
                    freq_address <= phrase[4*(counter_note -1)+: 4]; //because counter note didn't updated now. cheap trick. test todo 230313 
                    length_note <= length_entry[1*(counter_note -1)+: 1];
                    //phrase = 0x01234567 -> counter_note:0->7 : we will get 7,6,5,4,3,2,1,0
                    //but since counter_note always count down instead of count up, we will get 0,1,2,3,4,5,6,7
                end
            end
        end
        
        3: begin //get frequency
            if (ticks==12'b000000000000) begin
              //138bpm, 8th note: 217.39ms 3000Hz (=12000Hz/4): 0.33s ms ->  652ticks (~12000Hz)
              //138bpm, 16th note: 326 ticks
              // update per-note delay
              if (phrase_type==1'b0) begin
                // reset tone generator
                counter <= freq_wire; 
                freq <= freq_wire;
                if (length_note == 0) begin
                    ticks[11:0] <= 12'b001010001100; //652  8th note
                end else begin
                    ticks[11:0] <= 12'b010100011000; //1304 4th note
                end
              end else begin
                // reset tone generator
                counter <= freq_wire_2; 
                freq <= freq_wire_2;
                if (phrase_id_total == 5'b10111) begin
                    ticks[11:0] <= 12'b000110110011; //435 triplet
                end else begin
                    if (length_note == 0) begin
                        ticks[11:0] <= 12'b000101000110; //326  16th note
                    end else begin
                        ticks[11:0] <= 12'b001010001100; //652  8th note
                    end
                end
              end
                          
            end else begin
                ticks <= ticks - 1'b1;
            end
    
        end
        
        default: begin
          if (n_note==3'b0) begin //phrase should be backward, since counter will be decrease over time, but verilog data indexed backwar
             if (ticks==12'b000000000000) begin
                if (phrase_address<MAX_COUNT) begin
                    phrase_address <= phrase_address + 1'b1;
                end else begin
                    phrase_address <= 0;
                end
             end   

            end
        end        
      endcase  
      // tone frequency divider
      if (ticks==12'b000000000000) begin
          speaker <= 1'b0; //1111: continue note TODO 
      end else begin
        if (counter>0) begin
              counter <= counter - 1'b1;
              speaker <= counter >= (freq/2); 
        end else begin
              counter <= freq;
              speaker <= 1'b0; 
        end
      end
    end
  end
    phrase_id_db phrase_id_db(.address(phrase_address), .db_entry(phrase_id_wire)); //freq_address(4) * len_phrase(8)
    phrase_db phrase_db(.address(phrase_id), .db_entry(phrase_wire), .length_entry(length_wire), .n_note(n_wire)); //freq_address(4) * len_phrase(8)
    phrase_db_2 phrase_db_2(.address(phrase_id), .db_entry(phrase_wire_2), .length_entry(length_wire_2), .n_note(n_wire_2)); // db for fast notes (16th and 8th) 
    freq_db freq_db(.address(freq_address), .is_highkey(is_highkey), .db_entry(freq_wire));
    freq_db_2 freq_db_2(.address(freq_address), .db_entry(freq_wire_2));
endmodule

