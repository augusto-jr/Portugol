programa{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	funcao inicio(){
		inteiro x
		leia(x)
		se(x > 0){
			para (inteiro i = 1; i <= x; i++){
				escreva("O quadrado de ",i," eh ",t.real_para_inteiro(m.potencia(t.inteiro_para_real(i),2.0)),"\n")
			}
		} senao {
			escreva("Numero invalido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */