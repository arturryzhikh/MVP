//
//  Builder.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//
import UIKit

protocol Builder {
    
    
    static func createExampleModule() -> UIViewController
    static func createDetailModule(with comment: Comment?) -> UIViewController
}

class ModuleBuilder: Builder {
    static func createDetailModule(with comment: Comment? ) -> UIViewController {
        let vc = DetailViewController(nibName: "DetailViewController", bundle: nil)
        let presenter = DetailPresenter(view: vc, networkService: NetworkService(), comment: comment)
        vc.presenter = presenter
        return vc
    }
    
    
    static func createExampleModule() -> UIViewController {
       
        let vc = CommentsViewController(nibName: "CommentsViewController",bundle: nil)
        vc.presenter = CommentsPresenter(view: vc, networkService: NetworkService())
        return vc
    }
    
    
}
