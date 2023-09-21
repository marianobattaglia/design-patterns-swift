//
//  VisaCard.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 11/08/2023.
//

import Foundation

// ConcretePrototype
class VisaCard: PrototypeCard {
    
    var cardName = "Visa"
    
    func copy() -> Any {
        return copy(with: nil)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCard else {
            return VisaCard()
        }
        prototype.cardName = cardName
        print("Clonado tarjeta Visa")
        return prototype
    }
    
}
