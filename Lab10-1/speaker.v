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
module speaker(clk,rst_n,audio_appsel,audio_sysclk,audio_bck,audio_ws,audio_data,switch
);
	// I/O declaration
	input clk; // clock from the crystal
	input rst_n; // active low reset
	input switch;
	output audio_appsel; // playing mode selection
	output audio_sysclk; // control clock for DAC (from crystal)
	output audio_bck; // bit clock of audio data (5MHz)
	output audio_ws; // left/right parallel to serial control
	output audio_data; // serial output audio data
	wire [15:0] audio_in_left, audio_in_right;
	
	
	
	wire [19:0] note_div;
	
	
	wire clk_out;
	
	
	freq_div f(
	.clk_out(clk_out),
	.rst_n(rst_n),
	.clk(clk)
	);
	
	
	
	 
	sound_set set(
	.note_div(note_div),
	.rst_n(rst_n),
	.clk(clk_out),
	.switch(switch)
	);
	
	

	
	// Note generation
	buzzer_control Ung(
	.clk(clk), // clock from crystal
	.rst_n(rst_n), // active low reset
	.note_div(note_div), // div for note generation
	.audio_left(audio_in_left), // left sound audio
	.audio_right(audio_in_right)// right sound audio
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
	.audio_data(audio_data), // serial output audio data
	.switch(switch)
	);
 
endmodule
