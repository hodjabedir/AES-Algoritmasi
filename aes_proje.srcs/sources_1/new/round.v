`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2020 09:55:38
// Design Name: 
// Module Name: round
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


module round(
input clk,
input [3:0]rcon,
input [127:0]giris_blok,
input [127:0]giris_anahtar,
output [127:0]cikis_anahtar,
output [127:0]cikis_blok
    );
    
    sutun_karistirma ();
    anahtar_uretimi anahtar1(giris_anahtar,rcon,cikis_anahtar);
    
    
endmodule
