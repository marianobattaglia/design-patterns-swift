//
//  Mediator.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 22/08/2023.
//

import Foundation

protocol Mediator {
    func send(message: String, colleague: Colleague)
}
