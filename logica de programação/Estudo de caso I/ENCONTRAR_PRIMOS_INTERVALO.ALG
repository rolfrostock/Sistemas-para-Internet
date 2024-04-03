Algoritmo "encontrar_primos_intervalo"

// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi
// Descrição    : Este programa recebe um número inicial e um número final e calcula todos os números primos dentro deste intervalo, 
//                exibindo-os na tela junto com a quantidade de números primos encontrados.
// Autor(a)     : Rolf Heinz Rostock
// Data atual   : 02/04/2024

Var
    numeroInicial, numeroFinal, i, j, contadorPrimos: inteiro
    ehPrimo: logico

Inicio
    // Solicita ao usuário os números inicial e final do intervalo
    escreva("Digite o número inicial do intervalo: ")
    leia(numeroInicial)
    escreva("Digite o número final do intervalo: ")
    leia(numeroFinal)

    contadorPrimos <- 0 // Inicializa o contador de números primos

    // Laço para percorrer o intervalo entre o número inicial e o número final
    para i de numeroInicial ate numeroFinal 
    
    faca
            se i > 1 entao // 0 e 1 não são primos
            ehPrimo <- verdadeiro // Assume inicialmente que o número é primo
            // Verifica se o número atual (i) é divisível por algum número entre 2 e i-1
            para j de 2 ate i div 2 
            faca
                se (i mod j) = 0 entao
                    ehPrimo <- falso // Se for divisível, não é primo
                    interrompa // Não precisa continuar a verificação
                fimse
            fimpara
            // Se após a verificação o número for primo, exibe e incrementa o contador
            se ehPrimo entao
                escreva(i, " ")
                contadorPrimos <- contadorPrimos + 1
            fimse
        fimse
    fimpara

    // Ao final, exibe a quantidade de números primos encontrados no intervalo
    escreva("Quantidade de números primos encontrados: ", contadorPrimos)

Fimalgoritmo

