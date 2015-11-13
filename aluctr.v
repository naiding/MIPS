`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:31 11/06/2015 
// Design Name: 
// Module Name:    aluctr 
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
module aluctr(
    input [1:0] ALUOp,
    input [5:0] funct,
    output reg [3:0] ALUCtr
    );

	always @(ALUOp or funct)
	casex({ALUOp, funct})
		8'b00xxxxxx: ALUCtr = 4'b0010;
		8'b01xxxxxx: ALUCtr = 4'b0110;
		8'b1xxx0000: ALUCtr = 4'b0010;
		8'b1xxx0010: ALUCtr = 4'b0110;
		8'b1xxx0100: ALUCtr = 4'b0000;
		8'b1xxx0101: ALUCtr = 4'b0001;
		8'b1xxx1010: ALUCtr = 4'b0111;
	endcase
endmodule

