//
//  SecureCreditCard.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class SecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado con protocolo de Máxima Seguridad")
    }
}
