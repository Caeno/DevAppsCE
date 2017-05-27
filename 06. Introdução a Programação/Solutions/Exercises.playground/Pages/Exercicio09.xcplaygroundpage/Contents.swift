/*:
 ### Exercício 09
 Elabore um programa que calcula o IMC de uma pessoa de acordo com o seu peso e sua altura, considerando a formula:
 
 * IMC = Peso / Altura²
 * Classificações:
    * menor que 20 -> Abaixo do Peso
    * entre 20 e 25 -> Normal
    * entre 26 e 30 -> Acima do Peso
    * entre 31 e 35 -> Obeso
    * maior que 35 -> Obesidade mórbida
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Esse exercício utiliza a função **_pow(num, exp)_** para calcular o quadrado da altura.
 */

import Foundation

// Função para cálculo do IMC (em Inglês BMI: "Body Mass Index")
func calculateBMI(height: Double, weight: Double) -> Double {
    return weight / pow(height, 2)
}

calculateBMI(height: 1.78, weight: 85.1)

// Uma estrutura representando a pessoa e os seus dados
struct Person {
    var name: String            // Nome da Pessoa
    var weight: Double          // Peso
    var height: Double          // Altura
}

// Declara uma lista de pessoas para testes
let persons = [
    Person(name: "João", weight: 85.1, height: 1.78),
    Person(name: "Maria", weight: 49.0, height: 1.59),
    Person(name: "Creosvaldo", weight: 62.3, height: 1.72),
    Person(name: "Clara", weight: 102.4, height: 1.51),
]

//: #### Método 1
//: Usando funções que retornam uma String.

// Retorna uma string descrevendo a categoria de acordo com o índice
func getBMICategoryAsString(value: Double) -> String {
    switch (value) {
    case 0..<20:
        return "Abaixo do Peso"
    case 20...25:
        return "Normal"
    case 26...30:
        return "Sobrepeso"
    case 30...35:
        return "Obeso"
    default:
        return "Obesidade Mórbida"
    }
}

// Cálcula o IMC de cada pessoa usando o método que obtém uma String
print("Método 1 - Por String:")
for person in persons {
    let bmi = calculateBMI(height: person.height, weight: person.weight)
    let category = getBMICategoryAsString(value: bmi)
    
    print("\(person.name) tem \(person.height)m e pesa \(person.weight)kg. Seu IMC é \(bmi.formatted(format: "%.2f")) na categoria '\(category)'.")
}

//: #### Método 2
//: Usando Enumerações.

// Declara uma enumeração contendo os valores possíveis de Categoria
enum BMICategory : String {
    case underweight = "Abaixo do Peso"
    case normalWeight = "Normal"
    case overweight = "Sobrepeso"
    case obesity = "Obesidade"
    case morbidObesity = "Obesidade Mórbida"
}

// Retorna a categoria de acordo com o índice
func getBMICategoryAsEnum(value: Double) -> BMICategory {
    switch (value) {
    case 0..<20:
        return .underweight
    case 20...25:
        return .normalWeight
    case 26...30:
        return .overweight
    case 30...35:
        return .obesity
    default:
        return .morbidObesity
    }
}

// Cálcula o IMC de cada pessoa usando o método que obtém uma Enumeração
print("Método 2 - Por Enumeração:")
for person in persons {
    let bmi = calculateBMI(height: person.height, weight: person.weight)
    let category = getBMICategoryAsEnum(value: bmi)
    
    print("\(person.name) tem \(person.height)m e pesa \(person.weight)kg. Seu IMC  é \(bmi.formatted(format: "%.2f")) na categoria '\(category.rawValue)'.")
}
