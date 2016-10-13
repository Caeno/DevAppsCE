//: [Página Anterior](@previous) | [Próxima Página](@next)

/*:
 ### Arrays - Declarando e Usando Arrays
 No exemplo abaixo usamos o recurso de Arrays para declarar uma lista de Pessoas com suas respectivas datas de nascimento, e enumerar essa lista calculando suas idades.
 */

import Foundation

// Uma estrutura representando os dados de uma pessoa
struct Person {
    var name: String            // Nome
    var birthday: Date          // Data de Nascimento
}

// Declara Uma lista de pessoas
var people = [
    Person(name: "João", birthday: getDate(1975, 10, 21)),
    Person(name: "Maria", birthday: getDate(1981, 5, 12)),
    Person(name: "Cecília", birthday: getDate(1979, 7, 11)),
    Person(name: "José", birthday: getDate(1985, 2, 23))
]

// Adiciona uma pessoa a lista
people.append(Person(name: "Izabel", birthday: getDate(1982, 3, 13)))

// Verifica se a lista não esta vazia e enumera
if (!people.isEmpty) {
    for person in people {
        let age = getDifferenceInYearsFromNow(person.birthday)
        print("\(person.name) tem \(age!) anos.")
    }
}