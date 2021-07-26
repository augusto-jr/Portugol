programa{
	inclua biblioteca Texto --> tx		
	inclua biblioteca Tipos --> ti
	funcao inicio(){
		cadeia notas[20],texto
		inteiro total_i = 1
		leia(texto)
		inteiro total = tx.numero_caracteres(texto)-1
		para(inteiro i=0; i < total; i++){
			se(i==0){
				cadeia novo_texto = ""
				para(inteiro j=0; j < total; j++)
					se(ti.caracter_para_cadeia(tx.obter_caracter(texto,j)) != " ")
						novo_texto += ti.caracter_para_cadeia(tx.obter_caracter(texto,j))
					senao
						pare
				notas[0] = novo_texto
			} senao {
				se(ti.caracter_para_cadeia(tx.obter_caracter(texto,i)) == " "){
					cadeia novo_texto = ""
					para(inteiro j=i; j < total; j++)
						se(ti.caracter_para_cadeia(tx.obter_caracter(texto,j+1)) != " ")
							novo_texto += ti.caracter_para_cadeia(tx.obter_caracter(texto,j+1))
						senao
							pare
					notas[total_i] = novo_texto
					total_i += 1
				}
			}
		}
		para(inteiro i=0; i<20; i++){
			se(ti.cadeia_para_real(notas[i+1]) >= 6.0)
				escreva(notas[i],"\n")
			i += 1
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */