//
//  CalculatorService.swift
//  Calculator
//
//  Created by Hakan Satya on 21/10/16.
//  Copyright © 2016 Caeno. All rights reserved.
//

import UIKit

class CalculatorService: NSObject {

    //
    // MARK: - Properties
    
    var totalChangedCallback: ((Int) -> ())?
    var total: Int = 0 {
        didSet {
            if let c = totalChangedCallback {
                c(total)
            }
        }
    }
    
    private var number: Int = 0
    private var newNumber: Int = 0
    private var operation: Operation?
    private var resetDisplay = false
    
    //
    // MARK: - Public Methods
    
    func addDigit(_ digit: Int) {
        if resetDisplay {
            number = digit
            resetDisplay = false
        } else {
            number = (number * 10) + digit
        }
        total = number
    }
    
    func set(operation: Operation) {
        self.operation = operation
        newNumber = number
        number = 0
        resetDisplay = true
    }
    
    func clear() {
        total = 0
        number = 0
        newNumber = 0
        resetDisplay = false
        operation = nil
    }
    
    //
    // MARK: - Public Methods
    
    func performEquals() {
        if let operation = operation {
            switch (operation) {
            case .sum:
                total = newNumber + number
            case .subtract:
                total = newNumber - number
            case .multiply:
                total = newNumber * number
            case .divide:
                total = newNumber / number
            }

            number = 0
            newNumber = 0
            resetDisplay = true
            self.operation = nil
        }
    }
    
}
