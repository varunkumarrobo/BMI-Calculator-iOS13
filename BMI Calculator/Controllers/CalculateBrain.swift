//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Varun Kumar on 12/04/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
//    var bmiValue = "0.0"
    var bmi : BMI?
    
    mutating func calculateBmi(height : Float, weight : Float)  {
         let  bmiValue = Float(weight) / Float(pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, advise: "Eat More Pies", colour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, advise: "Fit as a fiddle!", colour: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) )
        } else {
            bmi = BMI(bmiValue: bmiValue, advise: "Eat less Pies", colour: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) )
        }
         
    }
    
    func getBmiValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.bmiValue ?? 0.0)
        return bmiValue
    }
    
    func getBmiColor() -> UIColor {
        let bmiColor = bmi?.colour ?? .orange
        return bmiColor
    }
    
    func getBmiAdvise() -> String {
        let bmiAdvise = bmi?.advise ?? "Do Calculate Your BMI First!."
        return bmiAdvise
    }
    
}
