module contador_frequencia_variavel(clock_inicial, chave_A, chave_B, reset, clock_selecionado, S, a, b, c, d, e, f, g);

input wire clock_inicial, chave_A, chave_B, reset;
output wire clock_selecionado;
output wire [3:0] S;
output wire a, b, c, d, e, f, g;

seletor_frequencia seletor_frequencia(.clock_inicial(clock_inicial), .chave_A(chave_A), .chave_B(chave_B), .clock_selecionado(clock_selecionado));
contador_4_bits contador_4_bits(clock_selecionado, reset, S);
decodificador decodificador(S[3], S[2], S[1], S[0], a, b, c, d, e, f, g);

endmodule