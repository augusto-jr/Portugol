programa{
	inclua biblioteca Tipos --> t

	

	funcao inicio(){
		inteiro n
		leia(n)
		
		se(n > 1){
			para(inteiro i = 1; i <= n; i++){
				escreva(fib(i)," ")
			}
		}senao{
			escreva("Numero invalido" )
		}
	}

	funcao inteiro fib(inteiro n){
		se(n == 1){
			retorne 0
		}senao{
			se(n == 2){
				retorne 1
			}senao{
				retorne fib(n-1)+fib(n-2)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */