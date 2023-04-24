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
wire [7:0] cm_out;

cell_mux cm_inst (
    .page(cm_page),
    .in(cm_in),
    .out(cm_out)
);

reg ro_en;
reg [2:0] ro_sel;
wire ro_sig = cm_out[ro_sel];
wire [7:0] ro_out;

ring_osc_timer ro_inst (
    .slow_clk(clk),
    .enable(ro_en),
    .signal(ro_sig),
    .out(ro_out)
);

assign io_out = ro_en ? ro_out : cm_out;

always @(posedge clk) begin
    if (page_mode) begin
        if (switches[5:3] == 3'b111) begin
            ro_en <= 1;
            ro_sel <= switches[2:0];
        end else begin
            ro_en <= 0;
            cm_page <= switches;
        end
    end else begin
        cm_in <= switches;
    end
end

endmodule
