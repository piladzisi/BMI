//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = String("\(height)m")
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = sender.value.rounded() 
        weightLabel.text = String("\(weight)kg")
    }
    
    func updateUI() {
      
    }

}

