/*:
 ## Exemplos de Código da Aula de Introdução a Programação
 Esse playground inclui os exemplos de código apresentados nos Slides da Aula de **Introdução a Programação**, na seção onde são apresentadas as estruturas básicas das linguagens.
 */

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

/*:
 ### Estruturas de Repetição - Loop for
 No exemplo abaixo usamos o loop **for...in** do Swift para listar as tabuadas de 2 a 9. São empregados dois loops _aninhados_ de forma que o mais externo repete o interno partindo no número 2 até o número 9. O loop interno por sua vez passa pelos números de 1 a 10, multiplicando eles pelo número representando a tabuada atual.
 */
// Loop externo, usando um Range começara com o número 2 até o 9.
for tabuada in 2...9 {
    print("Tabuada do \(tabuada):")
    
    // Loop interno, passa pelos números de 1 a 10 multiplicando pelo número corrente
    for numero in 1...10 {
        var resultado = tabuada * numero;
        print("\t\(tabuada) x \(numero) = \(resultado)")
    }
}


/*:
 ### Estruturas de Repetição - Loop while
 No exemplo abaixo usamos o loop **while** do Swift para calcular o fatorial de um número. Essa operação matemática é feita multiplicando o número por cada um dos números que o antecedem, e é representado pelo símbolo do ponto de exclamação (!).
 
 O cálculo do fatorial tem diversas aplicações no campo de Ciências da Computação, especialmente para cálculo da efiência de algorítimos.
 */

// Declaração das variáveis
let fatorial = 5
var numero = fatorial
var resultado: Int = 1

// Executa o cálculo usando o loop for
while (numero > 0) {
    resultado = resultado * numero
    numero = numero - 1
}

// Imprime o resultado
print("\(fatorial)! = \(resultado)")


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










