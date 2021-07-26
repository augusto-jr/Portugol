programa{
	funcao inicio(){
		inteiro n
		leia(n)
		se(n >= 0){
			escreva(fatorial(n))
		}senao{
			escreva("Numero invalido")
		}
	}
	funcao inteiro fatorial(inteiro n){
		inteiro i
		para(i = 1; n > 1; n = n-1){
			i = i * n
		}
		retorne i
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 191; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */