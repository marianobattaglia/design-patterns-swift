//
//  Vibration.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 31/08/2023.
//

import Foundation

class Vibration: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("Está vibrando...")
    }
}
