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
    
    var bmiCalculator = BmiCalculator()
    
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
        let height = heightSlider.value
        let weight = weightSlider.value
       
        bmiCalculator.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinatonVC = segue.destination as! ResultVC //downcasting
            destinatonVC.bmiValue = bmiCalculator.getBMIValue()
            destinatonVC.advice = bmiCalculator.getAdvice()
            destinatonVC.color = bmiCalculator.getColor()
        }
    }
    
}

