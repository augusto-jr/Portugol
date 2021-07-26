programa{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> ti
	funcao inicio(){
		cadeia texto
		leia(texto)
		inteiro total = t.numero_caracteres(texto)-1
		para(inteiro i = 0; i <= total; i++){
			se(i == 0)
				escreva(t.obter_caracter(texto,0))
			senao
				se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == " ")
					escreva(t.obter_caracter(texto,i+1))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 90; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */