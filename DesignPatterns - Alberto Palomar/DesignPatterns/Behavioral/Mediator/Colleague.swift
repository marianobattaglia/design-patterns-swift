//
//  Colleague.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 22/08/2023.
//

import Foundation

class Colleague {
    let mediator: Mediator
    
    init(mediator: Mediator) {
        self.mediator = mediator
    }
    
    func send(message: String) {}
    
    func messageReceived(message: String) {}
}
