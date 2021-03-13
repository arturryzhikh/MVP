//
//  ViewController.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import UIKit

class ExampleController: UIViewController {
    
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: PresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func didTapAction(_ sender: Any) {
        
        self.presenter.showGreeting()
       
    }
  
    

}

extension ExampleController: ViewProtocol {
    func setGreeting(greeting: String) {
        greetingLabel.text = greetingLabel.text!.isEmpty ? greeting : ""
        
    }
}
