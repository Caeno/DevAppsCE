/*:
 ### Exercício 07
 Escreva um programa que carregue o valor de hora aula e o número de aulas dadas no mês e o percentual de desconto do INSS em variáveis. Calcule e apresente o salário líquido e o salário bruto.
 
 [Índice](Index) | [Exercício Anterior](@previous) | [Próximo Exercício](@next)
 
 >Esse exercício utiliza duas extensões do tipo _Double_ declaradas no arquivo **Extensions.swift** na pasta de Sources desse Playground. Essas extensões retornam seus valores formatados como monetários (currencyDisplay) e percentual (percentDisplay).
 */
import Foundation

// Declara os valores utilizados no exercício
var classValue = 40.0           // Valor pago por aula
var classCount = 8              // Quantidade de aulas
var taxDiscount = 0.15          // Percentual de desconto do INSS

// Calcula o salário bruto (Quantidade de aulas multiplicado pelo valor da aula)
var grossSalary = classValue * Double(classCount)

// Calcula o salário líquido (Desconta o INSS do Bruto)
var discount = (grossSalary * taxDiscount)
var netWage = grossSalary - discount

// Imprime
print("O salário bruto é \(grossSalary.currencyDisplay) e o líquido é \(netWage.currencyDisplay).")
print("O percentual de desconto do INSS é \(taxDiscount.percentDisplay), totalizando \(discount.currencyDisplay).")
