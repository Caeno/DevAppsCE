/*:
 ### Exercício 20
 Elabore uma rotina que receba como parâmetros dois números positivos, e calcule retornando a soma dos N números inteiros existentes entre eles.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 */

// Declara uma função que recebendo os dois números retorna a soma dos elementos no intervalo
func sumNumbersInRange(start: Int, end: Int) -> Int {
    // Verifica se o número inicial é maior que o final, nesse caso retorna 0.
    if start > end {
        print("O número inicial não pode ser maior que o final.")
        return 0
    }
    
    // Calcula a soma
    var sum = 0
    for i in start...end {
        sum += i
    }
    
    return sum
}

// Declara uma lista (Array) de tuplas com dois números
let ranges = [
    (10, 20),
    (5, 40),
    (12, 27),
    (1, 10),
    (9, 25),
    (10, 5),
]

// Imprime o resultado
print("-- Soma de números em intervalos")
for (start, end) in ranges {
    var sum = sumNumbersInRange(start: start, end: end)
    print("A soma dos números no intervalo de \(start) e \(end) é \(sum)")
}