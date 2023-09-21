//
//  SecureDecorator.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class SecureDecorator: CreditDecorator {
    
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }
    
    override func showCredit() {
        decorated.showCredit()
        configSecure()
    }
    
    func configSecure() {
        print("Tarjeta configurada con pago Secure")
    }
    
}
