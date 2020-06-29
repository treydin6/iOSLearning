//
//  ViewController.swift
//  RandomDiceRoller
//
//  Created by Treydin Winward on 6/28/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
//    var leftDiceRandomIndex = 1//Int.random(in: 0 ..< 5)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setRandomImage()
    }

    @IBAction func rollDiceButton(_ sender: UIButton) {
        setRandomImage()
    }
    
    func setRandomImage() -> Void {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        leftDiceImageView.image = diceArray[Int.random(in: 0 ..< diceArray.count )]
        rightDiceImageView.image = diceArray[Int.random(in: 0 ..< diceArray.count )]
        print(diceArray.count)
    }
    
}

