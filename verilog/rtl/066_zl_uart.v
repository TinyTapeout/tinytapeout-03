`default_nettype none

module zl_uart (
  input wire [7:0] io_in,
  output wire [7:0] io_out
);

	parameter	[15:0]	C_SIGNATURE = 16'hDEDA;

    wire clk = io_in[0];
    wire reset = io_in[1];
	wire rx = io_in[2];			// rx pin
	reg  tx;					// tx pin
   	assign io_out[7] = tx;

    reg [6:0] led_out;
    assign io_out[6:0] = led_out;


	wire [8:0] txbuf;
	reg [7:0] addr;					// Rectived address
	reg [7:0] obuffer;				// Output buffer	
	reg [1:0] state;				// UART state machine
	reg [3:0] cnt;					// Bit counter
	reg [1:0] uart_d;
	reg [7:0] reg1;					// Internal memory

	assign txbuf = { 1'b0, obuffer};//Output buffer with start bit
`define S_Idle   2'h0
`define S_Addr	 2'h1
`define S_RData	 2'h2
`define S_WData	 2'h3


    always @(posedge clk) begin
        // if reset, set counter to 0
        if (reset) begin
            tx <= 1;
            addr <= 8'h0;
			obuffer <= 8'h0;
			state <= `S_Idle;
			cnt <= 0;
			uart_d <= 2'b11;
			reg1 <= 0;
			led_out <= 7'b1001001;
        end else begin
			uart_d <= (uart_d<<1) | rx;
			case (state)
				`S_Idle:
				begin
					tx<=1'b1;
					if(uart_d[1] == 0)  begin //Start bit
						state<= `S_Addr;
						cnt<=4'd8;
					end
				end
				`S_Addr:
				begin
					if(cnt==4'h0) begin
						if(addr[0]) begin
							state<=`S_WData;
							cnt<=4'd9;
							obuffer<=8'hFF;
						end else begin
							state<=`S_RData;
							cnt<=4'd8;
							case (addr[7:1])
								7'd0:
									obuffer <= C_SIGNATURE[15:8];
								7'd1:
									obuffer <= C_SIGNATURE[7:0];
								7'd2:
									obuffer <= reg1;
								7'd3:
									obuffer <= {1'b0, led_out};
								7'd4:
									obuffer <= {io_in[7:3], 3'd0};
								default:;
							endcase
						end
					end else begin
						cnt<=cnt-1;
						addr<=(addr<<1)|uart_d[1];
					end
				end
				`S_WData:
				begin
					if(cnt==4'd9) begin
						if(~uart_d[1])							// Wait for start bit
							cnt<=cnt-1;
						obuffer<=obuffer - 1;
						if(obuffer == 8'd0)						// Fall to Idle if timeout accure
							state<=`S_Idle;				
					end else
						if(cnt==4'h0) begin
							state<=`S_Idle;
							case (addr[7:1])
								7'd2:
									reg1<= obuffer;
								7'd3:
									led_out <= obuffer[6:0];
								default:;
							endcase
						end else begin
							cnt<=cnt-1;
							obuffer<=(obuffer<<1)|uart_d[1];
						end
				end
				`S_RData:
				begin
					tx <= txbuf[cnt];
					if(cnt==4'h0) begin
						state<=`S_Idle;
					end else begin
						cnt<=cnt-1;
						tx <= txbuf[cnt];
					end
				end
			endcase
        end
    end

endmodule
