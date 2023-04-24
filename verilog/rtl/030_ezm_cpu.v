
module guianmonezm_ezmcpu (io_in ,io_out);
input [7:0] io_in;
output [7:0] io_out;

ezm_cpu cpu_top(
     .clk(io_in[0]),
     .rst(io_in[1]),
     .in_i(io_in[7:2]),
     .out_o(io_out[7:0])
);
endmodule

module ezm_cpu(in_i,clk,rst,out_o);
input wire[5:0] in_i;
input wire clk,rst;
output reg [7:0]out_o;
reg [7:0] c=0,pc=0;
reg [7:0] bank[7:0];
reg reset,state=0;
reg [2:0] instruction = 2'b00;
reg [5:0] instruction_buffer;
integer i; 


always @(rst)begin 
     if (rst) reset<=1;
     else 
     reset <=0;
end

always @(posedge clk)begin
     if (reset)begin
         state<=0;
     end 
     else begin
          state <= ~state;
          end      
end

always @(state)begin 
     if (reset)begin 
     for (i=0;i<8;i=i+1)begin
     bank[i] = 8'b0;
     end  
     c = 8'b0;
     pc= 8'b0;

     end 
     else begin

     case (state)
     0:begin
     
     instruction_buffer = in_i; 

     casex (instruction_buffer) 
          6'b000000:  instruction=3'b000;  //nop this is important 
          
          6'b1?????: 
          instruction=3'b001;  //load         
          
          6'b011???:
          instruction=3'b010; //conditional branch
          
          6'b001???:
          instruction=3'b011;//stra

          6'b010???:
          instruction=3'b100;//add
          
          6'b000001: 
          instruction=3'b101; //not
          
          default:instruction=3'b000;  //nop 
     endcase
     out_o= c;
     end 

     1: begin 
 
     case (instruction) 
          3'b001:begin 
          c = {{3{instruction_buffer[4]}},instruction_buffer[4:0]}; //load
          pc=pc+8'd1;
          end
          3'b010:begin 
          if (bank[instruction_buffer[2:0]]>c) begin // value in register greater than accumulator
          pc = pc - c;
          end 
          end //conditional branch
          3'b011: begin 
            bank[instruction_buffer[2:0]] = c;
            pc=pc+8'd1;
          end  
          3'b100: begin 
            c = (bank[instruction_buffer[2:0]] + c);
            pc=pc+8'd1;
          end//add
          3'b101:begin
            c = ~c; pc=pc+8'd1; end //negate 
          default:pc =pc+ 8'd1;
     endcase
     out_o= pc; 
     end
endcase
end
end

endmodule
