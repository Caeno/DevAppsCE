/*:
 ### Exercício 13
 Construa um programa que converta uma determinada temperatura em Celsius para Fahrenheit, considerando a seguinte fórmula:
 
 * C = (F - 32) / 1.8
 
 Onde C é a temperatura em Celsius e F a temperatura em Fahrenheit.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Na declaração da função **toCelsius** usamos um recurso chamado "alias" para determinar um rótulo para o nome de um parâmetro. Em Swift os rótulos são usados para identificar o parâmetro que esta sendo passado quando a função é chamada. Podemos dar nomes diferentes para o rótulo e para a variável que representa o argumento, como foi feito na função. O nome **fahreinheit** é o rótulo do parâmetro e **temperature** é o nome da variável que representa o argumento que usamos dentro da função. Ao formular suas funções em Swift utilize o recurso de rótulos para criar nomes que possam ser lidos como se fossem uma sentença em língua inglesa.
 */


// Declara uma função de conversão para Fahrenheit
func toCelsius(fahrenheit temperature: Double) -> Double {
    return (temperature - 32) / 1.8
}

// Declara uma lista de valores em Fahrenheit
let temperatures = [ 32.8, 70.5, 112.4, 15.3, 97.1 ]

// Imprime os valores convertidos
for temperature in temperatures {
    print("F = \(temperature) - C = \(toCelsius(fahrenheit: temperature).formatted(format: "%.1f"))")
}