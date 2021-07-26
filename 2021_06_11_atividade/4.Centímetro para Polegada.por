programa{
	inclua biblioteca Matematica --> m
	funcao inicio(){
		inteiro v
		real p = 0.393701
		leia(v)
		se(v > 0){
			para (inteiro i = 1; i <= v; i++){
				escreva(i," centimetros = ",m.arredondar(p,2)," polegadas\n")
				p += 0.393701
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */