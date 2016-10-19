/*:
 ### Exercício 17
 Elabore um programa para registro de uma pequena biblioteca com 20 livros, contendo as seguintes informações: titulo, autor, editora, edição, e ano. Ao final do programa imprima a lista em ordem crescente por nome do titulo.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Para resolver esse exercício utilizamos o método **sort** do Swift, que pode ser aplicado em qualquer lista para produzir uma lista ordenada conforme a lógica expressada pela _closure_ passada como parâmetro. 
 */

// Declara uma estrutura com as informações relacionadas a um livro
struct Book {
    var title: String
    var author: String
    var publisher: String
    var edition: Int
    var year: Int
}

// Declara uma lista com 20 livros com nomes exemplo
let library = [
    Book(title: "Livro 10", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 5", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 2", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 3", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 12", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 20", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 19", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 14", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 9", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 8", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 7", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 11", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 17", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 15", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 16", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 1", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 6", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 13", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 4", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
    Book(title: "Livro 18", author: "Autor 1", publisher: "Editora 1", edition: 1, year: 2001),
]

// Ordena a lista por título e imprime o resultado
let sortedLibrary = library.sorted { $0.title < $1.title }
for book in sortedLibrary {
    print(book)
}