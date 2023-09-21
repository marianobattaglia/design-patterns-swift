//
//  Caretaker.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 22/08/2023.
//

import Foundation

class Caretaker {
    private var estados = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento) {
        estados.append(memento)
    }
    
    func getMemento(index: Int) -> ArticleMemento {
        return estados[index]
    }
}
