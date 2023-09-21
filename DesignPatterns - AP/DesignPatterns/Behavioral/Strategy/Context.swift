//
//  Context.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 31/08/2023.
//

import Foundation

class Context {
    var strategyTextFormatter: StrategyTextFormatter
    
    init(strategyTextFormatter: StrategyTextFormatter) {
        self.strategyTextFormatter = strategyTextFormatter
    }
    
    func publishText(text: String) {
        strategyTextFormatter.format(text: text)
    }
}
