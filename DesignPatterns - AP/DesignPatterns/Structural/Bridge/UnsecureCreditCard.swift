//
//  UnsecureCreditCard.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class UnsecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado Sin Seguridad")
    }
}
