//
//  ViewController.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import UIKit

class CommentsController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: PresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
  
  
    

}

extension CommentsController: ViewProtocol {
    
    func success() {
        tableView.reloadData()
    }
    
    func failure(error: Error?) {
        let alert = UIAlertController(title: "Error occured while fetching data", message: "\(String(describing: error?.localizedDescription))", preferredStyle: UIAlertController.Style.alert)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}

extension CommentsController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.comments?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.numberOfLines = 0
        if let comment = presenter.comments?[indexPath.row] {
            cell.textLabel?.text = " Id: \(comment.id) \n postId: \(comment.postId) \n Name: \(comment.name) \n Email: \(comment.email) \nComment: \(comment.body)"
        }
        
        return cell
    }
    
    
}

extension CommentsController: UITableViewDelegate {
    
}
