//
//  CreditCardBridge.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class CreditCardBridge {
    let creditCard: CreditCardProtocol
    
    init(creditCard: CreditCardProtocol) {
        self.creditCard = creditCard
    }
    
    func makePayment() {}
}
