//
//  BlackCreditCardVisitor.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class BlackCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento del 10% en Gasolina con tu tarjeta Black")
    }
    
    func flightOffer(flightOffer: FlightsOffer) {
        print("Descuento del 25% en Vuelos con tu tarjeta Black")
    }
}
