`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:09 09/05/2015 
// Design Name: 
// Module Name:    speaker 
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
module speaker(clk,rst_n,audio_appsel,audio_sysclk,audio_bck,audio_ws,audio_data,switch,count,display,wh_light
);
	// I/O declaration
	input clk; // clock from the crystal
	input rst_n; // active low reset
	input switch;
	input [4:0] count;
	output audio_appsel; // playing mode selection
	output audio_sysclk; // control clock for DAC (from crystal)
	output audio_bck; // bit clock of audio data (5MHz)
	output audio_ws; // left/right parallel to serial control
	output audio_data; // serial output audio data
	wire [15:0] audio_in_left, audio_in_right;
	

	
	wire [19:0] note_div_0;
	wire [19:0] note_div_1;
	
	wire clk_out;
	wire [1:0] clk_ctl;
	
	output [14:0] display;
	output [3:0] wh_light;
	wire [4:0] bcd;
	wire [4:0] in0,in1,in2;
	view v(
	.key(count),
	.in0(in0),
	.in1(in1),
	.in2(in2),
	.rst_n(rst_n),
	.clk(clk)
	);
	
	bcd_seg b(
	.bcd(bcd),
	.display(display)
	);
	
	scan sc(
	.freq_ctl(clk_ctl),
	.in0(in0),
	.in1(in1),
	.in2(in2),
	.wh_light(wh_light),
	.light_num(bcd)
	);
	
	
	
	
	freq_div f2(
	.clk_out(clk_out),
	.clk_ctl(clk_ctl),
	.rst_n(rst_n),
	.clk(clk)
	);
	
	
	
	 
	sound_set set(
	.note_div_0(note_div_0),
	.note_div_1(note_div_1),
	.switch(switch),
	.count(count)
	);
	
	

	
	// Note generation
	buzzer_control Ung(
	.clk(clk), // clock from crystal
	.rst_n(rst_n), // active low reset
	.note_div_0(note_div_0),
	.note_div_1(note_div_1), // div for note generation
	.audio_left(audio_in_left), // left sound audio
	.audio_right(audio_in_right),// right sound audio
	.switch(switch)
	);
	
	// Speaker controllor
	speaker_control Usc(
	.clk(clk), // clock from the crystal
	.rst_n(rst_n), // active low reset
	.audio_in_left(audio_in_left), // left channel audio data input
	.audio_in_right(audio_in_right), // right channel audio data input
	.audio_appsel(audio_appsel), // playing mode selection
	.audio_sysclk(audio_sysclk), // control clock for DAC (from crystal)
	.audio_bck(audio_bck), // bit clock of audio data (5MHz)
	.audio_ws(audio_ws), // left/right parallel to serial control
	.audio_data(audio_data) // serial output audio data
	);
 
endmodule
