//
//  DataSource.swift
//  MyLibrary
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

/**
 Representa uma fonte de dados para o Projeto.
 */
class DataSource {

    /// Lista de Livros na biblioteca do usuário
    var books = [
        Book(
            id: 1,
            title: "Dom Quixote",
            author: "Miguel de Cervantes",
            publisher: "Francisco de Robles",
            edition: 1,
            year: 1605
        ),
        Book(
            id: 2,
            title: "Guerra e Paz",
            author: "Liev Tolstói",
            publisher: "Cosac & Naify",
            edition: 1,
            year: 1869
        ),
        Book(
            id: 3,
            title: "A Montanha Mágica",
            author: "Thomas Mann",
            publisher: "Nova Fronteira",
            edition: 1,
            year: 1924
        ),
        Book(
            id: 4,
            title: "Ulisses",
            author: "James Joyce",
            publisher: "Penguin",
            edition: 1,
            year: 1922
        ),
        Book(
            id: 5,
            title: "Cem Anos de Solidão",
            author: "Gabriel García Márquez",
            publisher: "Record",
            edition: 1,
            year: 1967
        ),
        Book(
            id: 6,
            title: "A Divina Comédia",
            author: "Dante Alighieri",
            publisher: "Editora 34",
            edition: 3,
            year: 1321
        ),
        Book(
            id: 7,
            title: "Em Busca do Tempo Perdido",
            author: "Marcel Proust",
            publisher: "L&PM",
            edition: 1,
            year: 1913
        ),
        Book(
            id: 8,
            title: "O Som e a Fúria",
            author: "William Faulkner",
            publisher: "Cosac & Naify",
            edition: 2,
            year: 1929
        ),
        Book(
            id: 9,
            title: "O Homem sem Qualidades",
            author: "Robert Musil",
            publisher: "Nova Fronteira",
            edition: 5,
            year: 1930
        ),
        Book(
            id: 10,
            title: "O Processo",
            author: "Franz Kafka",
            publisher: "Companhia de Bolso",
            edition: 1,
            year: 1925
        ),
        Book(
            id: 11,
            title: "O Apanhador no Campo de Centeio",
            author: "J. D. Salinger",
            publisher: "Editora do Autor",
            edition: 1,
            year: 1951
        ),
        Book(
            id: 12,
            title: "Admirável Mundo Novo",
            author: "Aldous Huxley",
            publisher: "Biblioteca Azul",
            edition: 1,
            year: 1932
        ),
        Book(
            id: 13,
            title: "A Laranja Mecânica",
            author: "Anthony Burgess",
            publisher: "Aleph",
            edition: 1,
            year: 1962
        ),
        Book(
            id: 14,
            title: "Moby Dick",
            author: "Herman Melville",
            publisher: "Landmark",
            edition: 1,
            year: 1851
        ),
        Book(
            id: 15,
            title: "Os Três Mosqueteiros",
            author: "Alexandre Dumas",
            publisher: "Zahar",
            edition: 1,
            year: 1844
        ),
        Book(
            id: 16,
            title: "Os Miseráveis",
            author: "Victor Hugo",
            publisher: "Martin Claret",
            edition: 1,
            year: 1862
        ),
        Book(
            id: 17,
            title: "O Guarani",
            author: "Jose de Alencar",
            publisher: "Jiahu Books",
            edition: 1,
            year: 1857
        ),
        Book(
            id: 18,
            title: "Drácula",
            author: "Bram Stoker",
            publisher: "Zahar",
            edition: 1,
            year: 1897
        ),
        Book(
            id: 19,
            title: "Ensaio Sobre a Cegueira",
            author: "José Saramago",
            publisher: "Companhia das Letras",
            edition: 1,
            year: 1995
        ),
        Book(
            id: 20,
            title: "O Retrato de Dorian Gray",
            author: "Oscar Wilde",
            publisher: "L&M Pocket",
            edition: 3,
            year: 1890
        ),
    ]
    
}
