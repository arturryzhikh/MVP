//
//  DetailPresenter.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import Foundation

protocol DetailViewProtocol: class {
    
    func setComment(_ comment: Comment?)
    
}

protocol DetailPresenterProtocol {
    
    init(view: DetailViewProtocol, networkService: Networking,comment: Comment?)
    func setComment()
}

class DetailPresenter: DetailPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    let networkService: Networking!
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: Networking, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
    }
    
    func setComment() {
        view?.setComment(comment)
    }
    
    
}

