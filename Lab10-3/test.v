`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:13:17 09/18/2015
// Design Name:   speaker
// Module Name:   E:/Lab10_3_fix/test.v
// Project Name:  Lab10_3_fix
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: speaker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg rst_n;
	reg switch;
	reg [4:0] count;

	// Outputs
	wire audio_appsel;
	wire audio_sysclk;
	wire audio_bck;
	wire audio_ws;
	wire audio_data;
	wire [14:0] display;
	wire [3:0] wh_light;

	// Instantiate the Unit Under Test (UUT)
	speaker uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.audio_appsel(audio_appsel), 
		.audio_sysclk(audio_sysclk), 
		.audio_bck(audio_bck), 
		.audio_ws(audio_ws), 
		.audio_data(audio_data), 
		.switch(switch), 
		.count(count), 
		.display(display), 
		.wh_light(wh_light)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		switch = 0;
		count = 0;

		// Wait 100 ns for global reset to finish
		#1
		rst_n=1;
		
        
		// Add stimulus here

	end
      always #1 clk=~clk;
endmodule

