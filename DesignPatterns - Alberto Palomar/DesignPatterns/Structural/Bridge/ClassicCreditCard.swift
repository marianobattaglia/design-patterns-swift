//
//  ClassicCreditCard.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class ClassicCreditCard: CreditCardBridge {
    override init(creditCard: CreditCardProtocol) {
        super.init(creditCard: creditCard)
    }
    
    override func makePayment() {
        /// Realizará el pago de acuerdo al protocolo que hayamos elegido
        creditCard.makePayment()
    }
}
