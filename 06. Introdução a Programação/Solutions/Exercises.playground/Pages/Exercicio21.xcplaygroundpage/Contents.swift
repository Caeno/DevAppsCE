/*:
 ### Exercício 21
 Construa duas funções que receba um nome, a primeira deve retornar o número de vogais e a segunda o número de consoantes.
 
 [Índice](Index) | [Exercício Anterior](@previous)
 >Nesse exercício exemplificamos o uso de **tuplas** (_tuples_ em inglês), que permite declarar uma variável que contém dois ou mais valores. Como nosso exemplo usa dois números como entrada (o inicial e o final do intervalo). Para evitar termos de declarar duas listas, criamos uma lista com tuplas de dois elementos, representando os números iniciais e finais.
 */

// Duas listas contendo as consoantes e as vogais
let vowels = [ "a", "e", "i", "o", "u" ]
let consonants = [ "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z" ]

func countVowels(_ input: String) -> Int {
    var counter = 0
    for c in input.characters {
        if vowels.contains(String(c).lowercased()) {
            counter += 1
        }
    }
    
    return counter
}

func countConsonants(_ input: String) -> Int {
    var counter = 0
    for c in input.characters {
        if consonants.contains(String(c).lowercased()) {
            counter += 1
        }
    }
    
    return counter
}

// Uma lista de citações inspiradoras para testar
let quotes = [
    "Tenho em mim todos os sonhos do mundo",
    "Não sabendo que era impossível, ele foi lá e fez",
    "O medo corta mais profundamente do que as espadas",
    "Liberdade é pouco. O que eu desejo ainda não tem nome",
    "A amizade é um amor que nunca morre",
]

// Vamos enumerar as frases e obter as estatísticas
print("-- Contagem de vogais e consoantes em citações famosas")
for quote in quotes {
    print("Citação: \"\(quote)\", vogais: \(countVowels(quote)), consoantes: \(countConsonants(quote))")
}