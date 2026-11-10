programa
{
	const inteiro numero_vagas = 30
	funcao listar(cadeia vagas[]){
		limpa()
		escreva("\n| ")
		para(inteiro i = 0; i < numero_vagas; i++){
			escreva(vagas[i]," | ")
		}
		escreva(" |\n")
	}
	
	funcao cadeia ler_placa(){
		limpa()
		cadeia placa
		escreva("Insira sua placa: ")
		leia(placa)
		retorne placa
	}
	
	funcao inteiro ler_vaga(){
		limpa()
		inteiro vaga
		escreva("Insira a vaga: ")
		leia(vaga)
		se(vaga < 1 ou vaga > numero_vagas){
			escreva("Número da vaga inválido!\n")
			retorne -1
		}
		retorne vaga
	}
	
	funcao saida(cadeia &vagas[], inteiro vaga){
		limpa()
		se(vagas[vaga-1] == ""){
			escreva("Vaga não ocupada!\n")
		} senao{
			vagas[vaga-1] = ""
			escreva("Vaga desocupada com sucesso!\n")
		}
	}
	
	funcao entrada(cadeia &vagas[], cadeia placa, inteiro vaga){
		limpa()
		inteiro existe = 0
		para(inteiro i=0;i<30;i++){
			se(placa == vagas[i]){
				existe = 1
				escreva("Placa ja cadastrada\n")
				retorne
			}
		}
		se(vagas[vaga-1] != ""){
			escreva("Vaga ocupada!\n")
		} senao{
			vagas[vaga-1] = placa
			escreva("Entrada concluída com sucesso!\n")
		}
	}
	
	funcao inicializar(cadeia &vetor[]){
		para(inteiro i = 0; i < numero_vagas;i++){
			vetor[i] = ""
		}
	}
	
	funcao inicio(){
		cadeia vagas[numero_vagas]
		inicializar(vagas)
		inteiro resposta, vaga
		cadeia placa
		faca{
			escreva("Sistema de vagas\n1-Entrada de Veículo\n2-Saída de Veículo\n3-Listar Vagas\n4-Sair do Programa\nResposta: ")
			leia(resposta)
			escolha(resposta){
				caso 1:
					placa = ler_placa()
					vaga = ler_vaga()
					se(vaga != -1){
						entrada(vagas,placa,vaga)	
					}
				pare
				caso 2:
					vaga = ler_vaga()
					se(vaga != -1){
						saida(vagas,vaga)
					}
				pare
				caso 3:
					listar(vagas)
				pare
				caso 4:
					escreva("Saindo...")
				pare 
				caso contrario:
					escreva("Valor invalido!\n")
				pare
			}
		} enquanto(resposta != 4)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */