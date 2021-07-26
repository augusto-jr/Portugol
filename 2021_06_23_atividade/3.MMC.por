programa{
	funcao inicio(){
		inteiro n1,n2
		leia(n1,n2)
		escreva(MMC(n1,n2))
	}
	funcao inteiro MMC(inteiro n1,inteiro n2){
		inteiro x=n1,y=n2,z
		faca{
			z = x % y
			x = y
			y = z
		}enquanto(z!=0)
		retorne (n1*n2)/x
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 82; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */