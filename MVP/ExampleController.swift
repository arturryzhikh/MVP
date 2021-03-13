//
//  ViewController.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import UIKit

class ExampleController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: PresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
  
  
    

}

extension ExampleController: ViewProtocol {
    func setGreeting(greeting: String) {
       
        
    }
}

extension ExampleController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = "Test"
        return cell
    }
    
    
}

extension ExampleController: UITableViewDelegate {
    
}
