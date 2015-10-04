`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:37 08/19/2015 
// Design Name: 
// Module Name:    keypad_scan 
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
module keypad_scan(clk,rst_n,col_n,row_n,,display,key
    );
	input clk;
	input rst_n;
	input [3:0] col_n;
	output [3:0] row_n;
	
	output [14:0] display;
	

	wire [3:0] temp_col_n;

	output [4:0] key;
	wire [4:0] key_detected;
	wire pressd_detected;
	wire [6:0] cnt_h;
	
	
	
	
	
	freq_div f(
	.clk(clk),
	.rst_n(rst_n),
	.clk_out(clk_out),
	.clk_ctl(clk_ctl),
	.cnt_h(cnt_h)
	);
	
	
	fst_scan s(
	.press(pressd_detected),
	.key_in(key_detected),
	.key(key),
	.clk(clk),
	.rst_n(rst_n)
	);
	
	
	scan_key k(
	.clk(cnt_h[0]),
	.rst_n(rst_n),
	.row_n(row_n),
	.col_n(col_n),
	.key_detected(key_detected),
	.pressd_detected(pressd_detected)
	);
	
endmodule
