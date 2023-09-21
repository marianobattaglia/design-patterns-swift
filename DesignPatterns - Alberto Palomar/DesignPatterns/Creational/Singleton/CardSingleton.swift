//
//  CardSingleton.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 11/08/2023.
//

import Foundation

class CardSingleton {
    // Permite acceder a la única instsancia de la clase
    static var shared = CardSingleton()
    // Inicializador privado, asegurando que nunca se llama desde fuera del Singleton
    private init() {}
    
    func doSomething() {
        print("Ejecutando metodo de la clase Singleton.")
    }
}
