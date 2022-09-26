//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Ibrahim_ios on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    // MARK:  IBOutlets
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func findDayButtonPressed(_ sender: UIButton) {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        guard let day = dateTextField.text, let month = monthTextField.text, let year = yearTextField.text else {return}
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
                
        guard let date = calendar.date(from: dateComponents) else{return}
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"

        let weekday = dateFormatter.string(from: date)
        
        resultLabel.text = weekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

