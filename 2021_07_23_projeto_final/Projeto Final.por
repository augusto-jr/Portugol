programa{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u

	cadeia base[10][4]
	cadeia function[4] = {"NOME","TELEFONE","E-MAIL","SEXO"}
	cadeia input[4] = {"DIGITA O NOME","DIGITA O TELEFONE","DIGITA O E-MAIL","DIGITA O SEXO (1-MASCULINO | 2-FEMININO)"}
	cadeia inputEdit[4] = {"DIGITA NOVO NOME","DIGITA NOVO TELEFONE","DIGITA NOVO E-MAIL","DIGITA NOVO SEXO (1-MASCULINO | 2-FEMININO)"}
	cadeia error[4] = {"NOME INVÁLIDO! MÍNIMO 2 CARACTERES.","TELEFONE INVÁLIDO! MÍNIMO 10 OU MÁXIMO 11 CARACTERES NUMÉRICOS.","E-MAIL INVÁLIDO! MÍNIMO 10 CARACTERES.","SEXO INVÁLIDO!"}

	funcao logico validate(cadeia value,inteiro cod){
		logico r = falso
		escolha(cod){
			caso 0: se(tx.numero_caracteres(value)>=2) r = verdadeiro senao r = falso pare
			caso 1: se(tx.numero_caracteres(value)>=10 e tx.numero_caracteres(value) <= 11 e tp.cadeia_e_inteiro(value,10) == verdadeiro) r = verdadeiro senao r = falso pare
			caso 2: se(tx.numero_caracteres(value)>=10) r = verdadeiro senao r = falso pare
			caso 3: se(value != "1" e value != "2") r = falso senao r = verdadeiro pare
		}
		retorne r
	}

	funcao inteiro checkbase(){
		inteiro cache = 0
		para(inteiro i=0;i<u.numero_linhas(base);i++)
			se(base[i][0] == "")
				cache += 1
		retorne cache
	}

	funcao insert(){
		cadeia value,next
		faca{
		// #########################################################################################################
		// INSERE REGISTRO
		// #########################################################################################################
			escreva("\n")
			para(inteiro i=0;i<u.numero_linhas(base);i++){
				se(base[i][0]==""){
					para(inteiro j=0;j<u.numero_colunas(base);j++){
						escreva(input[j],": ")
						leia(value)
						faca{
							se(validate(value,j) == falso){
								escreva(error[j],"\n",input[j],": ")
								leia(value)
							}
						}enquanto(validate(value,j) == falso)
						se(j!=3){
							base[i][j] = value
						} senao {
							escolha(tp.cadeia_para_inteiro(value,10)){
								caso 1: base[i][j] = "MASCULINO" pare
								caso 2: base[i][j] = "FEMININO" pare
							}
						}
					}
					pare
				}
			}
		// #########################################################################################################
		// PERGUNTA SE DESEJA INSERIR REGISTRAR NOVAMENTE
		// #########################################################################################################
				escreva("\nINSERIDO COM SUCESSO!\n\nDESEJA INSERIR REGISTRO NOVAMENTE? (S/N): ")
				leia(next)
				se(checkbase()!=0){
					faca{
						se(next != "N" e next != "n" e next != "S" e next != "s"){
							escreva("COMANDO INVÁLIDO!\nDESEJA INSERIR REGISTRO NOVAMENTE? (S/N): ")
							leia(next)
						}
					}enquanto(next != "N" e next != "n" e next != "S" e next != "s")
				} senao {
					escreva("\nMEMORIA CHEIA! POR GENTILEZA EXCLUIR UM REGISTRO.\n")
					next = "N"
				}
		}enquanto(next != "N" e next != "n")
		escreva("\n")
	}

	funcao edit(){
		cadeia next,value,id,colun
		faca{
			escreva("\n")
		// #########################################################################################################
		// LISTA REGISTRO DISPONÍVEL PARA EDITAR
		// #########################################################################################################	
			para(inteiro i=0;i<u.numero_linhas(base);i++){
				se(base[i][0] != ""){
					escreva("ID: ",i+1,"\t\t NOME: ",base[i][0],"\n")
				}
			}
		// #########################################################################################################
		// PERGUNTA QUAL REGISTRO DESEJA EDITAR
		// #########################################################################################################
			faca{
				escreva("\nQUAL REGISTRO DESEJA EDITAR? (ID): ")
				leia(id)
				se(tp.cadeia_e_inteiro(id,10) == falso ou tp.cadeia_para_inteiro(id,10) == 0 ou (tp.cadeia_para_inteiro(id,10)-1) >= u.numero_linhas(base) ou base[tp.cadeia_para_inteiro(id,10)-1][0] == ""){
					escreva("COMANDO INVÁLIDO!")
				}
			}enquanto(tp.cadeia_e_inteiro(id,10) == falso ou tp.cadeia_para_inteiro(id,10) == 0 ou (tp.cadeia_para_inteiro(id,10)-1) >= u.numero_linhas(base) ou base[tp.cadeia_para_inteiro(id,10)-1][0] == "")
		// #########################################################################################################
		// PERGUNTA QUAL CAMPO DESEJA EDITAR
		// #########################################################################################################
			faca{
				escreva("\nQUAL CAMPO DESEJA EDITAR? (")
				cadeia dsc = ""
				para(inteiro i=0;i<u.numero_colunas(base);i++){
					dsc += i+1+"-"+function[i]+" | "
				}
				escreva(tx.extrair_subtexto(dsc,0,(tx.numero_caracteres(dsc)-3)),"): ")
				leia(colun)
				se(tp.cadeia_e_inteiro(colun,10) == falso ou tp.cadeia_para_inteiro(colun,10) == 0 ou (tp.cadeia_para_inteiro(colun,10)-1) >= u.numero_colunas(base)){
					escreva("COMANDO INVÁLIDO!")
				}
			}enquanto(tp.cadeia_e_inteiro(colun,10) == falso ou tp.cadeia_para_inteiro(colun,10) == 0 ou (tp.cadeia_para_inteiro(colun,10)-1) >= u.numero_colunas(base))
		// #########################################################################################################
		// EXIBE ANTIGO ITEM E PERGUNTA NOVO ITEM
		// #########################################################################################################
			escreva("\n",function[tp.cadeia_para_inteiro(colun,10)-1]," ATUAL: ",base[tp.cadeia_para_inteiro(id,10)-1][tp.cadeia_para_inteiro(colun,10)-1],"\t ",inputEdit[tp.cadeia_para_inteiro(colun,10)-1],": ")
			leia(value)
			faca{
				se(validate(value,tp.cadeia_para_inteiro(colun,10)-1) == falso){
					escreva(error[tp.cadeia_para_inteiro(colun,10)-1],"\n",function[tp.cadeia_para_inteiro(colun,10)-1]," ATUAL: ",base[tp.cadeia_para_inteiro(id,10)-1][tp.cadeia_para_inteiro(colun,10)-1],"\t ",inputEdit[tp.cadeia_para_inteiro(colun,10)-1],": ")
					leia(value)
				}
			}enquanto(validate(value,tp.cadeia_para_inteiro(colun,10)-1) == falso)
			se((tp.cadeia_para_inteiro(colun,10)-1)!=3){
				base[tp.cadeia_para_inteiro(id,10)-1][tp.cadeia_para_inteiro(colun,10)-1] = value
			} senao {
				escolha(tp.cadeia_para_inteiro(value,10)){
					caso 1: base[tp.cadeia_para_inteiro(id,10)-1][tp.cadeia_para_inteiro(colun,10)-1] = "MASCULINO" pare
					caso 2: base[tp.cadeia_para_inteiro(id,10)-1][tp.cadeia_para_inteiro(colun,10)-1] = "FEMININO" pare
				}
			}
		// #########################################################################################################
		// PERGUNTA SE DESEJA EDITAR NOVAMENTE
		// #########################################################################################################
			escreva("\nEDITADO COM SUCESSO!\n\nDESEJA EDITAR NOVAMENTE? (S/N): ")
			leia(next)
			faca{
				se(next != "N" e next != "n" e next != "S" e next != "s"){
					escreva("COMANDO INVÁLIDO!\nDESEJA EDITAR NOVAMENTE? (S/N): ")
					leia(next)
				}
			}enquanto(next != "N" e next != "n" e next != "S" e next != "s")
		}enquanto(next != "N" e next != "n")
		escreva("\n")
	}

	funcao delete(){
		cadeia next,id
		faca{
			escreva("\n")
		// #########################################################################################################
		// LISTA REGISTRO DISPONÍVEL PARA EXCLUIR
		// #########################################################################################################
			para(inteiro i=0;i<u.numero_linhas(base);i++){
				se(base[i][0] != ""){
					escreva("ID: ",i+1,"\t\t NOME: ",base[i][0],"\n")
				}
			}
		// #########################################################################################################
		// PERGUNTA QUAL REGISTRO DESEJA EXCLUIR
		// #########################################################################################################
			faca{
				escreva("\nQUAL REGISTRO DESEJA EXCLUIR? (ID): ")
				leia(id)
				se(tp.cadeia_e_inteiro(id,10) == falso ou tp.cadeia_para_inteiro(id,10) == 0 ou (tp.cadeia_para_inteiro(id,10)-1) >= u.numero_linhas(base) ou base[tp.cadeia_para_inteiro(id,10)-1][0] == ""){
					escreva("COMANDO INVÁLIDO!")
				}
			}enquanto(tp.cadeia_e_inteiro(id,10) == falso ou tp.cadeia_para_inteiro(id,10) == 0 ou (tp.cadeia_para_inteiro(id,10)-1) >= u.numero_linhas(base) ou base[tp.cadeia_para_inteiro(id,10)-1][0] == "")
			para(inteiro i=0;i<u.numero_colunas(base);i++){
				base[tp.cadeia_para_inteiro(id,10)-1][i] = ""
			}
		// #########################################################################################################
		// PERGUNTA SE DESEJA EXCLUIR NOVAMENTE
		// #########################################################################################################
			escreva("\nEXCLUIDO COM SUCESSO!\n\nDESEJA EXCLUIR REGISTRO NOVAMENTE? (S/N): ")
			leia(next)
			se(checkbase() != u.numero_linhas(base)){
				faca{
					se(next != "N" e next != "n" e next != "S" e next != "s"){
						escreva("COMANDO INVÁLIDO !!!\nDESEJA EXCLUIR REGISTRO NOVAMENTE? (S/N): ")
						leia(next)
					}
				}enquanto(next != "N" e next != "n" e next != "S" e next != "s")
			} senao {
				escreva("\nNÃO HÁ REGISTRO DISPONÍVEL PARA EXCLUIR.\n")
				next = "N"
			}
		}enquanto(next != "N" e next != "n")
		escreva("\n")
	}

	funcao view(){
	// #########################################################################################################
	// LISTA DE REGISTRO DISPONÍVEL 
	// #########################################################################################################
		escreva("\n")
		para(inteiro i=0;i<u.numero_linhas(base);i++){
			se(base[i][0] != ""){
				para(inteiro j=0;j<u.numero_colunas(base);j++){
					escreva(function[j],": ",base[i][j],"\t\t ")
				}
				escreva("\n")
			}
		}
		escreva("\n")
	}

	funcao menu(){
		cadeia item
		faca{
			escreva("1-INSERIR REGISTRO | 2-EDITAR REGISTRO | 3-EXCLUIR REGISTRO | 4-VISUALIZAR REGISTRO | 5-SAIR : ")
			leia(item)
			faca{
				se(item != "1" e item != "2" e item != "3" e item != "4" e item != "5"){
					escreva("COMANDO INVÁLIDO!\n")	
					escreva("1-INSERIR REGISTRO | 2-EDITAR REGISTRO | 3-EXCLUIR REGISTRO | 4-VISUALIZAR REGISTRO | 5-SAIR : ")
					leia(item)
				}
			}enquanto(item != "1" e item != "2" e item != "3" e item != "4" e item != "5")
			escolha(tp.cadeia_para_inteiro(item,10)){
				caso 1: se(checkbase() != 0) insert() senao escreva("\nMEMORIA CHEIA! POR GENTILEZA EXCLUIR UM REGISTRO.\n\n") pare
				caso 2: se(checkbase() != u.numero_linhas(base)) edit() senao escreva("\nNÃO HÁ REGISTRO DISPONÍVEL PARA EDITAR.\n\n") pare
				caso 3: se(checkbase() != u.numero_linhas(base)) delete() senao escreva("\nNÃO HÁ REGISTRO DISPONÍVEL PARA EXCLUIR.\n\n") pare
				caso 4: se(checkbase() != u.numero_linhas(base)) view() senao escreva("\nNÃO HÁ REGISTRO DISPONÍVEL PARA VISUALIZAR! INSERE NOVO REGISTRO.\n\n") pare
				caso 5: escreva("\nENCERRADO COM SUCESSO!\n") pare
			}
		} enquanto(item != "5")
	}

	funcao inicio(){
		menu()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10932; 
 * @DOBRAMENTO-CODIGO = [11, 22, 30, 80, 151, 196, 212];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */