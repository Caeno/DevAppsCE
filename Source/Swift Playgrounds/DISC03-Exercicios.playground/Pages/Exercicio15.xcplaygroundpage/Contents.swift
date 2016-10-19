/*:
 ### Exercício 15
 Escreva um programa que carrega uma lista com 10 ou mais elementos e os escreva em ordem contrária.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 */

// Declara uma lista de 10 elementos sequenciais
var lista = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

// Usamos a função Stride para passar pelos elementos da lista de trás para frente
for index in stride(from: (lista.count - 1), to: -1, by: -1) {
    print(lista[index])
}
