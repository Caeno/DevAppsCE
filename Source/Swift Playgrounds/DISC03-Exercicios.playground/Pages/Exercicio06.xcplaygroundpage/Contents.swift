/*:
 ### Exercício 06
 Escreva um programa que informa se um número carregado em uma variável e informe se ele é divisível por 5.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 */

import Foundation

// Declara uma função para verificar se um número é divisível por 5.
func divisbleByFive(number: Int) -> Bool {
    // Quando um número é divisível por 5 o resto da divisão é 0.
    return (number % 5 == 0)
}

// Declara uma função que imprime se um número é divisível por 5.
func printIfDivisible(number: Int) {
    if (divisbleByFive(number: number)) {
        print("Número \(number) é divisível por 5.")
    } else {
        print("Número \(number) NÃO é divisível por 5.")
    }
}

// Declara dois números
var numero1 = 12
var numero2 = 25

// Verifica se os números são divisíveis.
printIfDivisible(number: numero1)
printIfDivisible(number: numero2)


