//
//  MessagePublisher.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 25/08/2023.
//

import Foundation

class MessagePublisher: Subject {
    
    var observers = [Observer]()
    
    func attach(o: Observer) {
        observers.append(o)
    }
    
    func detacht(o: Observer) {
        if let index = observers.firstIndex(where: { $0 as AnyObject === o as AnyObject }) {
            observers.remove(at: index)
        }
    }
    
    func notifyUpdate(trafficLight: TrafficLight) {
        observers.forEach({ $0.update(trafficLight: trafficLight) })
    }
}
