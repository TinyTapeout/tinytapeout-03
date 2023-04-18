`default_nettype none

module tinysat (
  input [7:0] io_in,
  output [7:0] io_out
);
  localparam NUM_BITS = 4;
  localparam LOG2_NUM_CLAUSES = 4;
  localparam MAX_COUNT = (1 << NUM_BITS)-1; 
  localparam NUM_CLAUSES = 1 << LOG2_NUM_CLAUSES;

  wire clk = io_in[0];
  wire reset = io_in[1];
  wire run = io_in[2];
  wire load = io_in[3];
  wire [3:0] data = io_in[7:4];
  wire clause;
  wire [NUM_BITS-1:0] x;
  wire [LOG2_NUM_CLAUSES-1:0] idx;
  wire [1:0] idx2;
  wire signed [3:0] lit1;
  wire signed [3:0] lit2;
  wire c1, c2;

  assign io_out[NUM_BITS-1:0] = x_delayed;
  assign io_out[NUM_BITS] = sol;
  assign io_out[NUM_BITS+1] = done;
  assign io_out[7:6] = 2'b0;

  assign x = bits[LOG2_NUM_CLAUSES+NUM_BITS-1:LOG2_NUM_CLAUSES];
  assign idx = load ? loadreg[LOG2_NUM_CLAUSES-1:0] : bits[LOG2_NUM_CLAUSES-1:0];
  assign idx2 = loadreg[LOG2_NUM_CLAUSES+1:LOG2_NUM_CLAUSES];

  reg [LOG2_NUM_CLAUSES+NUM_BITS-1:0] bits;
  reg sol;
  reg done;
  reg [NUM_BITS-1:0] x_delayed;
  
  reg [LOG2_NUM_CLAUSES+1:0]loadreg;

  mymux mymux1(
    .lit(lit1),
    .x(x),
    .c(c1)
  );
  mymux mymux2(
    .lit(lit2),
    .x(x),
    .c(c2)
  );
  assign clause = c1 || c2;

  RAM_async ram1(
    .clk(clk),
    .dout(lit1),
    .din(data),
    .addr(idx),
    .we(load && idx2 == 1)
  );

  RAM_async ram2(
    .clk(clk),
    .dout(lit2),
    .din(data),
    .addr(idx),
    .we(load && idx2 == 2)
  );

  //x_delayed
  always @(posedge clk) begin
    if (reset) begin
      x_delayed <= 0;
    end else begin
      if (!sol) 
        x_delayed <= x;
      else 
        x_delayed <= x_delayed;
    end
  end

  //loadreg
  always @(posedge clk) begin
    if (reset) begin
      loadreg <= 0;
    end else begin
      if (load) 
        loadreg <= loadreg + 1'b1;
      else 
        loadreg <= loadreg;
    end
  end

  //counter
  always @(posedge clk) begin
    if (reset) begin
      bits <= 0;
    end else begin
      if (run && !done) 
        bits <= bits + 1'b1;
      else 
        bits <= bits;
    end
  end

  //done signal
  always @(posedge clk) begin
    if (reset) begin
      done <= 0;
    end else begin
      done <= done || (run && sol && clause && (idx == NUM_CLAUSES-1)) || (run && (x == MAX_COUNT) && (idx == NUM_CLAUSES-1));
    end
  end

  //sol signal
  always @(posedge clk) begin
    if (reset) begin
      sol <= 1;
    end else begin 
        if (!done)
          if (idx == 0)
            sol <= clause;
          else 
            sol <= sol && clause;
        else 
          sol <= sol;
    end
  end

endmodule