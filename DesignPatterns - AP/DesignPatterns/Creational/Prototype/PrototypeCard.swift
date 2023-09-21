//
//  PrototypeCard.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 11/08/2023.
//

import Foundation

// Prototype
class PrototypeCard: NSCopying {
    var cardNumber = 0
    var cardType = ""
    
    required init(cardNumber: Int = 0, cardType: String = "") {
        self.cardNumber = cardNumber
        self.cardType = cardType
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        print("Los valores de la Clase PrototypeCard han sido clonados")
        return prototype
    }
}
