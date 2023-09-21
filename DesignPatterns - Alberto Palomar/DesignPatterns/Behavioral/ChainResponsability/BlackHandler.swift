//
//  BlackHandler.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class BlackHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if (totalLoan > 50000) {
            print("Esta solicitud de tarjeta de credito la maneja la clase Black Handler")
        }
    }
    
}
