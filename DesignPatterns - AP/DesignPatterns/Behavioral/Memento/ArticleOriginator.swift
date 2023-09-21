//
//  ArticleOriginator.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 22/08/2023.
//

import Foundation

struct ArticleOriginator {
    var id: Int
    var title: String
    var text: String
    
    func createMemento() -> ArticleMemento {
        let memento = ArticleMemento(id: id, title: title, text: text)
        return memento
    }
    
    mutating func restore(memento: ArticleMemento) {
        self.id = memento.id
        self.title = memento.title
        self.text = memento.text
    }
}
