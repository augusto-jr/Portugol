programa{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> ti
	funcao inicio(){
		inteiro A=0,B=0,C=0,D=0,E=0,F=0,G=0,H=0,I=0,J=0,K=0,L=0,M=0,N=0,O=0,P=0,Q=0,R=0,S=0,T=0,U=0,V=0,W=0,X=0,Y=0,Z=0
		cadeia texto
		leia(texto)
		inteiro total = t.numero_caracteres(texto)-1
		para(inteiro i = 0; i <= total; i++){
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "A" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "a") A += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "B" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "b") B += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "C" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "c") C += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "D" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "d") D += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "E" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "e") E += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "F" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "f") F += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "G" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "g") G += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "H" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "h") H += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "I" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "i") I += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "J" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "j") J += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "K" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "k") K += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "L" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "l") L += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "M" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "m") M += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "N" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "n") N += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "O" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "o") O += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "P" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "p") P += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "Q" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "q") Q += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "R" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "r") R += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "S" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "s") S += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "T" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "t") T += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "U" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "u") U += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "V" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "v") V += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "W" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "w") W += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "X" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "x") X += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "Y" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "y") Y += 1
			se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "Z" ou ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == "z") Z += 1
			//se(ti.caracter_para_cadeia(t.obter_caracter(texto,i)) == " ") pare
		}
		se(A > 0) escreva("A = ",A,"\n")
		se(B > 0) escreva("B = ",B,"\n")
		se(C > 0) escreva("C = ",C,"\n")
		se(D > 0) escreva("D = ",D,"\n")
		se(E > 0) escreva("E = ",E,"\n")
		se(F > 0) escreva("F = ",F,"\n")
		se(G > 0) escreva("G = ",G,"\n")
		se(H > 0) escreva("H = ",H,"\n")
		se(I > 0) escreva("I = ",I,"\n")
		se(J > 0) escreva("J = ",J,"\n")
		se(K > 0) escreva("K = ",K,"\n")
		se(L > 0) escreva("L = ",L,"\n")
		se(M > 0) escreva("M = ",M,"\n")
		se(N > 0) escreva("N = ",N,"\n")
		se(O > 0) escreva("O = ",O,"\n")
		se(P > 0) escreva("P = ",P,"\n")
		se(Q > 0) escreva("Q = ",Q,"\n")
		se(R > 0) escreva("R = ",R,"\n")
		se(S > 0) escreva("S = ",S,"\n")
		se(T > 0) escreva("T = ",T,"\n")
		se(U > 0) escreva("U = ",U,"\n")
		se(V > 0) escreva("V = ",V,"\n")
		se(W > 0) escreva("W = ",W,"\n")
		se(X > 0) escreva("X = ",X,"\n")
		se(Y > 0) escreva("Y = ",Y,"\n")
		se(Z > 0) escreva("Z = ",Z)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */