programa
{
	inclua biblioteca Matematica
	
	real quantidadeLitros = 0.0, quantidadeQuilometros = 0.0
	
	funcao inicio()
	{
		perguntarValores()
		logico isValido = validarEntradas()
		se(isValido == falso){			
			retorne
		}
		fazerCalculoExibir()
		
	}

	funcao perguntarValores(){
		escreva("\nDigite quantos litros de combustivel o carro possui: ")
		leia(quantidadeLitros)
		escreva("\nDigite quantos quilometros foram percorridos com esse combustivel: ")
		leia(quantidadeQuilometros)
	}

	funcao logico validarEntradas()
	{
		
		se(quantidadeLitros < 0)
		{
		 	escreva("\nQuantidade de litros não pode ser negativa! ")
		 	retorne falso
		}
		// se a condicao lá de cima nao for verdadeira, ele nem entra aqui em baixo
		// nao entra no senao se
		senao se(quantidadeQuilometros < 0)
		{
			escreva("\nQuantidade de quilometors não pode ser negativa! ")
			retorne falso
		}
		// se as condicoes acima não forem verdadeiras, vai entrar aqui
		// so pode existir um senao para cada instrucao de se
		senao
		{
			retorne verdadeiro
		}
	}

	funcao fazerCalculoExibir(){
		real consumo = quantidadeQuilometros / quantidadeLitros
		consumo = Matematica.arredondar(consumo, 2)
		escreva("\nO consumo do carro é: " + consumo +"km/l")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1017; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */