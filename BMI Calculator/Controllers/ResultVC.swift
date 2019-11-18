//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Old Mac on 11/17/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var bmiValue: Float?
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let vc = MainVC()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        resultLabel.text = String(bmiValue!.rounded())
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
    
    

}
