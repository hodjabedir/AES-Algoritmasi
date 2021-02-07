`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2020 09:48:39
// Design Name: 
// Module Name: byte_degistirme
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


module byte_degistirme(

   input [127:0]b_in,
    output [127:0]b_out
    );
    
    genvar i;
    generate 
        for (i = 0; i <= 120; i = i+8)begin
            sboxme tobb(.b_in(b_in[i +:7]), .b_out(b_out[i+:7]));
        end
    endgenerate   
endmodule
