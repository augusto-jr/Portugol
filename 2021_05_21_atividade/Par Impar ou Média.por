programa{
	inclua biblioteca Matematica --> m
	funcao inicio(){
		inteiro a,b,c
		leia(a,b,c)
		se(a==b e b==c){
			se(a%2==0){
	            escreva("PAR")
	        	}senao {
	            escreva("IMPAR")
	        	}
		}senao{
			escreva(m.arredondar((a+b+c)/3.00,2))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */