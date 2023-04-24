`default_nettype none

module greenstyle_lfsr (
  input [7:0] io_in,
  output [7:0] io_out
);
    /**
    * PIN LAYOUT
    * 0 clk
    * 1 reset (syncron)
    * 2 mode[0] 00 normal shift mode,  01 set register mode, 
    * 3 mode[1] 10 set mode registers, 11 unused
    * 4 data_in [0] is used for both filling register and xor mask state 
    * 5 data_in [1] needs 2 cycles to fill all 8 bits
    * 6 data_in [2] first cyle is lower 4 bits, 2nd upper 4 bits
    * 7 data_in [3]
    * low and upper 4 bit toggle doesnt differentiate between registers and xor mode
    */
    wire clk = io_in[0];
    wire reset = io_in[1];
    wire [1:0] mode_in = io_in[3:2];
    wire [3:0] data_in = io_in[7:4];
    wire lsb = registers[0]; 
    assign io_out = registers;

    // registers for register state, xor mask 
    // and toggle for lower and higher 4bit set modes
    reg [7:0] registers;
    reg [7:0] xors;
    reg low_high;

    always @(posedge clk) begin
        // if reset, set counter to 0
        if (reset) begin
            registers <= 0;
            xors <= 0;
            low_high <= 0;
        end else begin
            case (mode_in)
                0: begin // normal shifting mode
                    if (lsb) begin
                        registers <= {lsb, registers[7:1] ^ xors[6:0]};
                    end else begin
                        registers <= {lsb, registers[7:1]};
                    end
                    low_high <= 0;
                end
                1: begin // set register states
                    if (low_high) begin 
                        registers[7:4] <= data_in;
                        low_high <= 1'b0;
                    end else begin 
                        registers[3:0] <= data_in; 
                        low_high <= 1'b1;
                    end
                end
                2: begin // set xor taps
                    if (low_high) begin
                        xors[7:4] <= data_in;
                        low_high <= 1'b0;
                    end else begin
                        xors[3:0] <= data_in; 
                        low_high <= 1'b1;
                    end
                end
                3: begin // could be used in the future
                    
                end
                default:; // should not happen
            endcase
        end
    end
endmodule