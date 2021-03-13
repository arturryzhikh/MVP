//
//  DetailViewController.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var commentLabel: UILabel!
    
    var presenter: DetailPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setComment()
        
    }



}

extension DetailViewController: DetailViewProtocol {
    func setComment(_ comment: Comment?) {
        if let comment = comment {
            commentLabel.text = comment.body
        } else {
            commentLabel.text = "No comment available"
        }
    }
    
    
}
