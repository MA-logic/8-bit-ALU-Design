`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:31:25 05/07/2026
// Design Name:   alu
// Module Name:   /home/ise/Documents/verilog/alu/alu_tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

reg[7:0] a;
reg[7:0] b;
reg[2:0] sel;
wire [7:0] out;

alu uut(
.a(a),
.b(b),
.sel(sel),
.out(out)
);

initial begin 

	$display("Starting alu test..");
	$monitor("Time=%0t | a=%d b=%d sel=%b out=%d",
          $time, a, b, sel, out);
				
	//add
	a=10;
	b=5;
	sel=3'b000;
	#10;
	
	//sub
	sel=3'b001;
	#10;
	
	//and
	sel=3'b010;
	#10;
	
	//or
	sel=3'b011;
	#10;
	
	//xor
	sel=3'b100;
	#10;
	
	//not
	sel=3'b101;
	#10;
	
	sel=3'b110;
	#10;
	
	$display("ALU test completed");
	
	$finish;
end
endmodule
	


