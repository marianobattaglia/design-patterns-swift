//
//  BankHandler.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 16/08/2023.
//

import Foundation

class BankHandler: ApprovedLoanHandler {
    
    private var next: ApprovedLoanHandler?
    
    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }
    
    func getNext() -> ApprovedLoanHandler {
        return next!
    }
    
    func creditCardRequest(totalLoan: Int) {
        let gold = GoldHandler()
        self.setNext(handler: gold)
        
        let platinium = PlatiniumHandler()
        gold.setNext(handler: platinium)
        
        let black = BlackHandler()
        platinium.setNext(handler: black)
        
        next?.creditCardRequest(totalLoan: totalLoan)
    }
    
    
}
