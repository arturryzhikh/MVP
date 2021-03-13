//
//  Builder.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//
import UIKit

protocol Builder {
    
    
    static func createExampleModule() -> UIViewController
    
}

class ModuleBuilder: Builder {
    
    static func createExampleModule() -> UIViewController {
        let model = Comment(firstName: "FirstName", lastName: "LastName")
        let vc = ExampleController(nibName: "ExampleView",bundle: .main)
        let presenter = ExamplePresenter(view: vc, person: model)
        vc.presenter = presenter
        return vc
    }
    
    
}
