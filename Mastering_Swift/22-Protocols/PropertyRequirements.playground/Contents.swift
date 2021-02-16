import UIKit

/*:
 # Property Requirements
 ![property](property.png)
 */
protocol Figure {
    // get : 일기, set : 쓰기
    var name: String { get set }
}

struct Rectangle: Figure {
    var name = "Rect"
}

struct Triangle: Figure {
    var name = "Triangle"
}

struct Circle: Figure {
    // 연산 프로퍼티
    var name: String {
        get {
            return "Circle"
        }
        set {
            
        }
    }
}






