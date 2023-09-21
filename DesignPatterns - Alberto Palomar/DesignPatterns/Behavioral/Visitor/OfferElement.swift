//
//  OfferElement.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

protocol OfferElement {
    func accept(visitor: CreditCardVisitor)
}
