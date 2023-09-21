//
//  OperationAdaptee.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class OperationAdaptee {
    
    /// Código que ya tenemos y que queremos ADAPTAR...
    
    var a: Int
    var b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func sum() -> Int {
        return a + b
    }
}
