//
//  GasolineOffer.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class GassolineOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.gassolineOffer(gassolineOffer: self)
    }
}
