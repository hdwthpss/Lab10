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
module sound_set(note_div,switch,count
    );
	output reg [19:0] note_div;
	input [4:0] count;
	input switch;
	always@(*)
		if(switch==1'b1)
			case(count)
				5'd0 : note_div = 20'd76628;  //h do
				5'd1 : note_div = 20'd68259; 	//h re
				5'd2 : note_div = 20'd60606;	//h mi
				5'd3 : note_div = 20'd57306;  //h fa
				5'd4 : note_div = 20'd51020;	//h so
				5'd5 : note_div = 20'd45454;  //h la
				5'd6 : note_div = 20'd40485;  //h si
				5'd7 : note_div = 20'd153256;  //m do
				5'd8 : note_div = 20'd136518;  //m re
				5'd9 : note_div = 20'd121212;  //m mi
				5'd10: note_div = 20'd114613;  //m fa
				5'd11: note_div = 20'd102040;  //m so
				5'd12: note_div = 20'd90909;  //m la
				5'd13: note_div = 20'd80971;  //m si
				5'd14: note_div = 20'd181818;  //l la
				5'd15: note_div = 20'd163265;  //l si
				default : note_div = 20'd0;
			endcase
		else
			note_div = 20'd0;
			
	
endmodule
