`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2025 15:37:25
// Design Name: 
// Module Name: tb_up_down_counter
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

module tb_up_down_counter;

    reg clk;
    reg reset;
    reg up_down;
    reg [7:0] data;
    wire [7:0] out;

    up_down_counter DUT (
        .out(out),
        .up_down(up_down),
        .clk(clk),
        .reset(reset),
        .data(data)
    ); 
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end 
    initial begin
        // Initialize signals
        reset = 1;
        up_down = 1;
        data = 8'h00;   
        #10;
        reset = 0;
        #100;
        up_down = 0;  
        #100; 
        $finish;
    end
endmodule
