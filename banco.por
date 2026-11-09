programa
{
	
	funcao inicio()
	{
		cadeia cadastros[4][2] = { 
							{"Joao","123"},
							{"Maria","456"},
							{"Pedro","789"},
							{"Matheus","ABC12"}
		}
		cadeia nome, senha
		inteiro linha = -1
		escreva("Insira o seu nome de usuário:")
		leia(nome)
		para(inteiro i = 0; i < 4;i++){
			se(nome == cadastros[i][0]){
				linha = i
				pare
			}
		}
		se(linha != -1){
			escreva("Insira a sua senha:")
			leia(senha)
			se(senha == cadastros[linha][1]){
				limpa()
				escreva("Sistema do Banco\n1-Depositar\n2-Sacar\n3-Saldo\n4-Sair\nResposta: ")
			} senao escreva("Senha inválida!\n")
		} senao escreva("Usuário não encontrado!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */