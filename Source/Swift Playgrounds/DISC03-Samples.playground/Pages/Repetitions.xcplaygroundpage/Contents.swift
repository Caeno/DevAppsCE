//: [Página Anterior](@previous) | [Próxima Página](@next)

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
