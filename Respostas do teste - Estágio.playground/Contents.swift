import Foundation


// MARK: Questão 1

func fibonacciSequence(upTo n: Int) -> [Int] {
  var sequence = [0, 1]
  while sequence.last! < n {
      let newElement = sequence[sequence.count - 1] + sequence[sequence.count - 2]
      sequence.append(newElement)
  }
  return sequence
}

func isNumberInFibonacciSequence(_ number: Int) -> Bool {
  let sequence = fibonacciSequence(upTo: number)
  return sequence.contains(number)
}

let number = 4 // Escolha um número para poder verificar se pertence a sequência de Fibonacci.
let isInSequence = isNumberInFibonacciSequence(number)

print("O número \(number) \(isInSequence ? "pertence" : "não pertence") à sequência de Fibonacci.")


// MARK: Questão 2

// Função que conta as ocorrências da letra 'a' (maiúscula ou minúscula) em uma string
func contarLetraA(em texto: String) -> Int {
    var contador = 0
    
    for caractere in texto {
        if caractere == "a" || caractere == "A" {
            contador += 1
        }
    }
    
    return contador
}

let entrada = "Só parA ver se isso estA funcionando realmente" // Aqui você fornece a string que deseja contar.

let quantidadeDeAs = contarLetraA(em: entrada)// Chama a função para contar as letras 'a'
print("A letra 'a' aparece \(quantidadeDeAs) vezes na string fornecida.") // Exibe o resultado


// MARK: Questão 3

var INDICE = 12
var SOMA = 0
var K = 1

while K < INDICE {
    K = K + 1
    SOMA = SOMA + K
}
print(SOMA)

//O valor da variável SOMA é igual a 77.


// MARK: Questão 4
/*
a) 1, 3, 5, 7, __ O próximo número é 9, pois segue o padrão de incrementar o próximo número por 2.
b) 2, 4, 8, 16, 32, 64, __ O próximo número é 128, pois segue o padrão do número ser multiplicado por 2.
c) 0, 1, 4, 9, 16, 25, 36, __ O próximo número é 49, pois segue o padrão de ser o quadrado dos números, nesse caso o próximo valor seria 7^2 = 49.
d) 4, 16, 36, 64, __ O próximo número é 100, pois segue o padrão de ser o quadrado dos números pares, nesse caso o próximo valor seria 10^2 = 100.
e) 1, 1, 2, 3, 5, 8, __ O próximo número é 13, pois segue o padrão da sequência de Fibonacci, onde cada número a seguir é o resultado da soma dos dois valores anteriores, nesse caso 5 + 8 = 13.
f) 2, 10, 12, 16, 17, 18, 19, __ O próximo número é 20, pois a sequência segue um padrão de aumantar os valores a seguir em 8, 2, 4 e os últimos 3 números são constantes, dessa forma, o quarto número seguiria o padrão e seria o valor 20.
*/


// MARK: Questão 5
/*
Em primeiro lugar, ligaria o primeiro interruptor e deixaria ligado por 10min, em seguida desligaria o primeiro interruptor e ligaria o segundo interruptor e iria verificar as lâmpadas.
A sala que estiver com a lâmpada ligada é controlada pelo segundo interruptor, pois foi o único que deixamos ligado.
A sala que estiver com a lâmpada apagada, verificamos se está quente ou não. Caso esteja quente, ela é controlada pelo interruptor 1, pois foi o primeiro que ligamos e deixamos ligado por 10min, tempo suficiente para esquentar a lâmpada. Caso a lâmpada esteja fria, ela será controlada pelo terceiro interruptor, que não foi ligado.
*/
