/*:
 ### Exercício 12
 Construa um programa que carregue o valor da cotação do dólar e um valor em reais em variáveis, e calcule o valor convertido para dólar.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >A solução proposta para esse exercício utiliza uma estrutura de dados representando um produto. Ela é declarada como uma **struct**. Isso foi feito para exemplificar como podemos usar estruturas de dados para criar representações mais concretas de nossas informações, e também para mostrar as particularidades das **_structs_** quando é necessário modificar informações internas dela.
 */

let dollarRate = 3.51

// Descreve um produto precificado em dólar e cujo o valor em reais pode ser calculado.
struct Product {

    //
    // MARK: - Campos
    
    var name: String
    var dollarPrice: Double
    var reaisPrice: Double?
 
    //
    // MARK: - Inicializadores
    
    init(name: String, dollarPrice: Double) {
        self.name = name
        self.dollarPrice = dollarPrice
    }
    
    //
    // MARK: - Métodos
    
    mutating func calculateReaisPrice(dollarRate: Double) {
        reaisPrice = dollarRate * dollarPrice
    }
    
}

// Declara um catálogo de Produtos
var catalog = [
    Product(name: "Produto 1", dollarPrice: 75.0),
    Product(name: "Produto 2", dollarPrice: 123.5),
    Product(name: "Produto 3", dollarPrice: 1599.99),
    Product(name: "Produto 4", dollarPrice: 714.48),
    Product(name: "Produto 5", dollarPrice: 24.9),
]

// Enumera os produtos calculando o valor em reais
// Note que para chamar métodos que modificam o estado do objeto, é necessário acessá-los diretamente pelo seu índice, dessa forma não é possível usar a instrução "foreach" para fazer esse cálculo.
for i in 0..<catalog.count {
    catalog[i].calculateReaisPrice(dollarRate: dollarRate)
}


// Por fim imprime os valores em reais
print("-- Imprime o catálogo com os valores em Dólares e a conversão ")
for product in catalog {
    print("Produto: \(product.name), US$\(product.dollarPrice.formatted(format: "%.2f")), R$\(product.reaisPrice!.formatted(format: "%.2f")).")
}
