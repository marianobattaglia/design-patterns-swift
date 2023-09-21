//
//  Visa.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class Visa: PaymentTemplate {
    func initialize() {
        print("Inicializando el pago con Visa")
    }
    
    func startPayment() {
        print("Realizando el pago a traves de los servidores de Visa")
    }
    
    func endPayment() {
        print("Finalizando el pago a traves de los servidores de Visa")
    }
}
