//
//  Car.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 25/08/2023.
//

import Foundation

class Car: Observer {
    func update(trafficLight: TrafficLight) {
        if (trafficLight.status as AnyObject === "CAR_RED" as AnyObject) {
            print("Semaforo coche Rojo -> Coche NO puede pasar")
        } else {
            print("Semaforo coche Verde -> Coche SI puede pasar")
        }
    }
}
