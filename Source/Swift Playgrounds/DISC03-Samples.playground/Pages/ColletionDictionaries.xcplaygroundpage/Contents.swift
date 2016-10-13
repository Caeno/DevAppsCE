//: [Página Anterior](@previous)

/*:
 ### Dicionários - Declarando e Usando Dicionários
 No exemplo abaixo usamos um dicionário do Swift para armazenar uma coleção de palavras-chave da linguagem com uma explicação curta associada a elas.
 */

// Declara um dicionário contendo palavras-chave e uma breve explicação
var swiftKeywords = [
    "let": "Usada para criação de constantes ou Arrays não mutáveis.",
    "var": "Usada para criação de variáveis ou Arrays mutáveis.",
    "class": "Usada para declarar classes.",
    "func": "Usada para declarar funções ou métodos.",
    "protected": "Modificador para campos, classes e métodos os tornando de acesso protegido.'."
]

// Adiciona uma palavra-chave
swiftKeywords["for"] = "Usada em Loops que enumeram elementos."

// Remove uma palavra-chave que não existe em Swift
swiftKeywords.removeValue(forKey: "protected")

// Verifica se o dicionário esta vazia e enumera seus elementos
if !swiftKeywords.isEmpty {
    // Imprime um cabeçalho
    print("Palavras-chave do Swift.")
    print("------------------------\n")
    
    for (key, value) in swiftKeywords {
        print("- \(key): \(value)")
    }
}