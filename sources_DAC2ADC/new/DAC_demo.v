`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 19:40:14
// Design Name: 
// Module Name: DAC_demo
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


module DAC_demo(
    input clk_100MHz,
    input [1:0]Key,
    output clk_DAC,
    output DAC_Din,
    output DAC_Sync,
    output [7:0]DAC_Data
    );
   //Defining clock
   //Frequency divider
Clk_Division clk_divison(
      .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
      .clk_mode(1090),             // input wire [30 : 0] clk_mode
      .clk_out(clk_DAC)   
      );
   //DAC driver instantiation
   Driver_DAC Driver_DAC0(
        .clk_100MHz(clk_100MHz),
        .clk_DAC(clk_DAC),
        .DAC_En(1),
        .Wave_Mode(Key),
        .Phase(180),
        .DAC_Din(DAC_Din),
        .DAC_Sync(DAC_Sync),
        .DAC_Data(DAC_Data)
        );    
endmodule
