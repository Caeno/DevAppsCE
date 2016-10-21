//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Hakan Satya on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    //
    // MARK: - Properties
    
    var calcService = CalculatorService()
    
    //
    // MARK: - Outlets
    
    @IBOutlet weak var displayTextField: UITextField!
    
    //
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calcService.totalChangedCallback = { value in
            self.displayTextField.text = String(value)
        }
    }

    //
    // MARK: - Action Methods
    
    @IBAction func typeDigitTouched(_ sender: UIButton) {
        let digit = Int(sender.title(for: .normal)!)!
        calcService.addDigit(digit)
    }
    
    @IBAction func typeOperationTouched(_ sender: UIButton) {
        let operation = Operation(rawValue: sender.tag)!
        calcService.set(operation: operation)
    }
    
    @IBAction func clearTouched(_ sender: UIButton) {
        calcService.clear()
    }
    
    @IBAction func equalsTouched(_ sender: UIButton) {
        calcService.performEquals()
    }
    
}
