//
//  ConcreteColleague2.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 22/08/2023.
//

import Foundation

class ConcreteColleague2: Colleague {
    
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    override func messageReceived(message: String) {
        print("El usuario 2 ha recibido el mensaje: \(message)")
    }
    
}
