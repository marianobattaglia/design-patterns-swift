//
//  ClassicCreditCardVisitor.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class ClassicCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento del 3% en Gasolina con tu tarjeta clasica")
    }
    
    func flightOffer(flightOffer: FlightsOffer) {
        print("Descuento del 5% en Vuelos con tu tarjeta clasica")
    }
}
