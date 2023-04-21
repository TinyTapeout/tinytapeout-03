`timescale 1ns/1ps
`default_nettype none
//`define SIMULATION
`define SYNTHESIS
module my_design(
    input [7:0] io_in,
    output [7:0] io_out
  );


  wire clk = io_in[4];
  wire reset_n = io_in[5];
  wire [3:0] my_data = io_in[3:0];
  wire valid = io_in[6];
  wire toggle = io_in[7];

  reg [15:0] mult_in_reg;
  wire [15:0] mult_res;


  wire valid_db;

  debouncer my_deb(
              .clk(clk),
              .reset_n(reset_n),
              .valid(valid),
              .valid_db(valid_db)
            );


  wire valid_pulse;

  edge_detector my_edge(
                  .clk(clk),
                  .reset_n(reset_n),
                  .valid_db(valid_db),
                  .valid_pulse(valid_pulse)
                );

  wire [7:0] mult_first_byte = mult_in_reg[7:0];
  wire [7:0] mult_second_byte = mult_in_reg[15:8];

  initial
  begin
    mult_in_reg = 'h0;
  end

  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
    begin
      mult_in_reg <= 'h0;
    end
    else
    begin
      if (valid_pulse)
      begin
        mult_in_reg <= {mult_in_reg[11:0], my_data};
      end
    end
  end


  assign mult_res = mult_first_byte * mult_second_byte;


  assign io_out = (toggle==0)? mult_res[7:0] : mult_res[15:8];

endmodule

module edge_detector ( input valid_db,
                         input clk,
                         input reset_n,
                         output valid_pulse);

  reg   valid_dly;

  initial
  begin
    valid_dly = 0;
  end

  always @ (posedge clk or negedge reset_n)
  begin
    if (!reset_n)
    begin
      valid_dly <= 0;
    end

    else
    begin
      valid_dly <= valid_db;
    end


  end

  assign valid_pulse = valid_db & ~valid_dly;
endmodule

module debouncer(input valid,clk,reset_n,output valid_db);
`ifdef SIMULATION

  assign valid_db = valid;

`endif

`ifdef SYNTHESIS



  wire slow_clk;
  reg valid1;
  wire Q1,Q2,Q2_bar,Q0;


  initial
  begin
    valid1 = 0;
  end


  //clock_div u1(clk, reset,slow_clk);
  clock_divider devo(clk, reset_n,slow_clk);
  my_dff d0(slow_clk, valid, reset_n,Q0 );

  my_dff d1(slow_clk, Q0,reset_n,Q1 );
  my_dff d2(slow_clk, Q1,reset_n,Q2 );
  assign Q2_bar = ~Q2;
  always @ (posedge clk or negedge reset_n)
  begin
    if (!reset_n)
    begin
      valid1 <= 0;
    end
    else
    begin
      valid1 <= Q1 & Q2_bar;
    end
  end

  assign valid_db = valid1;
`endif

endmodule

// Slow clock for debouncing
module clock_div(input Clk_1000Hz, reset_n,output  slow_clk

                  );
  reg [9:0]counter=0;
  reg r_slow_clk;

  initial
  begin
    counter='h0;
    r_slow_clk=0;
  end

  always @(posedge Clk_1000Hz or negedge reset_n)
  begin
    if (!reset_n)
    begin
      counter<='h0;
      r_slow_clk<=0;
    end
    else
    begin
      counter <= (counter>=500)?0:counter+1;
      r_slow_clk <= (counter < 500)?1'b0:1'b1;
    end

  end
  assign slow_clk = r_slow_clk;
endmodule

// new clock divider

module clock_divider (
    input clk_in,
    input reset_n,
    output  clk_out
  );


  parameter DIV_VAL = 7;
  reg [DIV_VAL:0] q_reg;
  reg[7:0] k;

  initial
  begin
    for (k=0; k<=DIV_VAL; k=k+1)
    begin
      q_reg[k] = 0;
    end
  end

  genvar i;






  always @(posedge clk_in or negedge reset_n)
  begin
    if (!reset_n) begin
      q_reg[0] <= 'h0;
    end else begin
      q_reg[0] <= ~q_reg[0];
    end
    
  end

  generate
    for (i=0; i<DIV_VAL; i=i+1)
    begin
      always @(posedge q_reg[i] or negedge reset_n)
      begin
        if (!reset_n) begin
          q_reg[i+1] <= 'h0;
        end else begin
          q_reg[i+1] <= ~q_reg[i+1];
        end
        
      end
    end
  endgenerate





  assign clk_out = q_reg[DIV_VAL];

endmodule

// D-flip-flop for debouncing module
module my_dff(input DFF_CLOCK, D, reset_n,output  Q);

  reg my_reg;

  initial
  begin
    my_reg = 'h0;
  end

  always @ (posedge DFF_CLOCK or negedge reset_n)
  begin
    if (!reset_n)
    begin
      my_reg <= 'h0;
    end
    else
    begin
      my_reg <= D;
    end

  end

  assign Q = my_reg;

endmodule
