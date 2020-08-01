`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 19:40:14
// Design Name: 
// Module Name: ttop
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


module ttop(
input clk_100MHz,
input [1:0]Key,
output clk_DAC,
 output DAC_Din,
 output DAC_Sync,
 input [7:0]ADC_Data,
output clk_ADC,
output ADC_En,
 output TMDS_Tx_Clk_N,
 output TMDS_Tx_Clk_P,
   output [2:0]TMDS_Tx_Data_N,
 output [2:0]TMDS_Tx_Data_P
    );

    wire [7:0]DAC_Data;

        
DAC_demo demo1(
        .clk_100MHz(clk_100MHz),
        .Key(Key),
       .clk_DAC(clk_DAC),
        .DAC_Din(DAC_Din),
        .DAC_Sync(DAC_Sync),
        .DAC_Data(DAC_Data)
        );  
         
     ADC_demo demo2(
       .clk_100MHz(clk_100MHz),
       .ADC_Data(DAC_Data),
       .clk_ADC(clk_ADC),
       .ADC_En(ADC_En),
       .TMDS_Tx_Clk_N(TMDS_Tx_Clk_N),
       .TMDS_Tx_Clk_P(TMDS_Tx_Clk_P),
       .TMDS_Tx_Data_N(TMDS_Tx_Data_N),
       .TMDS_Tx_Data_P(TMDS_Tx_Data_P)
       );
endmodule

