/*:
 ### Exercício 14
 Construa um programa que recebe o peso de uma pessoa em quilogramas e converte para libras, considerando a seguinte fórmula:
 
 * lb = kg * 2.2046
 
 Onde lb é o peso em Libras e kg o peso em quilogramas.
 
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Na declaração da função **toPounds** exemplificamos uma outra forma de trabalhar com os rótulos dos parâmetros. Usando o símbolo de underscore (_) inibimos a necessidade de se declarar o rótulo do parâmetro, como exemplificado na chamada para o método que apenas passa o valor como argumento.
 */

// Declara uma função de conversão para Fahrenheit
func toPounds(_ value: Double) -> Double {
    return value * 2.2046
}

// Declara uma lista de valores em Fahrenheit
let weights = [ 100, 85.5, 62.3, 75.4, 44.1 ]

// Imprime os valores convertidos
for weight in weights {
    print("\(weight) kg = \(toPounds(weight).formatted(format: "%.1f")) lb")
}