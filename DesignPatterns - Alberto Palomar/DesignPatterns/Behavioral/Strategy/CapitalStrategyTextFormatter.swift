//
//  CapitalStrategyTextFormatter.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 31/08/2023.
//

import Foundation

class CapitalStrategyTextFormatter: StrategyTextFormatter {
    func format(text: String) {
        print("Texto en Mayusculas: \(text.uppercased())")
    }
}
