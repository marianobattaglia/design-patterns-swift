//
//  Paypal.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class Paypal: PaymentTemplate {
    func initialize() {
        print("Inicializando el pago con Paypal")
    }
    
    func startPayment() {
        print("Realizando el pago a traves de los servidores de Paypal")
    }
    
    func endPayment() {
        print("Finalizando el pago a traves de los servidores de Paypal")
    }
}
