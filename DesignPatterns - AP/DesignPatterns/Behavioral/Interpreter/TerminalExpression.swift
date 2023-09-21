//
//  TerminalExpression.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 31/08/2023.
//

import Foundation

class TerminalExpression: Expression {
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    func interpret(context: String) -> Bool {
        if (context.contains(text)) {
            return true
        } else {
            return false
        }
    }
    
}
