//
//  SavingAccountLeaf.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class SavingAccountLeaf: AccountComponent {
    var accountBalance: Float = 0.0
    
    func showAccountName() {
        print("Cuenta Ahorro")
    }
}
