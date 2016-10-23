//
//  CalculatorService.swift
//  Calculator
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

//
// MARK: - Classes

/**
 Uma classe representando o modelo de uma calculadora. O sufixo _Service_ informa aos usuários dessa classe que ela presta um serviço a quem for utiliza-la, categorizando essa como uma classe do Modelo.
 
 Essa classe funciona com o usuário adicionando dígitos numéricos, e ao finalizar a inserção de um número (método **addDigit:**), insere a operação que deseja efetuar (método **setOperation:**), e produz o resultado da operação (método **performOperation**).
 
 - author: Rafael Veronezi
 - version: 1.0.0
 */
class CalculatorService: NSObject {

    //
    // MARK: - Properties

    /// Recebe uma Closure que é chamada sempre que modificações são feitas na propriedade **total**.
    var totalChangedCallback: ((Int) -> ())?
    
    /// Apresenta o total da atual da calculadora.
    var total: Int = 0 {
        didSet {
            if let c = totalChangedCallback {
                c(total)
            }
        }
    }
    
    /// Armazena o número que esta sendo digitado atualmente.
    private var number: Int = 0
    
    /// Usada quando um novo número começa a ser digitado.
    private var newNumber: Int = 0
    
    /// Usada para armazenar a operação que o usuário deseja realizar. Note que se trata de um _Optional_.
    private var operation: Operation?
    
    /// Uma _flag_ usada para sinalizar que na próxima digitação de sinal deve limpar o _display_ para digitação do novo número.
    private var resetDisplay = false
    
    //
    // MARK: - Public Methods
    
    /**
     Adiciona um digito ao número que esta sendo representado atualmente no Display da Calculadora.
     
     - parameter digit: O digito a ser inserido no display.
     */
    func addDigit(_ digit: Int) throws {
        // Verifica se deve re-iniciar número que esta sendo exibido atualmente
        if resetDisplay {
            number = digit
            resetDisplay = false
        } else {
            // Verifica se o digita esta entre 0 e 9, se não dispara um erro.
            if digit < 0 || digit > 9 {
                throw CalculatorServiceError.InvalidDigit
            }
            
            // Caso contrário insere o número digitado no final do número atual
            number = (number * 10) + digit
        }
        total = number
    }
    
    /**
     Determina qual a operação a ser realizada após a digitação do próximo número.
     
     - parameter operation: A operação a ser realizada.
     - precondition: O primeiro número da operação deve ter sido totalmente inserido.
     */
    func setOperation(_ operation: Operation) {
        self.operation = operation
        newNumber = number
        number = 0
        resetDisplay = true
    }
    
    /**
     Re-inicializa o estado da calculadora para o inicial.
     */
    func clear() {
        total = 0
        number = 0
        newNumber = 0
        resetDisplay = false
        operation = nil
    }
    
    /**
     Executa a operação determinada entre os dois números digitados.
     
     - precondition: Os dois números e a operação entre deve ter sido inteiramente digitados.
     - postcondition: O valor total da operação será carregado na propriedade **total** e o estado da calculadora será re-iniciado deixando a pronta para iniciar uma nova operação.
     */
    func performOperation() throws {
        // Usa o operador **_if let_** para determinar se uma operação foi determinada
        if let operation = operation {
            // Resolve a operação
            switch (operation) {
            case .sum:
                total = newNumber + number
            case .subtract:
                total = newNumber - number
            case .multiply:
                total = newNumber * number
            case .divide:
                // Verifica se o número é diferente de Zero senão gera erro
                guard number != 0 else {
                    throw CalculatorServiceError.DivisionByZero
                }
                total = newNumber / number
            }

            // Re-inicia o estado da calculadora
            number = 0
            newNumber = 0
            resetDisplay = true
            self.operation = nil
        }
    }
    
}

//
// MARK: - Tipos Auxiliares

/// Enumera os erros possíveis de acontecer no Serviço da Calculadora.
enum CalculatorServiceError : Error {
    /// Acontece quando um dígito inválido é passado para a calculadora.
    case InvalidDigit
    
    /// Acontece quando o usuário tenta dividir um número por 0.
    case DivisionByZero
}
