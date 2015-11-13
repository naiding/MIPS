`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:06:00 11/11/2015
// Design Name:   alu
// Module Name:   C:/Users/LEON/Desktop/MIPSCPU/alusim.v
// Project Name:  MIPSCPU
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

module alusim;

	// Inputs
	reg [31:0] input1;
	reg [31:0] input2;
	reg [3:0] aluCtr;

	// Outputs
	wire [31:0] aluRes;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.input1(input1), 
		.input2(input2), 
		.aluCtr(aluCtr), 
		.aluRes(aluRes), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		input1 = 1;
		input2 = 1;
		aluCtr = 4'b0110;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		input1 = 2;
		input2 = 1;
		aluCtr = 4'b0110;
		#100
		
		input1 = 1;
		input2 = 1;
		aluCtr = 4'b0010;
	end
	
	reg clk;
	parameter PERIOD = 20;
	always begin 
		clk = 1'b0;
		#(PERIOD / 2) clk = 1'b1;
		#(PERIOD / 2) ;
	end
endmodule

