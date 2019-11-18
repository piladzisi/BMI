//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Old Mac on 11/17/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    //let bmi = ViewController.bmi.value
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
    }
   

}
