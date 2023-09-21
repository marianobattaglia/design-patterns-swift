//
//  PaymentTemplate.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func endPayment()
}

extension PaymentTemplate {
    func makePayment() {
        initialize()
        startPayment()
        endPayment()
    }
}
