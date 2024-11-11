module tuningWord_set(KEY0, KEY1, SW, M, C2, C3, C4, C5);
input KEY0;
input KEY1;
input [9:0] SW;
output [27:0] M; //tuning word
output [3:0] C2, C3, C4, C5; //count for each 7-seg
reg [27:0] M;
reg [3:0] C2, C3, C4, C5;

always @ (negedge KEY0, negedge KEY1) //on key1 or key2 press
begin
	if(!KEY1) //on key1 press set tuning word and 7-segs to 0
	begin
		M = 0;
		C2 = 0;
		C3 = 0;
		C4 = 0;
		C5 = 0;
	end 
	else  //on key0 press
	begin
		M = SW * 26844; //26843.5456 is tuning word for 1kHz

		C2 = SW%10;          //display frequency in kHz on 7-segs
		C3 = (SW/10)%10;
		C4 = (SW/100)%10;
		C5 = SW/1000;
	end
end

endmodule 
