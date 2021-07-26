programa{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	funcao inicio(){
		inteiro n,r=0,x=0
		leia(n)
		se(n==0){
			faca{
				leia(n)
				r+=n
			} enquanto(r<=100)
			escreva(m.arredondar((r+x)/10.0,2),"\n")
		}senao{
			x+=n
			faca{
				leia(n)
				r+=n
			} enquanto(r<=100)
			escreva(m.arredondar((r+x)/t.inteiro_para_real(x),2),"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */