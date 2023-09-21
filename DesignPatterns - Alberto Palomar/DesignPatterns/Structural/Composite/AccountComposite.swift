//
//  AccountComposite.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class AccountComposite: AccountComponent {
    
    var childAccounts = [AccountComponent]()
    
    func addAccount(_ account: AccountComponent) {
        childAccounts.append(account)
    }
    
    func removeAccount(_ account: AccountComponent) {
        // Colocar la lógica para comparar dentro del array y eliminar la cuenta
    }
    
    func showAccountName() {
        for child in childAccounts {
            child.showAccountName()
        }
    }
}
