//: [Página Anterior](@previous) | [Próxima Página](@next)

/*:
 ### Condicionais - Usando if
 No exemplo abaixo usamos a construção **if** do Swift para, através da idade passada na variável _idade_ determinar em qual faixa etária a pessoa se classifica.
 */
var idade = 19
if (idade < 12) {
    print("Criança")
} else if (idade < 18) {
    print("Adolescente")
} else if (idade < 50) {
    print("Adulto")
} else if (idade < 70) {
    print("Meia-idade")
} else {
    print("Idoso")
}

/*:
 ### Condicionais - Usando switch
 No exemplo abaixo usamos a construção **switch...case** do Swift para, a partir da variável _temperatura_, que armazena um valor em Celsius, mostrar uma mensagem tentando descrever como esta o clima.
 
 Note a utilização do operador **Range** para criar condições que sejam satisfeitas caso o valor esteja entre dentro daquele intervalo. Também usamos a condicional _let...where_ para verificar uma condição booleana ao invés de um caso específico.
 
 A construção switch no Swift é extremamente versátil e recomendamos verificar sua [documentação](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html "Documentação oficial do Swift das estruturas de Controle de Fluxo").
 */

var temperature = -2

switch temperature {
case let x where x < 0:
    print("Congelando!!! ❄️")
case 0..<12:
    print("Friozinho...")
case 12..<21:
    print("Clima fresco!")
case 21..<30:
    print("Tempo quente!")
default:
    print("Quente demais!!! 🔥")
}
