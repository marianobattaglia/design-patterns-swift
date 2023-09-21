//
//  CreditCardInvoker.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class CreditCardInvoker {
    private var command: Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func run() {
        command?.execute()
    }
}
