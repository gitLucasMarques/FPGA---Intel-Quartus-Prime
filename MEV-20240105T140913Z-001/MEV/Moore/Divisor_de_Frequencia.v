module Divisor_de_Frequencia(clock_inicial, clock_dividido, INT);

input wire clock_inicial;
output reg clock_dividido;
output reg [25:0] INT;

always @(posedge clock_inicial)
	begin
		if (INT == 26'd50000000)	
			begin
				INT <= 26'd0;
				clock_dividido <= 1;
			end
		
		else
			begin
				INT <= INT + 1;
				clock_dividido <= 0;
			end
	end
	
endmodule