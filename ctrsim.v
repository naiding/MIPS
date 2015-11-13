`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:50:18 11/12/2015
// Design Name:   ctr
// Module Name:   C:/Users/LEON/Desktop/MIPSCPU/ctrsim.v
// Project Name:  MIPSCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ctr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrsim;

	// Inputs
	reg [5:0] opCode;

	// Outputs
	wire regDst;
	wire aluSrc;
	wire memToReg;
	wire regWrite;
	wire memRead;
	wire memWrite;
	wire branch;
	wire [1:0] aluop;
	wire jmp;

	// Instantiate the Unit Under Test (UUT)
	ctr uut (
		.opCode(opCode), 
		.regDst(regDst), 
		.aluSrc(aluSrc), 
		.memToReg(memToReg), 
		.regWrite(regWrite), 
		.memRead(memRead), 
		.memWrite(memWrite), 
		.branch(branch), 
		.aluop(aluop), 
		.jmp(jmp)
	);

	initial begin
		// Initialize Inputs
		opCode = 0;
		
		#100;
		opCode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#100;
       opCode = 6'b110000;

		// Add stimulus here

	end
      
endmodule

