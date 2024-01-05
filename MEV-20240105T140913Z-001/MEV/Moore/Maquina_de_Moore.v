module Maquina_de_Moore(UP, DOWN, ATUAL, PROX, RESET, clock_inicial, clock_dividido, S, a, b, c, d, e, f, g);

input wire UP, DOWN, RESET, clock_inicial;
output reg [3:0] ATUAL;
output reg [3:0] PROX;
output reg [3:0] S;
output wire clock_dividido;
output wire a, b, c, d, e, f, g;

parameter 	A = 4'b0000, 
				B = 4'b0001, 
				C = 4'b0010, 
				D = 4'b0011, 
				E = 4'b0100, 
				F = 4'b0101,  
				G = 4'b0110, 
				H = 4'b0111, 
				I = 4'b1000, 
				J = 4'b1001,
				K = 4'b1111;
				

always @(UP or ATUAL)
	begin
		case(ATUAL)
		
		A: if(UP == 0)
				if(DOWN == 0)
					PROX = A;
				else
					PROX = I;
			else
				if(DOWN == 0)
					PROX = B;
				else
					PROX = J;
					
		B: if(UP == 0)
				if(DOWN == 0)
					PROX = B;
				else
					PROX = A;
			else
				if(DOWN == 0)
					PROX = C;
				else
					PROX = J;
					
		C: if(UP == 0)
				if(DOWN == 0)
					PROX = C;
				else
					PROX = B;
			else
				if(DOWN == 0)
					PROX = D;
				else
					PROX = J;
					
		D: if(UP == 0)
				if(DOWN == 0)
					PROX = D;
				else
					PROX = C;
			else
				if(DOWN == 0)
					PROX = E;
				else
					PROX = J;
					
		E: if(UP == 0)
				if(DOWN == 0)
					PROX = E;
				else
					PROX = D;
			else
				if(DOWN == 0)
					PROX = F;
				else
					PROX = J;
					
		F: if(UP == 0)
				if(DOWN == 0)
					PROX = F;
				else
					PROX = E;
			else
				if(DOWN == 0)
					PROX = G;
				else
					PROX = J;
					
		G: if(UP == 0)
				if(DOWN == 0)
					PROX = G;
				else
					PROX = F;
			else
				if(DOWN == 0)
					PROX = H;
				else
					PROX = J;
				
		H: if(UP == 0)
				if(DOWN == 0)
					PROX = H;
				else
					PROX = G;
			else
				if(DOWN == 0)
					PROX = I;
				else
					PROX = J;
					
		I: if(UP == 0)
				if(DOWN == 0)
					PROX = I;
				else
					PROX = H;
			else
				if(DOWN == 0)
					PROX = A;
				else
					PROX = J;
				
		J: if(UP == 0)
				if(DOWN == 0)
					PROX = J;
				else
					PROX = A;
			else
				if(DOWN == 0)
					PROX = A;
				else
					PROX = J;
					
		default: PROX = 4'bxxxx;
		endcase
	end
	

Divisor_de_Frequencia Divisor_de_Frequencia(clock_inicial, clock_dividido);

always @(posedge clock_dividido or negedge RESET)
	begin
		if(RESET == 0)
			ATUAL <= A;
		else
			ATUAL <= PROX;
	end


always @(ATUAL)
	begin
		case(ATUAL)
		
		A: S = D;
		B:	S = E;
		C: S = C;
		D: S = B;
		E: S = A;
		F: S = J; 
		G: S = H;
		H: S = G;
		I: S = F;
		J: S = K;
		
		default: S = 4'bxxxx;
		endcase
	end
	
Decodificador Decodificador(S[3], S[2], S[1], S[0], a, b, c, d, e, f, g);

endmodule