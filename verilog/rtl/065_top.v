`default_nettype none

`include "ALU.v"
`include "add.v"
`include "decode.v"
`include "mux.v"

module HiddenRoom_HiddenCPU
(
  input [7:0] io_in,
  output [7:0] io_out
);

  integer i;

  wire clk, rst;

  assign clk = io_in[0];
  assign rst = io_in[1];

  reg [7:0] internalRAM [8:0];

  wire [7:0] dIn0;
  wire [7:0] dIn1;

  wire [7:0] aluRes;
  wire [3:0] writeBackEnable;

  reg [7:0] pc;
  wire [7:0] pcOneInc;
  wire [7:0] pcR3Inc;

  wire [7:0] r0Buf;
  wire [7:0] r1Buf;
  wire [7:0] r2Buf;
  wire [7:0] r3Buf;

  reg [7:0] r0;
  reg [7:0] r1;
  reg [7:0] r2;
  reg [7:0] r3;

  wire carryEnable;

  reg carryFlag;

  wire cOutALU;
  wire bOutALU;

  wire [1:0] pcOverflow;

  wire carry;

  wire bcf;

  wire memWrite;
  wire memRead;

  wire toggleOut;

  reg selOut;

  fourOneMux reg0Mux(.sel(io_in[5:4]), .dIn0(r0), .dIn1(r1), .dIn2(r2), .dIn3(r3), .dOut(dIn0));
  fourOneMux reg1Mux(.sel(io_in[3:2]), .dIn0(r0), .dIn1(r1), .dIn2(r2), .dIn3(r3), .dOut(dIn1));

  or(carry, cOutALU, bOutALU);

  alu topAlu(.opcode(io_in[7:6]), .addrs(io_in[5:2]), .dIn0(dIn0), .dIn1(dIn1), .carry(cOutALU), .borrow(bOutALU), .carryEnable(carryEnable), .bcf(bcf), .memWrite(memWrite), .memRead(memRead), .toggleOut(toggleOut), .dOut(aluRes));
  twoFourDecode writeBackAddrDecoder(.sel(io_in[5:4]), .enable(writeBackEnable));

  addEight pcOneIncAdder(.dIn0(pc), .dIn1(8'b00000001), .enable(1'b1), .cOut(pcOverflow[0]), .dOut(pcOneInc));
  addEight pcR3IncAdder(.dIn0(pc), .dIn1(r3), .enable(1'b1), .cOut(pcOverflow[1]), .dOut(pcR3Inc));

  twoOneMux r0Mux(.sel(writeBackEnable[0]), .dIn0(r0), .dIn1(aluRes), .dOut(r0Buf));
  twoOneMux r1Mux(.sel(writeBackEnable[1]), .dIn0(r1), .dIn1(aluRes), .dOut(r1Buf));
  twoOneMux r2Mux(.sel(writeBackEnable[2]), .dIn0(r2), .dIn1(aluRes), .dOut(r2Buf));
  twoOneMux r3Mux(.sel(writeBackEnable[3]), .dIn0(r3), .dIn1(aluRes), .dOut(r3Buf));

  always @(posedge clk)
  begin
    r0 <= r0Buf; 
    r1 <= r1Buf; 
    r2 <= r2Buf; 
    r3 <= r3Buf; 

    pc <= pcOneInc;
    
    if(rst)
    begin
      pc <= 8'b00000000;

      carryFlag = 1'b0;

      selOut <= 1'b0;

      r0 <= 8'b00000000;
      r1 <= 8'b00000001;
      r2 <= 8'b00000010;
      r3 <= 8'b00000011;
    end 
    else
    begin
      if(carryEnable)
      begin
        carryFlag <= carry;
      end
      else if(memWrite)
      begin
        internalRAM[{carryFlag, r2}] <= r3;
      end
      else if(memRead)
      begin
        r3 <= internalRAM[{carryFlag, r2}];
      end
      else if(carryFlag & bcf)
      begin
        pc <= pcR3Inc;
      end
      else
      begin
        if(toggleOut)
        begin
          selOut <= ~selOut;
        end
      end
    end
  end 

  twoOneMux outputMux(.sel(selOut), .dIn0(r3), .dIn1(pc), .dOut(io_out));

endmodule
