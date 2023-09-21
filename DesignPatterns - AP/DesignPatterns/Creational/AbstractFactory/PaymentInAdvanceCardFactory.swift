//
//  PaymentInAdvanceCardFactory.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 10/08/2023.
//

import Foundation

class PaymentInAdvanceCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }
    
    func createMethod() -> Method {
        return PaymentInAdvanceMethod()
    }
}
