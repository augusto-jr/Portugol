programa{
	inclua biblioteca Tipos --> t
	funcao inicio(){
		cadeia notas[20]
		para(inteiro i=0; i<20; i++)
			leia(notas[i])
		para(inteiro i=0; i<20; i++){
			se(t.cadeia_para_real(notas[i+1]) >= 6.0)
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
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */