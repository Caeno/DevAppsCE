/*:
 ## Exercício 02 - Escrever um programa que carregue quatro números inteiros em variáveis distintas e calcule a média aritmética entre eles apresentando no final.
 
 Apresentamos 4 propostas para resolver esse exercício, duas usando um número pré-determinado de variáveis, e outras duas usando um número dinamico dinâmico a partir de um Array (lista).
 
 Opções:
 
 * [Retornar ao Exercício Anterior](@previous)
 * [Avançar para o Próximo exercício](@next)
 */

import Foundation


//: ### 1ª Forma - Usando variáveis fixas.

var num1: Double = 10.0
var num2 = 7.5
var num3 = 8.2
var num4 = 8.7

var result = (num1 + num2 + num3 + num4) / 4
print ("A média é \(result)!")


//: ### 2ª: Forma - Usando uma função com um número fixo de parâmetros.

func calculateAverage(num1: Double, num2: Double, num3: Double, num4: Double) {
    let result = (num1 + num2 + num3 + num4) / 4
    print ("A média é \(result)!")
}

calculateAverage(num1: num1, num2: num2, num3: num3, num4: num4)
calculateAverage(num1: 4, num2: 3.2, num3: 5.1, num4: 1.1)


//: ### 3ª: Forma - Usando uma função que recebe uma lista de números e imprime a média

func calculateAverageAndPrint(numbers: [Double]) {
    var average = 0.0
    for number in numbers {
        average = average + number
    }
    
    average = average / Double(numbers.count)
    print ("A média é \(average)!")
}

calculateAverageAndPrint(numbers: [ 10.0, 3.4, 7.1, 8.4, 9.2, 6.8 ])
calculateAverageAndPrint(numbers: [ num1, num2, num3, num4 ])


//: ### 4ª: Forma - Usando uma função que recebe uma lista de números e retorna a média

func calculateAverage3(numbers: [Double]) -> Double {
    var average = 0.0
    for number in numbers {
        average = average + number
    }
    
    average = average / Double(numbers.count)
    return average
}

var result1 = calculateAverage3(numbers: [ 10.0, 3.4, 7.1, 8.4, 9.2, 6.8 ])
var result2 = calculateAverage3(numbers: [ num1, num2, num3, num4 ])

print("A média 1 é \(String(format: "%.3f", result1))")
print("A média 2 é \(String(format: "%.3f", result2))")
