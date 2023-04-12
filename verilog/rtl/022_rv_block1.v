`default_nettype none

/*
 
*** Evade the scan chain. ***
 
@copyright Emilian Miron 2023, use freely for any purpose just attribute to my name in comment.
 
// Idea1: Clock fast. flop in flop out creates a clock edge.
// Shifting data in and out of the design (SCE false) for one cycle toggles the clock
// at a rate of SCK=50Mhz instead of SCK=50Mhz/250 designs/8 bits.
out0 = !in0;

// Idea2: Shift in bits fast skipping the front designs.
// Shift rate is O(SCK) instead of O(SCK/designs).
//
// Use the clock edge and carefully timed shift of in0 => in1 to relay information.
// For simplicity, assuming past design out7 is always 0.
//
// The critical point is when capturing out0 into the chain is a 1:
// - scan_reg0 = 1, scan_reg1 = 0, previously latched in0 = design_clk = 0.
// - in1 was also 0.
//
// We have two options to relay a 0 or a 1 bit:
// 0. Latch to design directly. in0 flips to 1 and we have a clock edge with in1 at 0.
// 1. Step A. Scan forward (SCE, SCKL cycle) in0 => in1.
//    Step B. Then latch to design. The design sees in1 = 1 and in0 stays 0.
//    Step C. Latch in from design to scan chain once, latch from scan chain to design back.
//            in0 will toggle to 1 creating a clock edge while in1 is 1.
// After 0 or 1, we latch in latch out again to get clock back to 0 in the design.
// 
// To keep the in1 at 1 and the clock edge, use something like an SR flip-flop (S on in1,
// R on in0) and some ways to evade hold issues by adding buffers.
//
// Idea3:
// There are two phase clocked versions of this that are safer to implement without
// regards to hold issues given past issues with hold and non-guaranteed delays between
// in0 and others.
//
// Idea4:
// By getting the bit from the past design's bit 8, we can also have designs next to
// each other talk forward at a fast speed.
reg dff1, dff2;

// Keeps in1 active during the second
assign out1 = (!in0 & in1);  // maybe add some buffer to prevent hold issues.

always @(posedge in0) begin
   dff1 <= in1;
   dff2 <= dff1;
end
 
*/


module diferential_rvb1 (
  input [7:0] io_in,
  output [7:0] io_out
);

   wire        clk = io_in[0];
   wire        reset = io_in[1];

   assign io_out = io_in;
endmodule
