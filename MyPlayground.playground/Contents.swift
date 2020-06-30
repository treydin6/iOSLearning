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
    calc()
}

