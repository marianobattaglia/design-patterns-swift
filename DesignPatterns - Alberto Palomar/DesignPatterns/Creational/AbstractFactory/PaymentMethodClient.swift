//
//  PaymentMethodClient.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 10/08/2023.
//

import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory) {
        let payment = factory.createPayment()
        let method = factory.createMethod()
        
        payment.doPayment()
        method.calculatePayment()
    }
}
