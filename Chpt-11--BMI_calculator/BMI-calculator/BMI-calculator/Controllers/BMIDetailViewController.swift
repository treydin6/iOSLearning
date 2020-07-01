//
//  BMIDetailViewController.swift
//  BMI-calculator
//
//  Created by Treydin Winward on 6/30/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import UIKit

class BMIDetailViewController: UIViewController {
    
    var bmi: String?
    var advice: String?
    var color: UIColor?
    

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
