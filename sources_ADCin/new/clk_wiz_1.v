`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 17:34:47
// Design Name: 
// Module Name: clk_wiz_1
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


module clk_wiz_1(
    output reg clk_out=0,
    input Res,
    input clk_in
    );
   reg [31:0] count=0;
   
    always @ (posedge clk_in)
    begin
    if(!Res) //¸´Î»ÐÅºÅ 
    begin   clk_out<=1'b0; count<=32'd0; end
    else if (count==(32'd10000000-32'd1))//50msÉÁË¸
    begin  clk_out<=~clk_out;  count<=32'd0; end
    else if (count!=(32'd10000000-32'd1))
    begin clk_out<=clk_out; count<=count+32'd1; end
    end
    
endmodule
