//
//  ViewController.swift
//  PassData
//
//  Created by Ibrahim_ios on 2022/09/27.
//

import UIKit

class ViewController: UIViewController {

    // MARK:  IBOutlets
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
    
    // MARK:  IBActions
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        self.returnLabel.text = svc.textLabel.text
    }
    
    // MARK:  Segue function
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTextField.text
    }
    
    // MARK:  Hide keyboard
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

