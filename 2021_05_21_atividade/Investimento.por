programa{
	inclua biblioteca Matematica --> m
	funcao inicio(){
		real t,v
		leia(t,v)
		se(t==1 ou t==2){
			se(t==1){
				escreva(m.arredondar(v+0.03*v,2))
			}senao{
				escreva(m.arredondar(v+0.04*v,2))
			}
		}senao{
			escreva("Tipo invalido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 251; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */