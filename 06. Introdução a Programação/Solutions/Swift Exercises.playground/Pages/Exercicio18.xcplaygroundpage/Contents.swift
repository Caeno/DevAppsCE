/*:
 ### Exercício 18
 Escreva um programa que leia um nome e apresente as letras que se encontram nas posições pares.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Esse exercício exemplifica como conseguimos acessar elementos individuais de uma String em Swift. Por ser um tipo moderno, suportando diversas formas de representar uma informação, é necessário fazer alguns truques para conseguir acessar os caracteres.
 */

var name = "Aluno da Silva"         // Nome
var evenChars = [Character]()       // Vai conter os caracteres obtidos nas posições pares

// Para acessar os caracteres individuais de uma String, usamos a propriedade characters.
// Para enumerar os elementos devemos obter uma lista de índices.
for index in name.characters.indices {
    // Para determinar a posição é necessário usar o método distance, comparando o índice inicial com o indice que estamos passando nesse momento
    var position = name.distance(from: name.startIndex, to: index)
    
    // Agora podemos determinar se a posição é par ou impar.
    // Se for um caractere da posição par então adiciona ele a lista de caracteres.
    if position % 2 == 0 {
        evenChars.append(name[index])
    }
}

// Agora imprime o resultado
print("Nome: \(name), caracteres nas posições pares: \(evenChars)")