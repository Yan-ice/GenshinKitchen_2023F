`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/19 15:01:56
// Design Name: 
// Module Name: ScriptMem
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


module ScriptMem(
  input        clock,             // uart clock. Please use 8 x BultRate. (such as: 9600 * 16 = 153600Hz£©
               reset,             // reset
  input  [7:0] dataOut_bits,
  input  [7:0] dataOut_valid,
  
  output       script_mode,
  input [7:0] pc, //program counter
  output [15:0] script //instructions from pc
  
    );
    
    reg [7:0] script_cnt = 0;
    reg [7:0] script_size = 0;
    assign script_mode = script_cnt < script_size;
    
    always@(posedge clock) begin
        if(dataOut_valid) begin
            if(script_mode) begin
                script_cnt = script_cnt + 1;
            end 
            else if (dataOut_bits[1:0] == 2'b10) begin
                script_size <= dataOut_bits;
                script_cnt <= 0;
            end
        end
    end
    
    inst_ram ram_module(
        .addra(script_mode ? script_cnt : pc),
        .clka(!clock),
        .dina(dataOut_bits),
        .douta(script),
        .wea(script_mode)
    );
endmodule
