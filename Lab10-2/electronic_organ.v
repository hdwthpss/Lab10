`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:54 09/16/2015 
// Design Name: 
// Module Name:    electronic_organ 
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
module electronic_organ(clk,rst_n,switch,audio_appsel,audio_sysclk,audio_bck,audio_ws,audio_data,col_n,row_n,display,wh_light
    );
	input clk; // clock from the crystal
	input rst_n; // active low reset
	input switch;
	output audio_appsel; // playing mode selection
	output audio_sysclk; // control clock for DAC (from crystal)
	output audio_bck; // bit clock of audio data (5MHz)
	output audio_ws; // left/right parallel to serial control
	output audio_data; // serial output audio data

	output [3:0] wh_light;
	
	
	wire [19:0] note_div;
	
	
	wire clk_out;

	input [3:0] col_n;
	output [3:0] row_n;
	output [14:0] display;
	wire [4:0] key;

	
	keypad_scan k(
	.rst_n(rst_n),
	.clk(clk),
	.row_n(row_n),
	.col_n(col_n),
	.key(key)
	);
	
	speaker sp(
	.rst_n(rst_n),
	.clk(clk),
	.audio_appsel(audio_appsel),
	.audio_sysclk(audio_sysclk),
	.audio_bck(audio_bck),
	.audio_ws(audio_ws),
	.audio_data(audio_data),
	.count(key),
	.switch(switch),
	.wh_light(wh_light),
	.display(display)
	);
	

endmodule
