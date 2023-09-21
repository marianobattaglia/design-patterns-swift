//
//  AccessToInternet.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class AccessToInternet: Internet {
    func connectTo(url: String) {
        print("Conectando a ...: \(url)")
    }
}
