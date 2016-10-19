/*:
 ### Exercício 11
 Escreva um programa para verificar se um determinado número é positivo ou negativo.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Para solução desse exercício usamos o operador ternário do Swift: **?:**, conhecido como _if...else em linha_. Esse operador testa uma condição lógica que deve ser colocada antes do sinal de interrogação. Se essa condição for verdadeira, ela retorna o primeiro valor, caso contrário retorna o segundo, depois do sinal de **_:_**.
 */

// Declara uma função para verificar se o número é positivo
func isPositive(number: Int) -> Bool {
    return number >= 0
}

// Declara uma lista de números e verifica se ele é positivo
let numbers = [ 10, -12, 25, -15, 21, 12, -48, 13, 12 ]

print("-- Imprime os números dizendo se são positivos ou negativos")
for number in numbers {
    print("O número \(number) é \(isPositive(number: number) ? "positivo" : "negativo")")
}