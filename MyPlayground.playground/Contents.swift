import UIKit

func greeting(str: String, times: Int) -> Int {
    for _ in 1...times {
        print("hello \(str)")

    }
    return 0
}
//greeting(str: "worldd", times: 6)

func calc() -> Void {
    let score = Int.random(in: 0...100)
    switch (score) {
        case 80...100:
            print("> 80", score)
        case 40...79:
            print("40--79", score)
        case 0...39:
            print("<40", score)
        default:
            print("err")
    }
}

for _ in 0...10{
    //calc()
}


struct Town {
    let name = "Utah"
    var citizens = ["Trey", "Mark"]
    var resources = ["Grain": 30, "salt": 5, "wool": 40]
    
    func fortify() {
        print("\(citizens[0]) defense has increased")
    }
}

var myTown = Town()

print(myTown.citizens)
print(myTown.citizens[1])
//print(myTown.resources["Grain"])

myTown.citizens.append("TreyWay")
print(myTown.citizens)
myTown.fortify()

struct Town2 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, people: [String], stats: [String: Int]) {
        self.name = name
        self.citizens = people
        self.resources = stats
    }
    
    func fortify() {
        print("defense has increased")
    }
}

var anotherTown = Town2(name: "Zootopia", people: ["Tom Hanks"], stats: ["Coconuts": 40])
print(anotherTown.name)
var ghostTown = Town2(name: "st g", people: [], stats: ["tumbleWeed": 1000])
print(ghostTown.citizens)


/*
    optionals
 */
let myOptional: String?
myOptional = "fdg"
if let safeOptional = myOptional {
    print(safeOptional)
} else {
    print("nil")
}

let anotherOptional: String?
//anotherOptional = "ffdshf"
anotherOptional = nil
let text: String = anotherOptional ?? "I am the default"
print(text)

struct AnOptional {
    var property = 123
    func method() {
        print("i am method")
    }
}

let anOptional: AnOptional?
anOptional = anOptional()
print(anOptional!.property)
