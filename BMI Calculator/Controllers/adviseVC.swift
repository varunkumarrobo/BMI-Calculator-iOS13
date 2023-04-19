//
//  adviseVC.swift
//  BMI Calculator
//
//  Created by Varun Kumar on 12/04/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class AdviceVC: UIViewController {

    var adviseText : String?
    var adviseColor : UIColor?
    
    @IBOutlet var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        adviseLabel.text = adviseText
        view.backgroundColor = adviseColor
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
