`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:19:50 05/07/2026 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input[7:0] a,
    input[7:0] b,
    input[2:0] sel,
    output reg[7:0] out
);

always @(*) begin
    case(sel)

        3'b000: out = a + b;   // Addition
        3'b001: out = a - b;   // Subtraction
        3'b010: out = a & b;   // AND
        3'b011: out = a | b;   // OR
        3'b100: out = a ^ b;   // XOR
        3'b101: out = ~a;      // NOT
		  3'b110: out = a<<1;

        default: out = 8'b00000000;

    endcase
end
endmodule
