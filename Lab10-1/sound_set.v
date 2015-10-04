`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:55 09/15/2015 
// Design Name: 
// Module Name:    sound_set 
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
module sound_set(note_div,clk,rst_n,switch
    );
	reg [3:0]  count;
	reg [3:0] count_next;
	input clk,rst_n;
	output reg [19:0] note_div;

	input switch;
	
	
	always@(*)
		//if(switch==1'b1)
			case(count)
				4'd0 : note_div = 20'd76628;  //h do
				4'd1 : note_div = 20'd68259; 	//h re
				4'd2 : note_div = 20'd60606;	//h mi
				4'd3 : note_div = 20'd57306;  //h fa
				4'd4 : note_div = 20'd51020;	//h so
				4'd5 : note_div = 20'd45454;  //h la
				4'd6 : note_div = 20'd40485;  //h si
				4'd7 : note_div = 20'd153256;  //m do
				4'd8 : note_div = 20'd136518;  //m re
				4'd9 : note_div = 20'd121212;  //m mi
				4'd10: note_div = 20'd114613;  //m fa
				4'd11: note_div = 20'd102040;  //m so
				4'd12: note_div = 20'd90909;  //m la
				4'd13: note_div = 20'd80971;  //m si
				4'd14: note_div = 20'd181818;  //l la
				4'd15: note_div = 20'd163265;  //l si
				default : note_div = 20'd0;
			endcase
		//else
			//note_div = 20'd0;
			
			
	always@(*)
		if(switch==1'b1)
			count_next=count+1'b1;
		else
			count_next=count;
	always@(posedge clk or negedge rst_n)
		if(~rst_n)
			count<=4'd0;
		else
			count<=count_next;
	
endmodule
