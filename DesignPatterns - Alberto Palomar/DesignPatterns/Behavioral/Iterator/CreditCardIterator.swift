//
//  CreditCardIterator.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class CreditCardIterator: IteratorProtocol {
    private var position = 0
    let cards: CreditCardCollection
    
    init(cards: CreditCardCollection) {
        self.cards = cards
    }
    
    func next() -> CreditCard? {
        defer { position += 1 }
        return cards.items.count > position ? cards.items[position] : nil
    }
    
    
}
