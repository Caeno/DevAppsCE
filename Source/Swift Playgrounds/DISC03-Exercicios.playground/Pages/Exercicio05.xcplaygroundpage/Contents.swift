/*:
 ## Exercício 05 - Formule um programa que declare cinco números e conte quantos deles são negativos.
 
 Opções:
 
 * [Retornar ao Exercício Anterior](@previous)
 */

import Foundation

//: ### 1ª Forma - Número fixo de variáveis

// Declara os números
var num1: Int = 10              // Declaração com tipo explícito
var num2 = -32                  // Declaração com tipo implícito
var num3 = 12, num4 = -5        // Declaração de mais de uma variável em linha
var num5 = 127

// Declara um contador e calcula
var negativeCounter = 0

if (num1 < 0) {
    negativeCounter += 1
}
if (num2 < 0) {
    negativeCounter += 1
}
if (num3 < 0) {
    negativeCounter += 1
}
if (num4 < 0) {
    negativeCounter += 1
}
if (num5 < 0) {
    negativeCounter += 1
}

// Imprime o resultado
print("Dentro os números \(num1), \(num2), \(num3), \(num4) e \(num5), \(negativeCounter) são negativos.")

//: ### 2ª Forma - Usando uma função que recebe uma lista de números

func countNegatives(numbers: [Int]) -> Int {
    var negativeCounter = 0
    
    for number in numbers {
        if (number < 0) {
            negativeCounter += 1
        }
    }
    
    return negativeCounter
}

var negatives1 = countNegatives(numbers: [num1, num2, num3, num4, num5])
print("Dentro os números \(num1), \(num2), \(num3), \(num4) e \(num5), \(negatives1) são negativos.")

var numberList = [10, 27, -13, -26, 32, -12, -21, -14, 7, 14]
var negatives2 = countNegatives(numbers: numberList)
print("Dentro os números \(numberList), \(negatives2) são negativos.")




