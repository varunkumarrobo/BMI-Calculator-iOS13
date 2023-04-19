//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculateBrain()
    
    @IBOutlet var heightValueText: UILabel!
    @IBOutlet var weightValueText: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        print(sender.value)
        
        let height = String(format: "%.2f", sender.value)
        
        heightValueText.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        print(sender.value)
        
        let weight = String(format: "%.0f", sender.value)
        
        weightValueText.text = "\(weight)kg"

    }
    
    
    @IBAction func calculatorButton(_ sender: Any) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
       calculatorBrain.calculateBmi(height: height, weight: weight)
       
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    @IBAction func adviseButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToAdviseVc", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondVC
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.bmiColor = calculatorBrain.getBmiColor()
        }  else if segue.identifier == "goToAdviseVc" {
            let destinationVc = segue.destination as! AdviceVC
            destinationVc.adviceText = calculatorBrain.getBmiAdvise()
            destinationVc.adviceColor = calculatorBrain.getBmiColor()
        }
    }
    
}




//        let secondVc = SecondVC()
//        self.present(secondVc, animated: true, completion: nil)
