//
//  Pedestrian.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 25/08/2023.
//

import Foundation

class Pedestrian: Observer {
    func update(trafficLight: TrafficLight) {
        if (trafficLight.status as AnyObject === "CAR_RED" as AnyObject) {
            print("Semaforo peaton Verde -> Peaton SI puede pasar")
        } else {
            print("Semaforo peaton Rojo -> Peaton NO puede pasar")
        }
    }
}
