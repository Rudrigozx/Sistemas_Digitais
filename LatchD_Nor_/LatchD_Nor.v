module LatchD_Nor(
input D,
input E,
output reg Q,
output reg Qn

);
	wire Qinter, Qninter;
	
	assign Qinter = ~(D | Qninter);
	assign Qninter = ~(~D | Qinter);
	
	always @ (E)
	
	begin
		Qn <= Qinter;
		Q <= Qninter;
		
	end
	
	endmodule
