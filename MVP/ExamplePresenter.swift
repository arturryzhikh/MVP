//
//  ExamplePresenter.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import Foundation

protocol ViewProtocol: class {
    func setGreeting(greeting: String)
}

protocol PresenterProtocol: class {
    
    init(view: ViewProtocol, person: Comment)
    func showGreeting()
    
}

class ExamplePresenter: PresenterProtocol {
    
    let view: ViewProtocol
    let person: Comment
    
    required init(view: ViewProtocol, person: Comment) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = person.firstName + " " + person.lastName
        view.setGreeting(greeting: greeting)
    }
    
    
}
