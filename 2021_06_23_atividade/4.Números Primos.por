programa{
	funcao inicio(){
		inteiro n
		leia(n)
		escreva(primos(n))
	}
	funcao cadeia primos(inteiro n){
		inteiro i = 1, j = 0
		se(n > 0){
			enquanto(i <= n){
				se(n%i == 0){
					j++
				}
				i++
			}
			se(j==2){
				retorne "Eh primo"
			}senao{
				retorne "Nao eh primo"
			}
		}senao{
			retorne "Numero invalido"
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */