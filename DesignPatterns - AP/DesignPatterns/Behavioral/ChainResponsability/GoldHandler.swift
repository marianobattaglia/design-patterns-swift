//
//  GoldHandler.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class GoldHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        if (totalLoan <= 10000) {
            print("Esta solicitud de tarjeta de credito la maneja la clase Gold Handler")
        } else {
            next!.creditCardRequest(totalLoan: totalLoan)
        }
    }
    
}
