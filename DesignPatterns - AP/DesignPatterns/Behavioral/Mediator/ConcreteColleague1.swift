//
//  ConcreteColleague1.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 22/08/2023.
//

import Foundation

class ConcreteColleague1: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("El usuario 1 ha recibido el mensaje: \(message)")
    }
    
}
