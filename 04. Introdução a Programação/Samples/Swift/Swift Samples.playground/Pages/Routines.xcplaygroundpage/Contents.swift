//: [Indice](Main) | [Página Anterior](@previous) | [Próxima Página](@next)

/*:
 ### Rotinas - Declarando e Usando funções
 No exemplo abaixo usamos a capacidade de declarar funções no Swift para criar uma rotina capaz de somar dois números e retornar seu valor. A rotina é então utilizada para realizar duas operações de soma distintas.
 */

// Declaração da função
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// Usando a função para obter uma somatória
var soma = sum(a: 10, b: 20)
print("O resultado da soma é: \(soma)")

// Re-aproveitando a variável para calcular uma nova somatória
soma = sum(a: 22, b: 87)
print("O resultado da soma é: \(soma)")