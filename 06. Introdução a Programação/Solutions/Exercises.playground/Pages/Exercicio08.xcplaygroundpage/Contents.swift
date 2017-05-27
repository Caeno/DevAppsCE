/*:
 ### Exercício 08
 Elabore um programa que carregue a idade de uma pessoa em uma variável, identificando sua classe eleitoral, onde:
 
 * menor que 16 anos -> Não eleitor
 * entre 16 e 18 anos -> Eleitor facultativo
 * entre 18 e 65 anos -> Eleitor obrigatório
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 */

// Declara idades para testes
var age1 = 12
var age2 = 17
var age3 = 26
var age4 = 68

//: #### Método 1
//: Usando funções que retornam uma String.

//: ##### Estilo 1
//: Usando if
func electoralCategoryStyle1(age: Int) -> String {
    if (age < 16) {
        return "Não Eleitor"
    } else if (age <= 18) {
        return "Eleitor Facultativo"
    } else if (age <= 65) {
        return "Eleitor Obrigatório"
    }
    
    // Se chegou até aqui já passou de 65 anos, portanto é facultativo
    return "Eleitor Facultativo"
}

//: ##### Estilo 2
//: Usando switch...case
func electoralCategoryStyle2(age: Int) -> String {
    switch (age) {
    case 0..<16:
        return "Não Eleitor"
    case 16...18:
        return "Eleitor Facultativo"
    case 19...65:
        return "Eleitor Obrigatório"
    default:
        return "Eleitor Facultativo"
    }
}

// Testa as duas possibilidades com o estilo 1
print("Determinando as categorias com a função do Estilo 1: ")
print("Idade: \(age1), Categoria: \(electoralCategoryStyle1(age: age1))")
print("Idade: \(age2), Categoria: \(electoralCategoryStyle1(age: age2))")
print("Idade: \(age3), Categoria: \(electoralCategoryStyle1(age: age3))")
print("Idade: \(age4), Categoria: \(electoralCategoryStyle1(age: age4))")

// Testa as duas possibilidades com o estilo 2
print("Determinando as categorias com a função do Estilo 2: ")
print("Idade: \(age1), Categoria: \(electoralCategoryStyle2(age: age1))")
print("Idade: \(age2), Categoria: \(electoralCategoryStyle2(age: age2))")
print("Idade: \(age3), Categoria: \(electoralCategoryStyle2(age: age3))")
print("Idade: \(age4), Categoria: \(electoralCategoryStyle2(age: age4))")


//: #### Método 2
//: Usando Enumerações.

// Usa uma enumeração para declarar os possíveis tipos de eleitores
enum ElectoralCategory {
    case nonVoter
    case optionalVoter
    case mandatoryVoter
}

// Usa uma função que retorna a categoria eleitoral como um caso da enumeração
func electoralCategoryStyle3(age: Int) -> ElectoralCategory {
    switch (age) {
    case 0..<16:
        return .nonVoter
    case 16...18:
        return .optionalVoter
    case 19...65:
        return .mandatoryVoter
    default:
        return .optionalVoter
    }
}

// Usa um Dictionary para armazenar as descrições das categorias
let electoralCategoryDescriptions = [
    ElectoralCategory.nonVoter : "Não Eleitor",
    ElectoralCategory.optionalVoter : "Eleitor Facultativo",
    ElectoralCategory.mandatoryVoter : "Eleitor Obrigatório",
]

// Testa as duas possibilidades com o estilo 2
let category1 = electoralCategoryDescriptions[electoralCategoryStyle3(age: age1)]!
let category2 = electoralCategoryDescriptions[electoralCategoryStyle3(age: age2)]!
let category3 = electoralCategoryDescriptions[electoralCategoryStyle3(age: age3)]!
let category4 = electoralCategoryDescriptions[electoralCategoryStyle3(age: age4)]!

print("Determinando as categorias com a função do Estilo 3: ")
print("Idade: \(age1), Categoria: \(category1)")
print("Idade: \(age2), Categoria: \(category2)")
print("Idade: \(age3), Categoria: \(category3)")
print("Idade: \(age4), Categoria: \(category4)")
