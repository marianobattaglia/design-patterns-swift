//
//  InternationalPaymentDecorator.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class InternationalPaymentDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }
    
    func configInternationalPayment() {
        print("Tarjeta configurada con pago internacional")
    }
    
}
