`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:29 09/16/2015 
// Design Name: 
// Module Name:    view 
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
module view(in0,in1,in2,key,clk,rst_n
    );
	input [4:0] key;
	output reg  [4:0] in0,in1,in2;
	input clk,rst_n;
	
	always@(*)
	begin
		case(key)
			5'd0 : 
				begin
					in2=5'b11100;
					in1=5'b01101;
					in0=5'b00000;
				end
			5'd1 :
				begin
					in2=5'b11100;
					in1=5'b10001;
					in0=5'b01110;
				end
			5'd2 :
				begin
					in2=5'b11100;
					in1=5'b11000;
					in0=5'b10011;
				end
			5'd3 :
				begin
					in2=5'b11100;
					in1=5'b01111;
					in0=5'b01010;
				end
			5'd4 :
				begin
					in2=5'b11100;
					in1=5'b10010;
					in0=5'b00000;
				end
			5'd5 :
				begin
					in2=5'b11100;
					in1=5'b10000;
					in0=5'b01010;
				end
			5'd6 :
				begin
					in2=5'b11100;
					in1=5'b10010;
					in0=5'b10011;
				end
			5'd7 : 
				begin
					in2=5'b11000;
					in1=5'b01101;
					in0=5'b00000;
				end
			5'd8 :
				begin
					in2=5'b11000;
					in1=5'b10001;
					in0=5'b01110;
				end
			5'd9 :
				begin
					in2=5'b11000;
					in1=5'b11000;
					in0=5'b10011;
				end
			5'd10 :
				begin
					in2=5'b11000;
					in1=5'b01111;
					in0=5'b01010;
				end
			5'd11 :
				begin
					in2=5'b11000;
					in1=5'b10010;
					in0=5'b00000;
				end
			5'd12 :
				begin
					in2=5'b11000;
					in1=5'b10000;
					in0=5'b01010;
				end
			5'd13 :
				begin
					in2=5'b11000;
					in1=5'b10010;
					in0=5'b10011;
				end
			5'd14 :
				begin
					in2=5'b10000;
					in1=5'b10000;
					in0=5'b01010;
				end
			5'd15 :
				begin
					in2=5'b10000;
					in1=5'b10010;
					in0=5'b10011;
				end
		endcase
	
		if(~rst_n)
			begin
				in2=5'b00000;
				in1=5'b00000;
				in0=5'b00000;
			end
	end
			
endmodule
