`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2020 09:52:22
// Design Name: 
// Module Name: anahtar_uretimi
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


module anahtar_uretimi(
 input [127:0]ilk_anahtar,
 input [3:0]rcon,
 output [127:0]cikis_anahtar
  );
  
  wire [31:0] s1,s2,s3,s4;
  wire [31:0] sbox1;
  reg [31:0]yeni_rcon;
  assign s1 = ilk_anahtar[31:0];
  assign s2 = ilk_anahtar[63:32];
  assign s3 = ilk_anahtar[95:64];
  assign s4 = ilk_anahtar[127:96];
  
  wire [31:0]degistirilmis_s1 = {s1[23:16],s1[15:8],s1[7:0],s1[31:24]};
  sboxme(degistirilmis_s1,sbox1);
  
  
  assign cikis_anahtar[31:0] = sbox1 ^ yeni_rcon ;
  assign cikis_anahtar[63:32] = cikis_anahtar[31:0]^ s2 ;
  assign cikis_anahtar[95:64] =cikis_anahtar[63:32] ^s3 ;
  assign cikis_anahtar[127:96] = cikis_anahtar[95:64] ^s4 ;
  
  
always @rcon begin 
     case(rcon)	
         4'h0: yeni_rcon=32'h01_00_00_00;
         4'h1: yeni_rcon=32'h02_00_00_00;
         4'h2: yeni_rcon=32'h04_00_00_00;
         4'h3: yeni_rcon=32'h08_00_00_00;
         4'h4: yeni_rcon=32'h10_00_00_00;
         4'h5: yeni_rcon=32'h20_00_00_00;
         4'h6: yeni_rcon=32'h40_00_00_00;
         4'h7: yeni_rcon=32'h80_00_00_00;
         4'h8: yeni_rcon=32'h1b_00_00_00;
         4'h9: yeni_rcon=32'h36_00_00_00;
         default: yeni_rcon=32'h00_00_00_00;
         endcase

end

  
endmodule
