//
//  MontlyGoogleFactory.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 10/08/2023.
//

import Foundation

class MontlyGoogleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAF()
    }
    
    func createMethod() -> Method {
        return MontlyMethod()
    }
}
