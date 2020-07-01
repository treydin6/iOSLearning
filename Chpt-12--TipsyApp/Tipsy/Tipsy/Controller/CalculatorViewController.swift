//
//  ViewController.swift
//  Tipsy
//
//  Created by Treydin Winward on 7/1/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctTipButton: UIButton!
    @IBOutlet weak var tenPctTipButton: UIButton!
    @IBOutlet weak var twentyPctTipButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var tipPercent = 1.0
    var amountOfPeople = 2
    var billTotal = 0.0
    var billSplit = 0.0
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctTipButton.isSelected = false
        tenPctTipButton.isSelected = false
        twentyPctTipButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tipPercent = buttonTitleAsANumber / 100
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f" , sender.value)
        amountOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tipPercent) / Double(amountOfPeople)
            let resultTo2DecimalPlaces = String(format: "%.2f", result)
            billSplit = Double(resultTo2DecimalPlaces)!
            performSegue(withIdentifier: "toTipResultPage", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTipResultPage" {
            print("in toTipResultPage")
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.billSplitTotal = billSplit
            destinationVC.peopleTotal = amountOfPeople
            destinationVC.tipPercent = String(tipPercent)
            
            
        
        }
    }
}

