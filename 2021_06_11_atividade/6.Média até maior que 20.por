programa{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	funcao inicio(){
		inteiro n,i=0,r=0
		faca{
			leia(n)
			r+=n
			i++
		} enquanto(n<=20)

		se((i-1)!=0){
			escreva(m.arredondar((r-n)/t.inteiro_para_real(i-1),2))
		}senao{
			escreva("Divisao por zero")
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