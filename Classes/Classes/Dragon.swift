//
//  Dragon.swift
//  Classes
//
//  Created by Treydin Winward on 6/30/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import Foundation

class Dragon: Enemy {
    var windSpan = 2
    
    func speak(speech: String) -> Void {
        print("hdshflj \(speech)")
    }
    
    override func move() {
        print("we are flying and overriding and walking")
    }
    
    override func attack() {
        super.attack()
        print("after super attack")
    }
}

