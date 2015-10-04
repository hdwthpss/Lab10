`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:27 09/05/2015 
// Design Name: 
// Module Name:    buzzer_control 
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
module buzzer_control(clk,rst_n,note_div_0,audio_left,audio_right,note_div_1,switch
);
	input clk;
	input rst_n;
	input [19:0] note_div_0;
	input [19:0] note_div_1;
	input switch;
	output reg [15:0] audio_left, audio_right;
	
	reg [19:0] clk_cnt_next_1, clk_cnt_1;
	reg b_clk_1, b_clk_next_1;
	
	reg [19:0] clk_cnt_next_0, clk_cnt_0;
	reg b_clk_0, b_clk_next_0;

	always @(posedge clk or negedge rst_n)
	begin
		if (~rst_n)
		begin
			clk_cnt_0 <= 20'd0;
			b_clk_0 <= 1'b0;
		end
		else
		begin
			clk_cnt_0 <= clk_cnt_next_0;
			b_clk_0 <= b_clk_next_0;
		end
	end

	always@(*)
	begin
		if (clk_cnt_0 == note_div_0)
		begin
			clk_cnt_next_0 = 20'd0;
			b_clk_next_0 = ~b_clk_0;
		end
		else
		begin
			clk_cnt_next_0 = clk_cnt_0 + 1'b1;
			b_clk_next_0 = b_clk_0;
		end
	end
	
	
	
	
	
	
	always @(posedge clk or negedge rst_n)
	begin
		if (~rst_n)
		begin
			clk_cnt_1 <= 20'd0;
			b_clk_1 <= 1'b0;
		end
		else
		begin
			clk_cnt_1 <= clk_cnt_next_1;
			b_clk_1 <= b_clk_next_1;
		end
	end

	always@(*)
	begin
		if (clk_cnt_1 == note_div_1)
		begin
			clk_cnt_next_1 = 20'd0;
			b_clk_next_1 = ~b_clk_1;
		end
		else
		begin
			clk_cnt_next_1 = clk_cnt_1 + 1'b1;
			b_clk_next_1 = b_clk_1;
		end
	end
	
	always@(*)
		begin
			audio_left = (b_clk_0 == 1'b0) ? 16'h4000 : 16'h3FFF;
			audio_right = (b_clk_1 == 1'b0) ? 16'h4000 : 16'h3FFF;
		end
	
endmodule
