//
//  main.swift
//  Classes
//
//  Created by Treydin Winward on 7/1/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import Foundation


class Bird {
    //MARK: properties
    var isFemale = true
    
    // MARK: Functions
    func fly() {
        print("lets fly")
    }
    
    func layEgg() {
        if isFemale {
            print("about to lay egg")
        }
    }
}

class Eagle: Bird {
    
    func soar() {
        print("we are soaring")
    }
}

class Penguin: Bird {
    func swim() {
        print("peng. swimmmm")
    }
}

struct FlyingMusem {
    func flyingDemo(flyingObject: Bird) {
        flyingObject.fly()
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
myPenguin.fly()

let musem = FlyingMusem()

