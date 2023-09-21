//
//  OperationAdapter.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 01/09/2023.
//

import Foundation

class OperationAdapter: OperationTarget {
    let adaptee: OperationAdaptee
    
    init(adaptee: OperationAdaptee) {
        self.adaptee = adaptee
    }
    
    var getSum: String {
        return String(self.adaptee.sum())
    }
    
}
