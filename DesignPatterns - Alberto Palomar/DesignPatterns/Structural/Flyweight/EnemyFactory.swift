//
//  EnemyFactory.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class EnemyFactory {
    private var enemies = [String: Enemy]()
    
    func getEnemy(type: String) -> Enemy {
        var enemy: Enemy
        
        if (enemies[type] != nil) {
            enemy = enemies[type]!
        } else {
            switch type {
                case "Private":
                    print("Soldado Creado")
                    enemy = Private()
                case "Detective":
                    print("Detective Creado")
                    enemy = Detective()
                default:
                    enemy = Detective()
            }
            enemies[type] = enemy
        }
        return enemy
    }
}
