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
       
        let vc = CommentsController(nibName: "CommentView",bundle: .main)
        vc.presenter = CommentsPresenter(view: vc, networkService: NetworkService())
        return vc
    }
    
    
}
