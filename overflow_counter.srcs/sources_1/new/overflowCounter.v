`timescale 1ns / 1ps
module overflowCounter(
    input wire clk,
    input wire reset,
    input wire enable,
    output wire [15:0] led
    );
        reg [31:0] counter;
        always @(posedge clk) begin
    if (reset == 1'b1) begin
counter <= 32'd0;
end else if (enable == 1'b1) begin
counter <= counter + 1'b1;
end else begin
counter <= counter; 
end
end
        assign led = counter[31:16];
endmodule
