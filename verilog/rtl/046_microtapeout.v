`default_nettype none

module htfab_microtapeout (
    input [7:0] io_in,
    output [7:0] io_out
);

wire clk = io_in[0];
wire page_mode = io_in[1];
wire [5:0] switches = io_in[7:2];

reg [5:0] cm_page;
reg [5:0] cm_in;

cell_mux cm_inst (
    .page(cm_page),
    .in(cm_in),
    .out(io_out)
);

always @(posedge clk) begin
    if (page_mode) begin
        cm_page <= switches;
    end else begin
        cm_in <= switches;
    end
end

endmodule
