programa{
	funcao inicio(){
		inteiro a,b,c
		leia(a,b,c)
		se(a==b e b==c){
			escreva("Iguais")
		}senao{
			se(a<=b e a<=c){
				escreva(a)
			}senao{
				se(b<=a e b<=c){
					escreva(b)
				}senao{
					se(c<=a e c<=b){
						escreva(c)
					}
				}
			}
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