//
//  BmiCalculator.swift
//  BMI Calculator
//
//  Created by Old Mac on 11/17/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation

struct BmiCalculator {
    let weight: Float
    let height: Float
     
    init(weight: Float, height: Float) {
          self.weight = weight
          self.height = height
      }
    
    func calculateBmi() -> Float{
    let  bmi = weight / (height * height)
        return bmi
    }
}

