import UIKit

func greeting(str: String, times: Int) -> Int {
    for _ in 1...times {
        print("hello \(str)")

    }
    return 0
}
greeting(str: "worldd", times: 6)
