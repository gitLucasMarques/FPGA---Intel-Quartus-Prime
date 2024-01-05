module divisor_frequencia(input wire clock_inicial, output reg clock_dividido, output reg [25:0] INT);

always @ (posedge clock_inicial)
	
	if (INT == 26'd50000000)	
		begin
			INT <= 26'd0;
			clock_dividido <= 1;
		end
		
	else
		begin
			INT <= INT + 26'd1;
			clock_dividido <= 0;
		end

endmodule