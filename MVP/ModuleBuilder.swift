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
       
        let vc = ExampleController(nibName: "ExampleView",bundle: .main)
        vc.presenter = ExamplePresenter(view: vc, networkService: NetworkService())
        return vc
    }
    
    
}
