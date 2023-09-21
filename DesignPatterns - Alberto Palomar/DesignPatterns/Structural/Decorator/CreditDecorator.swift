//
//  CreditDecorator.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class CreditDecorator: CreditComponent {
    
    var decorated: CreditComponent
    
    init(decorated: CreditComponent) {
        self.decorated = decorated
    }
    
    func showCredit() {
        self.decorated.showCredit()
    }
    
}
