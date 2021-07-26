programa{
	inclua biblioteca Matematica --> m
	funcao inicio(){
		inteiro notas[10],menor=9999,maior=-9999
		para(inteiro i=0; i<10; i++)
			leia(notas[i])
		para(inteiro i=0; i<10; i++){
			se(notas[i] < menor) menor = notas[i]
			se(notas[i] > maior) maior = notas[i]
		}
		escreva(m.arredondar((menor+maior)/2.0,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas, 4, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */