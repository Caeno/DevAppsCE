/*:
 ### Exercício 10
 Construa um programa que dado um número inteiro informe o mês correspondente.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 */

var months = [ 5, 3, 9, 10, -1, 27 ]

//: #### Método 1: Usando uma função com Switch

// Declara uma função que retorna o nome do mês usando um switch..case
func monthName(month: Int) -> String {
    switch (month) {
    case 1:
        return "Janeiro"
    case 2:
        return "Fevereiro"
    case 3:
        return "Março"
    case 4:
        return "Abril"
    case 5:
        return "Maio"
    case 6:
        return "Junho"
    case 7:
        return "Julho"
    case 8:
        return "Agosto"
    case 9:
        return "Setembro"
    case 10:
        return "Outubro"
    case 11:
        return "Novembro"
    case 12:
        return "Dezembro"
    default:
        return "N/A"
    }
}

// Imprime os nomes dos meses
print("-- Imprime os Nomes dos meses usando o método de função com switch...case")
for month in months {
    print("Mês \(month): \(monthName(month: month))")
}


//: #### Método 2: Usando um Dicionário

// Declara um dicionário onde as chaves são os números dos meses e os valores o nome do mês correspondente.
let monthNames = [
    1 : "Janeiro",
    2 : "Fevereiro",
    3 : "Março",
    4 : "Abril",
    5 : "Maio",
    6 : "Junho",
    7 : "Julho",
    8 : "Agosto",
    9 : "Setembro",
    10 : "Outubro",
    11 : "Novembro",
    12 : "Dezembro",
]

// Imprime os nomes dos meses usando um Dicionário
print()
print("-- Imprime os Nomes dos meses usando o método do dicionário")
for month in months {
    if let monthName = monthNames[month] {
        print("Mês \(month): \(monthName)")
    } else {
        print("Mês \(month) é inválido.")
    }
}