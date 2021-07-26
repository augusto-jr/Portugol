programa{
	funcao inicio(){
		inteiro a,b,c=2,r=1
		leia(a,b)
		enquanto(a+b != 2){
			se(a % c == 0 ou b % c == 0){
				r = r*c
				se(a % c == 0)
					a = a/c
				se(b % c == 0)
					b = b/c
			}senao
				c = c++
		}
		escreva(r)
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