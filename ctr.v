`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:19 11/06/2015 
// Design Name: 
// Module Name:    ctr 
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
module ctr(
    input [5:0] opCode,
    output reg regDst,
    output reg aluSrc,
    output reg memToReg,
    output reg regWrite,
    output reg memRead,
    output reg memWrite,
    output reg branch,
    output reg[1:0] aluop,
    output reg jmp
    );

	//reg regDst;
	//reg aluSrc;
	//reg memToReg;
	//reg regWrite;
	//reg memRead;
	//reg memWrite;
	//reg branch;
	//reg[1:0] aluop;
	//reg jmp;
	
	always @(opCode)
	begin
		case(opCode)
			6'b000010:
			begin
				regDst = 0;
				aluSrc = 0;
				memToReg = 0;
				regWrite = 0;
				memRead = 0;
				memWrite = 0;
				branch = 0;
				aluop = 2'b00;
				jmp = 1;
			end
			6'b000000:
			begin
				regDst = 1;
				aluSrc = 0;
				memToReg = 0;
				regWrite = 1;
				memRead = 0;
				memWrite = 0;
				branch = 0;
				aluop = 2'b10;
				jmp = 0;
			end
			6'b100011:
			begin
				regDst = 0;
				aluSrc = 1;
				memToReg = 1;
				regWrite = 1;
				memRead = 1;
				memWrite = 0;
				branch = 0;
				aluop = 2'b00;
				jmp = 0;
			end
			6'b101011:
			begin
				regDst = 0;
				aluSrc = 1;
				memToReg = 0;
				regWrite = 0;
				memRead = 0;
				memWrite = 1;
				branch = 0;
				aluop = 2'b00;
				jmp = 0;
			end
			6'b000100:
			begin
				regDst = 0;
				aluSrc = 0;
				memToReg = 0;
				regWrite = 0;
				memRead = 0;
				memWrite = 0;
				branch = 1;
				aluop = 2'b01;
				jmp = 0;
			end
			6'b001000:
			begin
				regDst = 0;
				aluSrc = 1;
				memToReg = 0;
				regWrite = 1;
				memRead = 0;
				memWrite = 0;
				branch = 0;
				aluop = 2'b00;
				jmp = 0;
			end
			default:
			begin
				regDst = 0;
				aluSrc = 0;
				memToReg = 0;
				regWrite = 0;
				memRead = 0;
				memWrite = 0;
				branch = 0;
				aluop = 2'b00;
				jmp = 0;
			end
		endcase
	end
endmodule
