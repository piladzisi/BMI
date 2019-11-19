//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Old Mac on 11/17/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    let vc = MainVC()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue ?? "0.0"
        adviceLabel.text = advice ?? "Error"
        view.backgroundColor = color ?? .yellow
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
