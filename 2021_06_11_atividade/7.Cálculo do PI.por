programa{
	inclua biblioteca Matematica --> m
	funcao inicio(){
		inteiro n,j=1
		real r=0.0
		logico s = verdadeiro
		leia(n)
		se(n==0){
			escreva(0.0)
		}senao{
			para(inteiro i=1;i<=n;i++){
				se(s == falso){
					r-=(4.0/j)
					s = verdadeiro
				}senao{
					r+=(4.0/j)
					s = falso
				}
				//escreva("Termo ",i,": 4 / ",j,"\t= ",4.0/j,"\t",s,"\n")
				j+=2
			}
			escreva(m.arredondar(r,5))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */