`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:56:01 11/11/2015
// Design Name:   top
// Module Name:   C:/Users/LEON/Desktop/MIPSCPU/topsim.v
// Project Name:  MIPSCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module topsim;

	// Inputs
	reg clkin;
	reg reset;


	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clkin(clkin), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clkin = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
	end
	
	parameter PERIOD = 20;
	always begin 
		clkin = 1'b0;
		#(PERIOD / 2) clkin = 1'b1;
		#(PERIOD / 2) ;
	end
      
endmodule

