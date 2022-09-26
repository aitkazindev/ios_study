//
//  ViewController.swift
//  TConverter
//
//  Created by Ibrahim_ios on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var farengateLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 100
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider){
        let tempCels = sender.value
        celsiusLabel.text = "\(Int(tempCels))ºC"
        farengateLabel.text = "\(Int(round(tempCels*9/5 + 32))) ºF"

    }
    

}

