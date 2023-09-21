//
//  CreditCardVisitor.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

protocol CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer)
    func flightOffer(flightOffer: FlightsOffer)
}
