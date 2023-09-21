//
//  CreditCardCollection.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class CreditCardCollection {
    
    var items = [CreditCard]()
    
    func append(_ item: CreditCard) {
        self.items.append(item)
    }
}

extension CreditCardCollection: Sequence {
    
    func makeIterator() -> CreditCardIterator {
        return CreditCardIterator(cards: self)
    }
    
}
