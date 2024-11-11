//It has a single clock input and a 28-bit output port
module simple_counter (CLOCK_50, M, counter_out, reset);
input CLOCK_50 ;
input reset;
input [27:0] M;
output [27:0] counter_out;
reg [27:0] counter_out;

always @ (posedge CLOCK_50, negedge reset) // on positive clock edge or if reset is pressed

begin
	if(!reset) counter_out <= 0;        // clear count on reset
	else counter_out <= counter_out + M;// increment counter
end

endmodule // end of module
