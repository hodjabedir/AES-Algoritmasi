`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2020 09:51:12
// Design Name: 
// Module Name: sutun_karistirma
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


module sutun_karistirma(
input [127:0]girdi,
output [127:0]cikti

    );
  reg [7:0]k11,k12,k13,k14,k21,k22,k23,k24,k31,k32,k33,k34,k41,k42,k43,k44;
  
 
  initial begin
  assign k11 = girdi[127:120];
  assign k12 = girdi[119:112];
  assign k13 = girdi[111:104];
  assign k14 = girdi[103:96];
  assign k21 = girdi[95:88];
  assign k22 = girdi[87:80];
  assign k23 = girdi[79:72];
  assign k24 = girdi[71:64];
  assign k31 = girdi[63:56];
  assign k32 = girdi[55:48];
  assign k33 = girdi[47:40];
  assign k34 = girdi[39:32];
  assign k41 = girdi[31:24];
  assign k42 = girdi[23:16];
  assign k43 = girdi[15:8];
  assign k44 = girdi[7:0];

  end
    
    assign cikti[127:120] = k11 * 8'h02 + k12 * 8'h03 + k13 * 8'h01 + k14 * 8'h01;
    assign cikti[119:112] = k11 * 8'h01 + k12 * 8'h02 + k13 * 8'h03 + k14 * 8'h01; 
    assign cikti[111:104] = k11 * 8'h01 + k12 * 8'h01 + k13 * 8'h02 + k14 * 8'h03;
    assign cikti[103:96] = k11 * 8'h03 + k12 * 8'h01 + k13 * 8'h01 + k14 * 8'h02;
    
    assign cikti[95:88] = k21 * 8'h02 + k22 * 8'h03 + k23 * 8'h01 + k24 * 8'h01;
    assign cikti[87:80] = k21 * 8'h01 + k22 * 8'h02 + k23 * 8'h03 + k24 * 8'h01;
    assign cikti[79:72] = k21 * 8'h01 + k22 * 8'h01 + k23 * 8'h02 + k24 * 8'h03;
    assign cikti[71:64] = k21 * 8'h03 + k22 * 8'h01 + k23 * 8'h01 + k24 * 8'h02;
    
    assign cikti[63:56] = k31 * 8'h02 + k32 * 8'h03 + k33 * 8'h01 + k34 * 8'h01;
    assign cikti[55:48] = k31 * 8'h01 + k32 * 8'h02 + k33 * 8'h03 + k34 * 8'h01;
    assign cikti[47:40] = k31 * 8'h01 + k32 * 8'h01 + k33 * 8'h02 + k34 * 8'h03;
    assign cikti[39:32] = k31 * 8'h03 + k32 * 8'h01 + k33 * 8'h01 + k34 * 8'h02;
    
    assign cikti[31:24] = k41 * 8'h02 + k42 * 8'h03 + k43 * 8'h01 + k44 * 8'h01;
    assign cikti[23:16] = k41 * 8'h01 + k42 * 8'h02 + k43 * 8'h03 + k44 * 8'h01;
    assign cikti[15:8] = k41 * 8'h01 + k42 * 8'h01 + k43 * 8'h02 + k44 * 8'h03;
    assign cikti[7:0] =  k41 * 8'h03 + k42 * 8'h01 + k43 * 8'h01 + k44 * 8'h02;
    
    
endmodule
