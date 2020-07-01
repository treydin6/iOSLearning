//
//  Enemy.swift
//  Classes
//
//  Created by Treydin Winward on 6/30/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import Foundation

class Enemy {
    var health = 100
    var attackStrength = 10
    
    
    func move() -> Void {
        print("Walk")
    }
    
    func attack() -> Void {
        print("Land a hit and does \(attackStrength) damage")
    }
}


