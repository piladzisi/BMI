//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Old Mac on 11/17/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BmiCalculator {
    
    var bmi: BMI?

    mutating func calculateBmi(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Have you tried Keto?", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmitoString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmitoString
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}

