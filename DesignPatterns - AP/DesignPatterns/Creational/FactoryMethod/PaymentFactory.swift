//
//  PaymentFactory.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 10/08/2023.
//

import Foundation

class PaymentFactory {
    static func buildPayment(type: TypePayment) -> Payment {
        switch type {
            case .GOOGLE:
                return GooglePayment()
            case .CARD:
                return CardPayment()
        }
    }
}
