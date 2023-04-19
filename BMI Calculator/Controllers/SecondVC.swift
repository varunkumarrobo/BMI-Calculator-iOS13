//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by Varun Kumar on 12/04/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var bmiValue : String?
    var bmiColor : UIColor?
    
    @IBOutlet var bmiLabel: UILabel!
    
    override func viewDidLoad() {
 
        bmiLabel.text = bmiValue
        view.backgroundColor = bmiColor
        
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
 
}




//        super.viewDidLoad()
//
//        view.backgroundColor = .blue
//
//        let label = UILabel()
//        label.text = bmiValue
//        label.frame = CGRect(x: 20, y: 60, width: 100, height: 60)
//        view.addSubview(label)
