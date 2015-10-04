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
module sound_set(note_div_0,switch,count,note_div_1
    );
	output reg [19:0] note_div_0;
	output reg [19:0] note_div_1;
	input [4:0] count;
	input switch;
	always@(*)
		if(switch==1'b0)
			case(count)
				5'd0 : 
				begin
					note_div_0 = 20'd76628;  //h do
					note_div_1 = 20'd76628;  //h do
				end
				5'd1 : 
				begin
					note_div_0 = 20'd68259; 	//h re
					note_div_1 = 20'd68259; 	//h re
					end
				5'd2 : 
				begin
					note_div_0 = 20'd60606;	//h mi
					note_div_1 = 20'd60606;	//h mi
					end
				5'd3 : 
				begin
					note_div_0 = 20'd57306;  //h fa
					note_div_1 = 20'd57306;  //h fa
					end
				5'd4 : 
				begin
					note_div_0 = 20'd51020;	//h so
					note_div_1 = 20'd51020;	//h so
					end
				5'd5 : 
				begin
					note_div_0 = 20'd45454;  //h la
					note_div_1 = 20'd45454;  //h la
					end
				5'd6 : 
				begin
					note_div_0 = 20'd40485;  //h si
					note_div_1 = 20'd40485;  //h si
					end
				5'd7 : 
				begin
					note_div_0 = 20'd153256;  //m do
					note_div_1 = 20'd153256;  //m do
					end
				5'd8 : 
				begin
					note_div_0 = 20'd136518;  //m re
					note_div_1 = 20'd136518;  //m re
					end
				5'd9 : 
				begin
					note_div_0 = 20'd121212;  //m mi
					note_div_1 = 20'd121212;  //m mi
					end
				5'd10: 
				begin
					note_div_0 = 20'd114613;  //m fa
					note_div_1 = 20'd114613;  //m fa
					end
				5'd11: 
				begin
					note_div_0 = 20'd102040;  //m so
					note_div_1 = 20'd102040;  //m so
					end
				5'd12: 
				begin
					note_div_0 = 20'd90909;  //m la
					note_div_1 = 20'd90909;  //m la
					end
				5'd13: 
				begin
					note_div_0 = 20'd80971;  //m si
					note_div_1 = 20'd80971;  //m si
					end
				5'd14: 
				begin
					note_div_0 = 20'd181818;  //l la
					note_div_1 = 20'd181818;  //l la
					end
				5'd15: 
				begin
					note_div_0 = 20'd163265;  //l si
					note_div_1 = 20'd163265;  //l si
					end
				default : 
					begin
						note_div_0 = 20'd0;
						note_div_1 = 20'd0;
					end
			endcase
		else
			case(count)
				5'd0 : 
					begin
						note_div_0 = 20'd76628;  //h do
						note_div_1 = 20'd60606;  //h do/////////////////////
					end
				5'd1 : 
					begin
						note_div_0 = 20'd68259; 	//h re
						note_div_1 = 20'd57306;  //h fa
					end
				5'd2 : 
					begin
						note_div_0 = 20'd60606;	//h mi
						note_div_1 = 20'd51020;	//h so
					end
				5'd3 : 
					begin
						note_div_0 = 20'd57306;  //h fa
						note_div_1 = 20'd45454;  //h la
					end
				5'd4 : 
					begin
						note_div_0 = 20'd51020;	//h so
						note_div_1 = 20'd40485;  //h si
					end
				/*5'd5 : 
					note_div = 20'd45454;  //h la
				5'd6 : 
					note_div = 20'd40485;  //h si
				*/
				5'd7 : 
					begin
						note_div_0 = 20'd153256;  //m do
						note_div_1 = 20'd121212;  //m mi
					end
				5'd8 : 
					begin
						note_div_0 = 20'd136518;  //m re
						note_div_1 = 20'd114613;  //m fa
					end
				5'd9 : 
					begin
						note_div_0 = 20'd121212;  //m mi
						note_div_1 = 20'd102040;  //m so
					end
				5'd10: 
					begin
						note_div_0 = 20'd114613;  //m fa
						note_div_1 = 20'd90909;  //m la
					end
				5'd11: 
					begin
						note_div_0 = 20'd102040;  //m so
						note_div_1 = 20'd80971;  //m si
					end
				/*5'd12: 
					note_div = 20'd90909;  //m la
				5'd13: 
					note_div = 20'd80971;  //m si
				5'd14: 
					note_div = 20'd181818;  //l la
				5'd15: 
					note_div = 20'd163265;  //l si
				*/
				default :
					begin
						note_div_0 = 20'd0;
						note_div_1 = 20'd0;
					end
		endcase
endmodule
