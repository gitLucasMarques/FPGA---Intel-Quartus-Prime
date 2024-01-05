module contador_automatico(clock_inicial, reset, clock_dividido, S, a, b, c, d, e, f, g);

input wire clock_inicial, reset;
output wire clock_dividido;
output wire [3:0] S;
output wire a, b, c, d, e, f, g;

divisor_frequencia divisor_frequencia(.clock_inicial(clock_inicial), .clock_dividido(clock_dividido));
contador_4_bits contador_4_bits(clock_dividido, reset, S);
decodificador decodificador(S[3], S[2], S[1], S[0], a, b, c, d, e, f, g);

endmodule