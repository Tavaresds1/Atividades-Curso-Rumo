programa
{
	inclua biblioteca Matematica
	
	real quantidadeLitros = 0.0, consumo = 0.0
	
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
		escreva("\nDigite quantos litros de combustivel foi abastecido: ")
		leia(quantidadeLitros)
		escreva("\nDigite o consumo do carro: ")
		leia(consumo)
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
		senao se(consumo < 0)
		{
			escreva("\nConsumo não pode ser negativo! ")
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
		real distanciaMaxima = quantidadeLitros * consumo
		distanciaMaxima = Matematica.arredondar(distanciaMaxima, 2)
		escreva("\nA distancia máxima que o percorre é:" + distanciaMaxima +"km")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 458; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */