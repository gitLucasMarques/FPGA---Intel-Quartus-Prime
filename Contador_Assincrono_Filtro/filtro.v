module filtro(input wire clock_inicial, input wire clock_filtro, output reg clock_final, output reg [3:0] S);

always @ (negedge clock_inicial)
	begin
	
		S[0] <= clock_filtro;
		S[1] <= S[0];
		S[2] <= S[1];
		
		clock_final <= S[2] & S[1] & S[0];
		
	end
	
endmodule