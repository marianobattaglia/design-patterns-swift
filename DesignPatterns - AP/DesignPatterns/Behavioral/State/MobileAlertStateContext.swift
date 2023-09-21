//
//  MobileAlertStateContext.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 31/08/2023.
//

import Foundation

class MobileAlertStateContext {
    var currentState: MobileAlertState = Sound()
    
    func setState(state: MobileAlertState) {
        currentState = state
    }
    
    func alert() {
        currentState.alert(context: self)
    }
}
