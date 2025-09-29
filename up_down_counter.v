`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2025 15:25:07
// Design Name: 
// Module Name: up_down_counter
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
module up_down_counter (
    out,
    up_down,
    clk,
    reset,
    data
);


output [7:0] out;

input [7:0] data;
input up_down, clk, reset;

reg [7:0] out;


always @(posedge clk)
    if (reset) begin // active high reset
        out <= 8'b0;
    end else if (up_down) begin
        out <= out + 1;
    end else begin
        out <= out - 1;
    end

endmodule