//
//  Subject.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 25/08/2023.
//

import Foundation

protocol Subject {
    func attach(o: Observer)
    func detacht(o: Observer)
    func notifyUpdate(trafficLight: TrafficLight)
}
