programa{
	funcao inicio(){
		inteiro n
		para(inteiro i=1; i<=5; i++){
			leia(n)
			se(n < 0){
				escreva("idade invalida\n")
			}senao se(n >= 18){
				escreva("maior de idade\n")
			}senao se(n >= 0 e n < 18){
				escreva("menor de idade\n")
			}senao{
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 158; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */