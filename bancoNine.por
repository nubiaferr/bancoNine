programa
{
	
	funcao inicio()
	{	inteiro escolhaMenu = 0, escolhaCredDeb = 0, limiteLoop = 5, diaAniversario, respostaDia, cheque
		real saldo1=0.0, saldo2=0.0, saldo3=0.0, saldo4=0.0, saldo5=0.0
		real credito=0.0, debito=0.0, lis = 1000.00, diferenca = 0.0, diferencaCred = 0.0, diferencaCred2=0.0
		cadeia respCheque
		//Menu
		//funcao menu(){
			escreva("\n--- BANK NINE9 ---")
			escreva("\nATRIBUINDO O EXPOENTE AO SEU PATRIMÔNIO\n")
			escreva("\n-----------------------")
			escreva("\n1 - Conta Poupança")
			escreva("\n2 - Conta Corrente")
			escreva("\n3 - Conta Especial")
			escreva("\n4 - Conta Empresa")
			escreva("\n5 - Conta Estudantil")
			escreva("\n6 - Sair\n")
			escreva("\n-----------------------")
			escreva("\nDigite a opção desejada: ")
			leia(escolhaMenu)
			limpa()

		
		se(escolhaMenu == 1){ //Conta poupança
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
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
					saldo1-=debito
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
					saldo1+=((saldo1*0.05)/100)

					escreva("Reajuste de saldo + 0.05%")
				} senao {
					escreva("\nTenha um ótimo dia!")
				}
						
				escreva("\nSALDO ATUAL: "+saldo1+"\n")
				
			}
			
			
		} senao se (escolhaMenu == 2){ //Conta corrente
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
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
					saldo2-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
				}

				cheque = 1
				enquanto(cheque <= 3){
					escreva("\nDeseja solicitar um talão de cheques? S/N\n")
					leia(respCheque)

					se ((respCheque == "S" ou respCheque == "s") e (saldo2 >= 30.00)){
						cheque=cheque-1
						saldo2-=30.00
						escreva("\nSeu talão foi solicitado com sucesso.")
						//não para de ofertar quando acaba????
						pare
					} senao se (respCheque == "N" ou respCheque == "n"){
						escreva("\nTenha um ótimo dia")
						pare
					} senao {
						escreva("\nOPERAÇÃO INVÁLIDA")
						escreva("\nSolicitação negada")
						pare
					}
				}			

				//perguntar se quer cheque (3 opções) -> enquanto (cheque <= 3)
				//se quiser cheque, saldo-30$

				escreva("\nSALDO ATUAL: "+saldo2+"\n")
				
			}
			
		} senao se (escolhaMenu == 3){ //Conta especial
			para(inteiro i = 1; i <= limiteLoop; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
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
				
					se((credito > saldo3) e (lis < 1000.00)){ //se ta devendo cheque especial e ta sobrando dinheiro
						diferencaCred = 1000.00 - lis //quanto ta devendo de cheque?
						//diferencaCred2 = credito - diferencaCred2//
						//lis+=diferencaCred2	
						//não ta distribuindo certo					
					}
					saldo3+=credito
					escreva("\n-----------------------")
					limpa()
				} senao se (escolhaCredDeb == 2){
					escreva("\nDigite o valor de débito: \n")
					leia(debito)

					se (debito > saldo3+lis){
						escreva("OPERAÇÃO INVÁLIDA")
					} senao se (debito > saldo3){
							diferenca = debito-saldo3
							lis=lis-diferenca
							saldo3+=diferenca
							saldo3-=debito
					} senao {
						escreva("OPERAÇÃO INVÁLIDA")
					}
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
				}

				escreva("\nSALDO ATUAL: "+saldo3+"\n")

				
				//se debito > saldo+saldoLimite {
				//saldoLimite - saldo = diferença
				//saldoLimite -= diferença
				//saldo += diferença
				//saldo - debito
				}
			
			
		} senao se (escolhaMenu == 4){ //Conta empresa
			para(inteiro i = 1; i <= 2; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA POUPANÇA")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo4)

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
					saldo4-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
				}

				escreva("\nSALDO ATUAL: "+saldo4+"\n")
				
			}
			
		} senao se (escolhaMenu == 5){ //Conta estudante
			para(inteiro i = 1; i <= 2; i++){
				escreva("\nCONTA: 01234 - BANCO NINE")
				escreva("\nCONTA POUPANÇA")
				escreva("\n-----------------------")

				escreva("\nSALDO: "+saldo5)

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
					saldo5-=debito
					escreva("\n-----------------------")
					limpa()
				} senao {
					escreva("\nOPERAÇÃO INVÁLIDA")
					escreva("\n-----------------------")
				}

				escreva("\nSALDO ATUAL: "+saldo5+"\n")
				
			}
			
		} senao se (escolhaMenu == 6){ //Sair
			escreva("\nOPERAÇÃO FINALIZADA")
		} senao {
			escreva("\nOPERAÇÃO INVÁLIDA")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */