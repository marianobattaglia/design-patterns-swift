//
//  Expression.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 31/08/2023.
//

import Foundation

protocol Expression {
    func interpret(context: String) -> Bool
}
