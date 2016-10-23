//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Rafael Veronezi on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

/**
 View Controller usado para gerenciar a tela principal da Calculadora.
 
 - author: Rafael Veronezi
 - version: 1.0.0
 */
class CalculatorViewController: UIViewController {

    //
    // MARK: - Properties
    
    /// Modelo utilizado pelo View Controller para realizar as operações da Calculadora
    var calcService = CalculatorService()
    
    //
    // MARK: - Outlets
    
    /// Um outlet para o componente _UITextField_ que representa o display numérico da Calculadora
    @IBOutlet weak var displayTextField: UITextField!
    
    //
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configra o Modelo para que o display numérico da calculadora seja atualizado com o valor do total sempre que este for modificado.
        calcService.totalChangedCallback = { value in
            self.displayTextField.text = String(value)
        }
    }

    //
    // MARK: - Action Methods
    
    /// Action Method disparado quando algum dos digitos numéricos é pressionado
    @IBAction func typeDigitTouched(_ sender: UIButton) {
        // Extrai o digito do título atual do botão e tenta transforma ele em um valor Int.
        if let title = sender.currentTitle, let digit = Int(title) {
            try! calcService.addDigit(digit)
        }
    }
    
    // Action Method disparado quando uma operação é pressionada
    @IBAction func typeOperationTouched(_ sender: UIButton) {
        let operation = Operation(rawValue: sender.tag)!
        calcService.setOperation(operation)
    }
    
    // Action Method disparado quando o botão Limpar é pressionado
    @IBAction func clearTouched(_ sender: UIButton) {
        calcService.clear()
    }
    
    // Action Method disparado quando o botão de igual é pressionado
    @IBAction func equalsTouched(_ sender: UIButton) {
        do {
            try calcService.performOperation()
        } catch CalculatorServiceError.DivisionByZero {
            let alert = UIAlertController(title: "Calculadora", message: "Você não pode dividir o número por 0.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        } catch {
            // Ignora outros erros
        }
    }
    
}
