//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Treydin Winward on 7/1/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var billSplitTotal = 0.0
    var peopleTotal = 2
    var tipPercent = ""
    var tipToString = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        switch tipPercent {
        case "0.0":
            tipToString = "0%"
        case "0.1":
            tipToString = "10%"
        case "0.2":
            tipToString = "20%"
        default:
            tipToString = "0%"
        }

        totalLabel.text = String(billSplitTotal)
        settingsLabel.text = "Split between \(peopleTotal) people, with \(tipToString) tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
