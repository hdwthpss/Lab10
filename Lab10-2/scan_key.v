`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:26 08/21/2015 
// Design Name: 
// Module Name:    scan_key 
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
module scan_key(col_n,row_n,key_detected,pressd_detected,clk,rst_n
    );
	input clk,rst_n;
	input [3:0] col_n;
	output [3:0] row_n;
	reg [3:0] row_n;
	
	output reg [4:0] key_detected;
	output reg pressd_detected;
	
	
	reg [1:0] sel,sel_next;
	
	
	
	
	always@(*)
	sel_next=sel+1'b1;
	
	always@(posedge clk or negedge rst_n)
		if(~rst_n)
			sel<=2'b00;
		else
			sel<=sel_next;
			 
	always@(sel)
		case(sel)
			2'b00 : row_n=4'b0111;
			2'b01 : row_n=4'b1011;
			2'b10 : row_n=4'b1101;
			2'b11 : row_n=4'b1110;
		//	default : row_n=4'b1111;
		endcase
		
	always@(*)
		case({row_n,col_n})
			8'b0111_0111 : ///F
				begin
					key_detected=5'd6;
					pressd_detected=1'b1;
				end
			8'b0111_1011 : ///E
				begin
					key_detected=5'd5;
					pressd_detected=1'b1;
				end
			8'b0111_1101 : ///D
				begin
					key_detected=5'd4;
					pressd_detected=1'b1;
				end
			8'b0111_1110 : ///C
				begin
					key_detected=5'd3;
					pressd_detected=1'b1;
				end
			8'b1011_0111 : ///B
				begin
					key_detected=5'd2;
					pressd_detected=1'b1;
				end
			8'b1101_0111 : ///A
				begin
					key_detected=5'd14;
					pressd_detected=1'b1;
				end
			8'b1011_1110 : ///9
				begin
					key_detected=5'd1;
					pressd_detected=1'b1;
				end
			8'b1101_1110 : ///8
				begin
					key_detected=5'd0;
					pressd_detected=1'b1;
				end
			8'b1110_1110 : ///7
				begin
					key_detected=5'd13;
					pressd_detected=1'b1;
				end
			8'b1011_1101 : ///6
				begin
					key_detected=5'd12;
					pressd_detected=1'b1;
				end
			8'b1101_1101 : ///5
				begin
					key_detected=5'd11;
					pressd_detected=1'b1;
				end
			8'b1110_1101 : ///4
				begin
					key_detected=5'd10;
					pressd_detected=1'b1;
				end
			8'b1011_1011 : ///3
				begin
					key_detected=5'd9;
					pressd_detected=1'b1;
				end
			8'b1101_1011 : ///2
				begin
					key_detected=5'd8;
					pressd_detected=1'b1;
				end
			8'b1110_1011 : ///1
				begin
					key_detected=5'd7;
					pressd_detected=1'b1;
				end
			8'b1110_0111 : ///0
				begin
					key_detected=5'd15;
					pressd_detected=1'b1;
				end
			default :
				begin
					key_detected=5'd16;
					pressd_detected=1'b0;
				end
		endcase


endmodule
