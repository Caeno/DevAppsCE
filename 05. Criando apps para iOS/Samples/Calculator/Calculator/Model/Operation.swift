//
//  Operation.swift
//  Calculator
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import Foundation

/**
 Enumera as operações que podem ser realizadas pela versão atual do serviço de Calculadora (classe **_CalculatorService_**). Essa enumeração utiliza números inteiros para identificar seus elementos, de forma que possamos usar esses códigos para referenciar a enumeração quando ela for utilizada.
 */
enum Operation : Int {
    
    /// Operação de Soma
    case sum = 1
    
    /// Operação de Subtração
    case subtract = 2
    
    // Operação de Multiplicação
    case multiply = 3
    
    /// Operação de Divisão
    case divide = 4
    
}
