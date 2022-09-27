//
//  SecondViewController.swift
//  PassData
//
//  Created by Ibrahim_ios on 2022/09/27.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK:  Vars
    
    var login: String?
    
    // MARK:  IBOutlets
    
    @IBOutlet weak var textLabel: UILabel!
    
    // MARK:  IBActions
    
    @IBAction func returnBackButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    // MARK:  View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else {return}
        textLabel.text = "Hello, \(login)"
    }
}
