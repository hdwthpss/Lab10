`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:38 08/21/2015 
// Design Name: 
// Module Name:    fst_scan 
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
module fst_scan(press,key_in,clk,rst_n,key
    );
	input press;
	input [4:0] key_in;
	input clk,rst_n;
	output [4:0] key;

	
	reg [4:0] key;
	reg [4:0] key_next;
	always@(*)
		begin
			if(press==1)
				key_next=key_in;
			else
				key_next=key;
		end
	always@(posedge clk or negedge rst_n)
		if(~rst_n)
			key<=5'b11111;
		else
			key<=key_next;
endmodule
