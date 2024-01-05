module Registrador(PROX, clock_dividido, RESET, ATUAL);

input wire clock_dividido, RESET;
input wire [3:0] PROX;
output reg [3:0] ATUAL;

parameter A = 4'b0000;

always @(posedge clock_dividido or negedge RESET)
	begin
		if(RESET == 0)
			ATUAL <= A;
		else
			ATUAL <= PROX;
	end
	
endmodule
