module Hex_converter(count, reset, HEX);
input [3:0] count; //count from tuningWord_set
input reset;
output reg [0:6] HEX; //input for 7-seg

always @ (count, reset)   // on count or reset update
begin
	if(!reset) HEX = 7'h7F;  // on reset set 7-seg to blank
	else
	begin
		case (count) // HEX
			0: HEX = 7'h01;
			1: HEX = 7'h4F;
			2: HEX = 7'h12;
			3: HEX = 7'h06;
			4: HEX = 7'h4C;
			5: HEX = 7'h24;            //convert 4-bit count to 7-seg value 
			6: HEX = 7'h20;      
			7: HEX = 7'h0F;         
			8: HEX = 7'h00;
			9: HEX = 7'h04;		
			4'hA: HEX = 7'h08;
			4'hB: HEX = 7'h60;
			4'hC: HEX = 7'h31;      
			4'hD: HEX = 7'h42;
			4'hE: HEX = 7'h30;
			4'hF: HEX = 7'h38;
			default: HEX = 7'h7F;
		endcase
	end
end
	
endmodule 
