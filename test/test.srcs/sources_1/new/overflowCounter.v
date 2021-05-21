`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2021 10:18:26 PM
// Design Name: 
// Module Name: overflowCounter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module overflowCounter(
clk,reset,enable,dividedClk);
input wire clk, reset, enable;
output  wire dividedClk;
reg [26:0] counter;
always @ (posedge clk) begin
    if (reset)  begin
    counter <=27'b0;
    end
    else if (enable) begin
    counter <= counter + 1'b1; end
    
    else ;
   
end
assign dividedClk= counter[26];

endmodule
