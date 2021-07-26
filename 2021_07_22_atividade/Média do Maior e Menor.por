programa{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> ti
	inclua biblioteca Matematica --> m
	funcao inicio(){
		cadeia texto
		inteiro notas[10],total_i = 1,menor=9999,maior=-9999
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
				notas[0] = ti.cadeia_para_inteiro(novo_texto,10)
			} senao {
				se(ti.caracter_para_cadeia(tx.obter_caracter(texto,i)) == " "){
					cadeia novo_texto = ""
					para(inteiro j=i; j < total; j++)
						se(ti.caracter_para_cadeia(tx.obter_caracter(texto,j+1)) != " ")
							novo_texto += ti.caracter_para_cadeia(tx.obter_caracter(texto,j+1))
						senao
							pare
					notas[total_i] = ti.cadeia_para_inteiro(novo_texto,10)
					total_i += 1
				}
			}
		}
		para(inteiro i=0; i<10; i++){
			se(notas[i] < menor) menor = notas[i]
			se(notas[i] > maior) maior = notas[i]
		}
		escreva(m.arredondar((menor+maior)/2.0,2),"0")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */