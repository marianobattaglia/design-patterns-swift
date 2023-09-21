//
//  Detective.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class Detective: Enemy {
    let life = 1000
    var weapon = ""
    
    func setWeapon(weapon: String) {
        self.weapon = weapon
        print("Weapon creada: \(weapon)")
    }
    
    func lifePoints() {
        print("La vida de un detective es: \(life)")
    }
}
