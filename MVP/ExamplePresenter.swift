//
//  ExamplePresenter.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import Foundation

protocol ViewProtocol: class {
    
    func success()
    func failure(error: Error?)
    
}

protocol PresenterProtocol: class {
    var comments: [Comment]? { get set }
    init(view: ViewProtocol, networkService: Networking)
    func getComments()
    
}

class ExamplePresenter: PresenterProtocol {
    
    var comments: [Comment]?
    
    func getComments() {
        networkService.getComments { [weak self] (result) in
           
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let comments):
                    self.comments = comments
                    self.view?.success()
                case .failure(let error):
                    print(error)
                    self.view?.failure(error: error)
                }
            }
        }
    }
    
    required init(view: ViewProtocol, networkService: Networking) {
        self.view = view
        self.networkService = networkService
        getComments()
    }
    
    weak var view: ViewProtocol?
    let networkService: Networking!
    
   
    
}
