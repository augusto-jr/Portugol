programa{
	inclua biblioteca Matematica --> m
	funcao inicio(){
		real n1,n2
		cadeia o
		leia(n1,o,n2)
		se(o=="+" ou o=="-" ou o=="*" ou o=="/"){
			se(o=="/" e n2==0){
				escreva("Divisao por zero")
			}senao{
				se(o=="+"){escreva(m.arredondar(n1+n2,2))}
				se(o=="-"){escreva(m.arredondar(n1-n2,2))}
				se(o=="*"){escreva(m.arredondar(n1*n2,2))}
				se(o=="/"){escreva(m.arredondar(n1/n2,2))}
			}
		}senao{
			escreva("Operacao Invalida")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */