//
//  CreditCardDesactivateCommand.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class CreditCardDesactivateCommand: Command {
    
    var creditCardReceiver: CreditCardReceiver
    
    init(creditCardReceiver: CreditCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }
    
    func execute() {
        creditCardReceiver.desactivate()
        creditCardReceiver.sendSMSToCustomerDesactivate()
    }
}
