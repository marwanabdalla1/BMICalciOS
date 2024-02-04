//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Marwan on 8/6/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiTOdec = String(format: "%.f", bmi?.value ?? 0.0)
        return bmiTOdec
    }
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice"
       
    }
    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18 {
           bmi =  BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue )
        }
        else if bmiValue < 24.9 {
            bmi =    BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green )
            print(bmi?.advice)

        }
        else {
            bmi =  BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red )

        }
    }
    
}
