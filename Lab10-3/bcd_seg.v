`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:55 08/20/2015 
// Design Name: 
// Module Name:    bcd_seg 
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
module bcd_seg(bcd,display
    );
	 input [4:0] bcd;
	 output [14:0] display;
	 reg [14:0] display;
	 
	 always@(bcd)
		case(bcd)
			5'b00000: display = 15'b0000_0011_1111_111; //0
			5'b00001: display = 15'b1111_1111_1011_011; //1
			5'b00010: display = 15'b0010_0100_1111_111; //2
			5'b00011: display = 15'b0000_1100_1111_111; //3
			5'b00100: display = 15'b1001_1000_1111_111; //4
			5'b00101: display = 15'b0100_1000_1111_111; //5
			5'b00110: display = 15'b0100_0000_1111_111; //6
			5'b00111: display = 15'b0001_1111_1111_111; //7
			5'b01000: display = 15'b0000_0000_1111_111; //8
			5'b01001: display = 15'b0000_1000_1111_111; //9
			5'b01010: display = 15'b0001_0000_1111_111;//A
			5'b01011: display = 15'b1100_0000_1111_111; //b
			5'b01100: display = 15'b0110_0011_1111_111; //c
			5'b01101: display = 15'b1000_0100_1111_111; //d
			5'b01110: display = 15'b0110_0000_1111_111; //e
			5'b01111: display = 15'b0111_0000_1111_111; //f
			
			
			5'b10001: display = 15'b0011_0000_1111_101; //R
			5'b10010: display = 15'b0100_1000_1111_111; //S
			5'b10011: display = 15'b0110_1111_1011_011; //I
			
			5'b10000: display = 15'b1110_0011_1111_111; //L
			5'b11000: display = 15'b1001_0011_0101_111; //M
			5'b11100: display = 15'b1001_0000_1111_111; //H
			
			default: display = 15'b1111_1111_1111_111; //DEF
		endcase



endmodule
