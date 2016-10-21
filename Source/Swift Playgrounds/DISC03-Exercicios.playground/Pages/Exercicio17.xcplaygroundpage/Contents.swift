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
    Book(title: "Dom Quixote", author: "Miguel de Cervantes", publisher: "Francisco de Robles", edition: 1, year: 1605),
    Book(title: "Guerra e Paz", author: "Liev Tolstói", publisher: "Cosac & Naify", edition: 1, year: 1869),
    Book(title: "A Montanha Mágica", author: "Thomas Mann", publisher: "Nova Fronteira", edition: 1, year: 1924),
    Book(title: "Ulisses", author: "James Joyce", publisher: "Penguin", edition: 1, year: 1922),
    Book(title: "Cem Anos de Solidão", author: "Gabriel García Márquez", publisher: "Record", edition: 1, year: 1967),
    Book(title: "A Divina Comédia", author: "Dante Alighieri", publisher: "Editora 34", edition: 3, year: 1321),
    Book(title: "Em Busca do Tempo Perdido", author: "Marcel Proust", publisher: "L&PM", edition: 1, year: 1913),
    Book(title: "O Som e a Fúria", author: "William Faulkner", publisher: "Cosac & Naify", edition: 2, year: 1929),
    Book(title: "O Homem sem Qualidades", author: "Robert Musil", publisher: "Nova Fronteira", edition: 5, year: 1930),
    Book(title: "O Processo", author: "Franz Kafka", publisher: "Companhia de Bolso", edition: 1, year: 1925),
    Book(title: "O Apanhador no Campo de Centeio", author: "J. D. Salinger", publisher: "Editora do Autor", edition: 1, year: 1951),
    Book(title: "Admirável Mundo Novo", author: "Aldous Huxley", publisher: "Biblioteca Azul", edition: 1, year: 1932),
    Book(title: "A Laranja Mecânica", author: "Anthony Burgess", publisher: "Aleph", edition: 1, year: 1962),
    Book(title: "Moby Dick", author: "Herman Melville", publisher: "Landmark", edition: 1, year: 1851),
    Book(title: "Os Três Mosqueteiros", author: "Alexandre Dumas", publisher: "Zahar", edition: 1, year: 1844),
    Book(title: "Os Miseráveis", author: "Victor Hugo", publisher: "Martin Claret", edition: 1, year: 1862),
    Book(title: "O Guarani", author: "Jose de Alencar", publisher: "Jiahu Books", edition: 1, year: 1857),
    Book(title: "Drácula", author: "Bram Stoker", publisher: "Zahar", edition: 1, year: 1897),
    Book(title: "Ensaio Sobre a Cegueira", author: "Ensaio Sobre a Cegueira", publisher: "Companhia das Letras", edition: 1, year: 1995),
    Book(title: "O Retrato de Dorian Gray", author: "Oscar Wilde", publisher: "L&M Pocket", edition: 3, year: 1890),
]

// Ordena a lista por título e imprime o resultado
let sortedLibrary = library.sorted { $0.title < $1.title }
for book in sortedLibrary {
    print(book)
}
