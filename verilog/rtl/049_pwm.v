module pwm (
    input [7:0] io_in,			// Input port for clock and button signals
    output [7:0] io_out			// Output port for LED signals
    );

    wire clk = io_in[0];		//Input Clock 12500Hz
    wire btn_incrPWM = io_in[1];	//Increase PWM value
    wire btn_decrPWM = io_in[2];	//Decrease PWM value
    reg inled;                          // Register for LED signal indicating maximum duty cycle
    reg deled;                          // Register for LED signal indicating minimum duty cycle
    reg led;                            // Register for PWM signal
    reg clock_1hz;                      // Register for 1Hz clock signal
    assign io_out[0] = inled;           // Output port for inled signal
    assign io_out[1] = deled;           // Output port for deled signal
    assign io_out[2] = led;             // Output port for led signal
    assign io_out[3] = clock_1hz;       // Output port for 1Hz clock signal

	
  reg [7:0] duty_cycle = 8'h3f; // initial duty cycle is 50% is the half of count maximum value.
  reg [7:0] count = 8'h00; 	// Initialize count for PWM period.
  reg [11:0] bucount = 12'h000; // Initialize count for increase button PWM debounce funstion.
  reg [11:0] bdcount = 12'h000; // Initialize count for decrease button PWM debounce funstion.
  reg debounced_btn_incrPWM;	// Increase PWM  debounce  register.
  reg debounced_btn_decrPWM;	// Decrease PWM debounce  register.

  reg[27:0] counter=28'd0;
  parameter DIVISOR = 28'd12500;//Divisor to produce 1Hz clock from 12.5Khz input clock
	
always @(posedge clk)
begin
counter <= counter + 28'd1;
	 if(counter>=(DIVISOR-1))
		counter <= 28'd0;
		clock_1hz <= (counter<DIVISOR/2)?1'b1:1'b0;
	 end
	
always @(posedge clk) begin
  if (debounced_btn_incrPWM && (duty_cycle < 8'h7F)) begin
      duty_cycle <= duty_cycle + 1; // increment duty cycle by 1 when button is pressed
  end
  else if (debounced_btn_decrPWM && (duty_cycle > 8'h00)) begin
      duty_cycle <= duty_cycle - 1; // decrement duty cycle by 1 when button down is pressed
  end

count <= count + 1; //increment count of PWM period

if (duty_cycle == 8'h00)begin
	deled <= 1'b1;
end
else begin
	deled <= 1'b0;
end
if (duty_cycle == 8'h7f)begin
	inled <= 1'b1;
end
else begin
    	inled <= 1'b0;
end
	 
if (count < duty_cycle) begin //PWM signal generation
	led <= 1'b1;
end
else begin
        led <= 1'b0;
end

if (count == 8'h7F) begin	  //In this point the PWM period can be set, this is the maximum  PWM value
	count <= 8'h00; 			  // reset count
end
end

always @(posedge clk) begin
if (btn_incrPWM == 1'b1) begin
      bucount <= bucount + 1;	  // increment count if button is pressed
end
else begin
      bucount <= 8'h00;      	  // reset count if button is not pressed
end

// set debounced button Increase 
    if (bucount == 12'h1FF) begin
      debounced_btn_incrPWM <= 1'b1; //Button is debounced
    end
    else begin
      debounced_btn_incrPWM <= 1'b0;
    end
end
  
always @(posedge clk) begin
if (btn_decrPWM == 1'b1) begin
      bdcount <= bdcount + 1;		//increment count if button is pressed
end
else begin
      bdcount <= 8'h00;				//reset count if button is not pressed
end

// set debounced button Decrease 
    if (bdcount == 12'h1FF) begin
      debounced_btn_decrPWM <= 1'b1;//Button is debounced
    end
    else begin
      debounced_btn_decrPWM<= 1'b0;
    end
end
    
endmodule
