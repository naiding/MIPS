`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:43:22 11/12/2015
// Design Name:   aluctr
// Module Name:   C:/Users/LEON/Desktop/MIPSCPU/aluctrsim.v
// Project Name:  MIPSCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: aluctr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module aluctrsim;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] funct;

	// Outputs
	wire [3:0] ALUctr;

	// Instantiate the Unit Under Test (UUT)
	aluctr uut (
		.ALUOp(ALUOp), 
		.funct(funct), 
		.ALUctr(ALUctr)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ALUOp = 2'b01;
		funct = 0;
		
		#100;
		ALUOp = 2'b10;
		funct = 6'b100000;
		
		#100;
		ALUOp = 2'b10;
		funct = 6'b101010;
		
	end
      
endmodule

