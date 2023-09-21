//
//  FlightsOffer.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class FlightsOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.flightOffer(flightOffer: self)
    }
}
