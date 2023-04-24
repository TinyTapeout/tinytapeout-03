module guess_game(
    input [7:0] io_in, 
    output [7:0] io_out
);

wire clk = io_in[0]; 
wire rst = io_in[1]; 
wire [5:0] guess = io_in[7:2]; 
reg [5:0] result; 
assign io_out[5:0] = result; 

reg [5:0] secret_num; 
reg [2:0] guess_count; 

// initialize variables
initial begin
    secret_num = 6'b000000; 
    guess_count = 0;
end

// reset the game
always @(negedge rst) begin
    secret_num <= $random;
    guess_count <= 0;
    result <= 6'b000000;
end

// check guess and output result
    always @(posedge clk) begin
    if (guess_count < 3) begin
        if (guess == secret_num) begin
            result <= 6'b111111;
            guess_count <= 0;
            secret_num <= $random;
        end else begin
            guess_count <= guess_count + 1;
            result <= {guess[5] == secret_num[5], guess[4] == secret_num[4], guess[3] == secret_num[3], guess[2] == secret_num[2], guess[1] == secret_num[1], guess[0] == secret_num[0]};
        end
    end else begin
        result <= 6'b000000;
        guess_count <= 0;
        secret_num <= $random;
    end
end

endmodule
