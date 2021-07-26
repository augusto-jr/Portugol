programa{
	inclua biblioteca Tipos --> t
	funcao inicio(){
		real pa1,pc1,pa2,pc2,t=1.00001
		leia(pa1,pc1,pa2,pc2)
		se(pc1-pc2 < 0.00001){
			escreva("dados invalidos")
		}senao{
			se(pc1 > pc2){
			   se (pa1 <= pa2){
			      t += (pa2-pa1)/(pc1-pc2)
			   }
			}senao{
				se(pc1 < pc2){
				   se (pa1 >= pa2){
				   	 t += (pa1-pa2)/(pc2-pc1)
				   }
				}
			}
			escreva(t.real_para_inteiro(t))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */