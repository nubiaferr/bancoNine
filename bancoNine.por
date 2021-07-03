programa
{
	
	funcao inicio()
	{	inteiro escolhaMenu = 0, escolhaCredDeb = 0, limiteLoop = 10, diaAniversario, respostaDia, cheque =3
		real saldo1=0.0, saldo2=0.0, saldo3=0.0, saldo4=0.0, saldo5=0.0
		real credito=0.0, debito=0.0, lis = 1000.00, diferenca = 0.0 
		real diferencaCred = 0.0, diferencaCred2=0.0
		real emprestimoEmpresa=10000.00, emprestimoValorEmpresa=0.0
		real emprestimoEstudante=5000.00, emprestimoValorEstudante=0.0
		cadeia respCheque, respostaRepeteSN, respEmprestimo
		
		//Menu
		faca{//aqui começa o menu
			escreva("\n-------- BANK NINE9 ------ ")
			escreva("\n---ATRIBUINDO EXPOENTE----")
			escreva("\n-----AO SEU PATRIMÔNIO----\n")
			escreva("\n-----------MENU-----------\n")
			escreva("\n1 - Conta Poupança")
			escreva("\n2 - Conta Corrente")
			escreva("\n3 - Conta Especial")
			escreva("\n4 - Conta Empresa")
			escreva("\n5 - Conta Estudantil")
			escreva("\n6 - Sair\n")
			escreva("\n---------------------------")
			escreva("\nDigite a opção desejada: ")
			leia(escolhaMenu)
			limpa()

		
		se(escolhaMenu == 1){ //Conta poupança
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANK NINE9")
				escreva("\nCONTA POUPANÇA")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo1)

				//Fluxo credito e débito
				escreva("\n-----------------------")
				escreva("\n1 - Crédito\n")
				escreva("\n2 - Débito\n")
				escreva("\n-----------------------")
				escreva("\nDigite a opção desejada: ")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crédito: \n")
					leia(credito)
					saldo1+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de débito: \n")
					leia(debito)
					se (debito > saldo1){
						escreva("VALOR INDISPONÍVEL")
					} senao{
						saldo1-=debito
					}
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
				}

				//fluxo conta poupança
				diaAniversario = 18

				escreva("\nInsira o dia de hoje (apenas os 2 primeiros dígitos): ")
				leia(respostaDia)

				se (diaAniversario == respostaDia){
					se (debito > saldo1){
						escreva(" ")
					} senao {
						saldo1+=((saldo1*0.05)/100)
						escreva("Reajuste de saldo + 0.05%")
					}					
				} senao {
					escreva("\nTenha um ótimo dia!")
				}
						
				escreva("\nSALDO ATUAL: "+saldo1+"\n")
				escreva("\nDeseja repetir a operação? S/N: ")
				leia(respostaRepeteSN)
				limpa()

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
			
		} senao se (escolhaMenu == 2){ //Conta corrente
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANK NINE9")
				escreva("\nCONTA CORRENTE")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo2)

				escreva("\n-----------------------")
				escreva("\n1 - Crédito\n")
				escreva("\n2 - Débito\n")
				escreva("\n-----------------------")
				escreva("\nDigite a opção desejada: ")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crédito: \n")
					leia(credito)
					saldo2+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de débito: \n")
					leia(debito)
					se (debito > saldo2){
						escreva("VALOR INDISPONÍVEL")
					} senao {
						saldo2-=debito
					}
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
				}
						
		//fluxo cheque	
		se (saldo2 >= 30.00){
				enquanto (cheque <= 3 e cheque > 0){
					escreva("\nDeseja solicitar um talão de cheques? S/N: ")
					leia(respCheque)
					
					se (respCheque == "s" ou respCheque == "S"){
						cheque--
						saldo2-=30.00
						escreva("\nSeu talão foi solicitado com sucesso.")
						escreva("\nTotal de cheques disponíveis: "+cheque)
						pare
						
					} senao  se (respCheque == "n" ou respCheque == "N"){
						pare
					} senao {
						escreva("ERRO")
						pare
					}					
				} 
				
				} senao {
					escreva("Tenha um ótimo dia.\n")
				}

				escreva("\nSALDO ATUAL: "+saldo2+"\n")
				escreva("\nDeseja repetir a operação? S/N: ")
				leia(respostaRepeteSN)
				limpa()

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
		}
				
			
		} senao se (escolhaMenu == 3){ //Conta especial
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANK NINE9")
				escreva("\nCONTA ESPECIAL")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo3)
				escreva("\nCRÉDITO ESPECIAL: "+lis)

				escreva("\n-----------------------")
				escreva("\n1 - Crédito\n")
				escreva("\n2 - Débito\n")
				escreva("\n-----------------------")
				escreva("\nDigite a opção desejada: ")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crédito: \n")
					leia(credito)
				
					saldo3+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de débito: \n")
					leia(debito)
				//fluxo cheque especial
					se (debito <= saldo3){
						saldo3-=debito	
					} senao se (debito>saldo3 e debito>lis e debito>saldo3+lis) {
						escreva("Não há saldo para essa transação.")												
					} senao se (debito > saldo3){
							diferenca = debito-saldo3
							lis=lis-diferenca
							saldo3+=diferenca
							saldo3-=debito	
							escreva("\n-------------------")
							limpa()
					}senao {
						escreva("ERRO")
					}
					escreva("\n-----------------------")
					limpa()
					
			
				escreva("\nSALDO ATUAL: "+saldo3+"\n")
				escreva("\nDeseja repetir a operação? S/N: ")
				leia(respostaRepeteSN)
				limpa()

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				} 

				}
						
	}
		} senao se (escolhaMenu == 4){ //Conta empresa
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANK NINE9")
				escreva("\nCONTA EMPRESA")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo4)
				escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEmpresa)
				escreva("\n-----------------------")
				escreva("\n1 - Crédito\n")
				escreva("\n2 - Débito\n")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crédito: \n")
					leia(credito)
					saldo4+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de débito: \n")
					leia(debito)
					se (debito > saldo4){
						escreva("VALOR INDISPONÍVEL")
						limpa()
					} senao{
						saldo4-=debito
					}
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
					limpa()
				}

				se (emprestimoEmpresa <= 10000 e emprestimoEmpresa > 0){
					escreva("\nSALDO ATUAL: "+saldo4)
					escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEmpresa)
				faca{
					escreva("\nVocê gostaria de um empréstimo? S/N: ")
					leia(respEmprestimo)

					se (respEmprestimo == "s" ou respEmprestimo == "S"){
						escreva("\nValor do empréstimo: ")
						leia(emprestimoValorEmpresa)
						se (emprestimoValorEmpresa <= emprestimoEmpresa){
						emprestimoEmpresa-=emprestimoValorEmpresa
						saldo4+=emprestimoValorEmpresa
						} senao {
							escreva("\nValor indisponível. Tente novamente.")
						}
						pare
					} senao  se (respEmprestimo == "n" ou respEmprestimo == "N"){
						pare
					} senao {
						escreva("ERRO")
						pare
					}
					
				} enquanto (emprestimoEmpresa <= 10000)
				
				} senao {
					escreva("ERRO")
				}
				
				escreva("\nSALDO ATUAL: "+saldo4)
				escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEmpresa)
				escreva("\nDeseja repetir a operação? S/N: ")
				leia(respostaRepeteSN)
				limpa()

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
		} senao se (escolhaMenu == 5){ //Conta estudante
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANK NINE9")
				escreva("\nCONTA ESTUDANTE")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo5)
				escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEstudante)
				escreva("\n-----------------------")
				escreva("\n1 - Crédito\n")
				escreva("\n2 - Débito\n")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crédito: \n")
					leia(credito)
					saldo5+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de débito: \n")
					leia(debito)
					se (debito > saldo5){
						escreva("VALOR INDISPONÍVEL")
						limpa()
					} senao{
						saldo5-=debito
					}
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
					limpa()
				}

				se (emprestimoEstudante <= 5000 e emprestimoEstudante > 0){
					escreva("\nSALDO ATUAL: "+saldo5+"")
					escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEstudante)
				faca{
					escreva("\nVocê gostaria de um empréstimo? S/N: ")
					leia(respEmprestimo)

					se (respEmprestimo == "s" ou respEmprestimo == "S"){
						escreva("\nValor do empréstimo: ")
						leia(emprestimoValorEstudante)
						se (emprestimoValorEstudante <= emprestimoEstudante){
						emprestimoEstudante-=emprestimoValorEstudante
						saldo5+=emprestimoValorEstudante
						} senao {
							escreva("\nValor indisponível. Tente novamente.")
						}
						pare
						
					} senao  se (respEmprestimo == "n" ou respEmprestimo == "N"){
						pare
					} senao {
						escreva("ERRO")
						pare
					}
					
				} enquanto (emprestimoEstudante <= 5000)
				
				} senao {
					escreva("ERRO")
				}
				
				escreva("\nSALDO ATUAL: "+saldo5)
				escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEstudante)
				escreva("\nDeseja repetir a operação? S/N: ")
				leia(respostaRepeteSN)
				limpa()

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
		} senao se (escolhaMenu == 6){ //Sair
			escreva("\nOPERAÇÃO FINALIZADA")
		} senao {
			escreva("\nOPERAÇÃO INVÁLIDA")
		}
	} enquanto (escolhaMenu != 6)
	}
	
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */