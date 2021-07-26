programa{
	inclua biblioteca Texto --> t
	funcao inicio(){
		cadeia texto
		inteiro f, i = 0, eh = 1
		leia(texto)
		f = t.numero_caracteres(texto)-1
		enquanto(i < f){
			se(t.obter_caracter(texto,i) != t.obter_caracter(texto,f)) eh = 0
			i++
			f--
		}
		se(eh == 1)
			escreva("Eh palindromo")
		senao
			escreva("Nao eh palindromo")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 43; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */