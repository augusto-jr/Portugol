programa{
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	funcao inicio(){
		real v,x
		inteiro y,z,n100,n50,n20,n10,n5,n2,n1,m50,m25,m10,m5,m1
		leia(v)
		y = t.real_para_inteiro(v)
		z = t.real_para_inteiro(m.arredondar((v-y)*100,0))
		n100 = (y/100)
		y = (y%100)
		n50 = (y/50)
		y = (y%50)
		n20 = (y/20)
		y = (y%20)
		n10 = (y/10)
		y = (y%10)
		n5 = (y/5)
		y = (y%5)
		n2 = (y/2)
		y = (y%2)
		n1 = (y/1)
		y = (y%1)
		se(n100>0){escreva(n100," nota(s) de 100 reais\n")}
		se(n50>0){escreva(n50," nota(s) de 50 reais\n")}
		se(n20>0){escreva(n20," nota(s) de 20 reais\n")}
		se(n10>0){escreva(n10," nota(s) de 10 reais\n")}
		se(n5>0){escreva(n5," nota(s) de 5 reais\n")}
		se(n2>0){escreva(n2," nota(s) de 2 reais\n")}
		se(n1>0){escreva(n1," moeda(s) de 1 real\n")}
		m50 = (z/50)
		z = (z%50)
		m25 = (z/25)
		z = (z%25)
		m10 = (z/10)
		z = (z%10)
		m5 = (z/5)
		z = (z%5)
		m1 = (z/1)
		z = (z%1)
		se(m50>0){escreva(m50," moeda(s) de 50 centavos\n")}
		se(m25>0){escreva(m25," moeda(s) de 25 centavos\n")}
		se(m10>0){escreva(m10," moeda(s) de 10 centavos\n")}
		se(m5>0){escreva(m5," moeda(s) de 5 centavos\n")}
		se(m1>0){escreva(m1," moeda(s) de 1 centavo")}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */