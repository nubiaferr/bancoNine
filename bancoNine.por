programa
{
	
	funcao inicio()
	{	inteiro escolhaMenu = 0, escolhaCredDeb = 0, limiteLoop = 5, diaAniversario, respostaDia, cheque
		real saldo1=0.0, saldo2=0.0, saldo3=0.0, saldo4=0.0, saldo5=0.0
		real credito=0.0, debito=0.0, lis = 1000.00, diferenca = 0.0 
		real diferencaCred = 0.0, diferencaCred2=0.0
		real emprestimoEmpresa=10000.00, emprestimoValorEmpresa=0.0
		real emprestimoEstudante=5000.00, emprestimoValorEstudante=0.0
		cadeia respCheque, respostaRepeteSN, respEmprestimo
		//Menu
		faca{
			escreva("\n--- BANK NINE9 ---")
			escreva("\nATRIBUINDO O EXPOENTE AO SEU PATRIMﾃ年IO\n")
			escreva("\n-----------------------")
			escreva("\n1 - Conta Poupanﾃｧa")
			escreva("\n2 - Conta Corrente")
			escreva("\n3 - Conta Especial")
			escreva("\n4 - Conta Empresa")
			escreva("\n5 - Conta Estudantil")
			escreva("\n6 - Sair\n")
			escreva("\n-----------------------")
			escreva("\nDigite a opﾃｧﾃ｣o desejada: ")
			leia(escolhaMenu)
			limpa()

		
		se(escolhaMenu == 1){ //Conta poupanﾃｧa
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA POUPANﾃ�A")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo1)

				//Fluxo credito e dﾃｩbito
				escreva("\n-----------------------")
				escreva("\n1 - Crﾃｩdito\n")
				escreva("\n2 - Dﾃｩbito\n")
				escreva("\n-----------------------")
				escreva("\nDigite a opﾃｧﾃ｣o desejada: ")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crﾃｩdito: \n")
					leia(credito)
					saldo1+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de dﾃｩbito: \n")
					leia(debito)
					saldo1-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
					escreva("\n-----------------------")
				}

				//fluxo conta poupanﾃｧa
				diaAniversario = 18

				escreva("\nInsira o dia de hoje (apenas os 2 primeiros dﾃｭgitos): ")
				leia(respostaDia)

				se (diaAniversario == respostaDia){
					saldo1+=((saldo1*0.05)/100)

					escreva("Reajuste de saldo + 0.05%")
				} senao {
					escreva("\nTenha um ﾃｳtimo dia!")
				}
						
				escreva("\nSALDO ATUAL: "+saldo1+"\n")
				escreva("\nDeseja repetir a operação? S/N")
				leia(respostaRepeteSN)

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
			
		} senao se (escolhaMenu == 2){ //Conta corrente
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA CORRENTE")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo2)

				escreva("\n-----------------------")
				escreva("\n1 - Crﾃｩdito\n")
				escreva("\n2 - Dﾃｩbito\n")
				escreva("\n-----------------------")
				escreva("\nDigite a opﾃｧﾃ｣o desejada: ")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crﾃｩdito: \n")
					leia(credito)
					saldo2+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de dﾃｩbito: \n")
					leia(debito)
					saldo2-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
					escreva("\n-----------------------")
				}

				cheque = 3
				faca{
					escreva("\nDeseja solicitar um talﾃ｣o de cheques? S/N\n")
					leia(respCheque)

					se ((respCheque == "S" ou respCheque == "s") e (saldo2 >= 30.00)){
						cheque=cheque-1
						saldo2-=30.00
						escreva("\nSeu talﾃ｣o foi solicitado com sucesso.")
						//nﾃ｣o para de ofertar quando acaba????
						pare
					} senao se (respCheque == "N" ou respCheque == "n"){
						escreva("\nTenha um ﾃｳtimo dia")
						pare
					} senao {
						escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
						escreva("\nSolicitaﾃｧﾃ｣o negada")
						pare
					}
				}enquanto(cheque <= 3)		

				//perguntar se quer cheque (3 opﾃｧﾃｵes) -> enquanto (cheque <= 3)
				//se quiser cheque, saldo-30$

				escreva("\nSALDO ATUAL: "+saldo2+"\n")
				escreva("\nDeseja repetir a operação? S/N")
				leia(respostaRepeteSN)

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
		} senao se (escolhaMenu == 3){ //Conta especial
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA ESPECIAL")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo3)
				escreva("\nCRﾃ吋ITO ESPECIAL: "+lis)

				escreva("\n-----------------------")
				escreva("\n1 - Crﾃｩdito\n")
				escreva("\n2 - Dﾃｩbito\n")
				escreva("\n-----------------------")
				escreva("\nDigite a opﾃｧﾃ｣o desejada: ")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crﾃｩdito: \n")
					leia(credito)
				
					saldo3+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de dﾃｩbito: \n")
					leia(debito)

					se (debito <= saldo3){
						saldo3-=debito	
					} senao se (debito > saldo3 e (lis <= 1000)){
							diferenca = debito-saldo3
							lis=lis-diferenca
							saldo3+=diferenca
							saldo3-=debito	
							//não da erro se tentar tirar além do limite					
					}senao {
						escreva("OPERAﾃ�ﾃグ INVﾃ´IDA")
					}
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
					escreva("\n-----------------------")
				}

				escreva("\nSALDO ATUAL: "+saldo3+"\n")
				escreva("\nCRﾃ吋ITO ESPECIAL: "+lis)
				escreva("\nDeseja repetir a operação? S/N")
				leia(respostaRepeteSN)

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}

				}
			
			
		} senao se (escolhaMenu == 4){ //Conta empresa
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA EMPRESA")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo4)
				escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEmpresa)
				escreva("\n-----------------------")
				escreva("\n1 - Crﾃｩdito\n")
				escreva("\n2 - Dﾃｩbito\n")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crﾃｩdito: \n")
					leia(credito)
					saldo4+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de dﾃｩbito: \n")
					leia(debito)
					saldo4-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
					escreva("\n-----------------------")
				}

				se (emprestimoEmpresa <= 10000 e emprestimoEmpresa > 0){
				faca{
					escreva("\nVocê gostaria de um empréstimo? S/N")
					leia(respEmprestimo)

					se (respEmprestimo == "s" ou respEmprestimo == "S"){
						escreva("Valor do empréstimo: ")
						leia(emprestimoValorEmpresa)
						se (emprestimoValorEmpresa <= emprestimoEmpresa){
						emprestimoEmpresa-=emprestimoValorEmpresa
						saldo4+=emprestimoValorEmpresa
						} senao {
							escreva("\nValor indisponível. Tente novamente.")
						}
						
					} senao  se (respEmprestimo == "n" ou respEmprestimo == "N"){
						pare
					} senao {
						escreva("ERRO")
						pare
					}
					
				} enquanto (emprestimoEmpresa <= 10000)
				
				} senao {
					escreva("teste")
				}
				
				escreva("\nSALDO ATUAL: "+saldo4+"\n")

				escreva("\nDeseja repetir a operação? S/N")
				leia(respostaRepeteSN)

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
		} senao se (escolhaMenu == 5){ //Conta estudante
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA ESTUDANTE")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo5)
				escreva("\nVALOR DISPONÍVEL PARA EMPRÉSTIMO: "+emprestimoEstudante)
				escreva("\n-----------------------")
				escreva("\n1 - Crﾃｩdito\n")
				escreva("\n2 - Dﾃｩbito\n")
				leia(escolhaCredDeb)

				se (escolhaCredDeb == 1){
					escreva("\nDigite o valor de crﾃｩdito: \n")
					leia(credito)
					saldo4+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de dﾃｩbito: \n")
					leia(debito)
					saldo4-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
					escreva("\n-----------------------")
				}

				se (emprestimoEstudante <= 5000 e emprestimoEstudante > 0){
				faca{
					escreva("\nVocê gostaria de um empréstimo? S/N")
					leia(respEmprestimo)

					se (respEmprestimo == "s" ou respEmprestimo == "S"){
						escreva("Valor do empréstimo: ")
						leia(emprestimoValorEstudante)
						se (emprestimoValorEstudante <= emprestimoEstudante){
						emprestimoEstudante-=emprestimoValorEstudante
						saldo5+=emprestimoValorEstudante
						} senao {
							escreva("\nValor indisponível. Tente novamente.")
						}
						
					} senao  se (respEmprestimo == "n" ou respEmprestimo == "N"){
						pare
					} senao {
						escreva("ERRO")
						pare
					}
					
				} enquanto (emprestimoEstudante <= 5000)
				
				} senao {
					escreva("teste")
				}
				
				escreva("\nSALDO ATUAL: "+saldo5+"\n")

				escreva("\nDeseja repetir a operação? S/N")
				leia(respostaRepeteSN)

				se(respostaRepeteSN == "N" ou respostaRepeteSN == "n"){
					pare
				}
				
			}
			
		} senao se (escolhaMenu == 6){ //Sair
			escreva("\nOPERAﾃ�ﾃグ FINALIZADA")
		} senao {
			escreva("\nOPERAﾃ�ﾃグ INVﾃ´IDA")
		}
	} enquanto (escolhaMenu != 6)
	} 
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */