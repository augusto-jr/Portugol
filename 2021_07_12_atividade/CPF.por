programa{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> ti
	funcao CPF(cadeia numero){
		inteiro c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11
		inteiro x=10,z=11,dA=0,dB=0,sA=0,sB=0
		
		se(ti.cadeia_e_inteiro(numero,16)){

			logico ok = verdadeiro

			para(inteiro i = 0; i <= 8; i++){
				ok = ok e t.obter_caracter(numero,i) == t.obter_caracter(numero,i+1)
			}
			
			se (ok == verdadeiro)
				escreva("Nao eh valido")
			senao {
				para(inteiro i = 0; i <= 8; i++){
					dA += ti.caracter_para_inteiro(t.obter_caracter(numero,i))*x
					x--
				}
				para(inteiro i = 0; i <= 9; i++){
					dB += ti.caracter_para_inteiro(t.obter_caracter(numero,i))*z
					z--
				}
				se((dA%11) < 2)
					sA = 0
				senao
					sA = 11-(dA%11)
				
				se((dB%11) < 2)
					sB = 0
				senao
					sB = 11-(dB%11)
				se(sA != ti.caracter_para_inteiro(t.obter_caracter(numero,9)) ou sA != ti.caracter_para_inteiro(t.obter_caracter(numero,10)))
					escreva("Nao eh valido")
				senao
					escreva("Eh valido")
			}
		} senao
			escreva("Numero invalido")
	}
	funcao inicio(){
		cadeia cpf
		leia(cpf)
		CPF(cpf)
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 397; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */