//
//  CreditCardReceiver.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class CreditCardReceiver {
    
    func sendPINNumberToCustomer(){
        print("El PIN ha sido enviado al cliente")
    }
    
    func sendSMSToCustomerActivate() {
        print("Enviado SMS al cliente informando que su tarjeta ha sido activada")
    }
    
    func activate() {
        print("La tarjeta ha sido activada")
    }
    
    func desactivate() {
        print("La tarjeta ha sido desactivada")
    }
    
    func sendSMSToCustomerDesactivate() {
        print("Enviado SMS informando que su tarjeta ha sido desactivada")
    }
}
