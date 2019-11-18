//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var height = Float(0)
    var weight = Float(0)
    var bmi = Float(0)

    
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
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        height = heightSlider.value
        weight = weightSlider.value
        let bmiCalculator = BmiCalculator(weight: weight, height: height)
        bmi = bmiCalculator.calculateBmi()
    
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinatonVC = segue.destination as! ResultVC //downcasting
            destinatonVC.bmiValue = bmi
        }
    }

}

