/*:
 ### Exercício 19
 Construa um programa que leia uma palavra e escreva ela de trás para frente. Verifique se a palavra é um palíndromo (ou seja, elas podem ser lidas da esquerda para a direita ou da direita para a esquerda).
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 */

// Declarar uma lista de palavras
let words = [ "apelido", "ama", "bisneto", "ovo", "reviver", "saude" ]

// Declara uma função que retorna a palavra ao contrário
func reverseText(_ input: String) -> String {
    return String(input.characters.reversed())
}

// Declara uma função que verifica se dois textos são palíndromos
func isPalindrome(_ first: String, _ second: String) -> Bool {
    return first == second
}

// Imprime os testes
print("-- Lista de Palavras")
for word in words {
    let reversed = reverseText(word)
    print("Palavra: \(word), ao contrário: \(reversed). É palíndromo? \(isPalindrome(word, reversed))")
}