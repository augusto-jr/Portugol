programa{
	funcao inicio(){
		inteiro vI,vF,x,y,s,m,c = 0
		leia(vI,vF)
		se(vI > vF ou vI <= 0){
			escreva("Intervalo invalido")
		}senao{
			para(x = vI; x <= vF; x++){
				m = x/2
				s = 0
				para(y=1; y<=m; y++){
					se(x % y == 0){
						s = s+y
					}
				}
				se(s == x){
					escreva(x,"\n")
					c+=1
				}
			}
			escreva("TOTAL: ",c)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 45; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */