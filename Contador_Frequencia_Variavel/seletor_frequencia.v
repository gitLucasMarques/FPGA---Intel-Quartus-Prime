module seletor_frequencia(input wire clock_inicial, input wire chave_A, input wire chave_B, output reg clock_selecionado, output reg [28:0] INT);

always @ (posedge clock_inicial)
	begin
	
		case({chave_A, chave_B})
		
		2'b00:
		if (INT == 29'd25000000)		
			begin
				INT <= 29'd0;
				clock_selecionado <= 1;
			end
	
		else
			begin
				INT <= INT + 29'd1;
				clock_selecionado <= 0;
			end
				
			
		2'b01:
		if (INT == 29'd50000000)
			begin
				INT <= 29'd0;
				clock_selecionado <= 1;
			end
			
		else
			begin
				INT <= INT + 29'd1;
				clock_selecionado <= 0;
			end
			
			
		2'b10:
		if (INT == 29'd100000000)
			begin
				INT <= 29'd0;
				clock_selecionado <= 1;
			end
			
		else
			begin
				INT <= INT + 29'd1;
				clock_selecionado <= 0;
			end
			
	
		2'b11:
		if (INT == 29'd300000000)
			begin
				INT <= 29'd0;
				clock_selecionado <= 1;
			end
			
		else
			begin
				INT <= INT + 29'd1;
				clock_selecionado <= 0;
			end
		
		
		endcase
	
	end

endmodule