import UIKit

/*:
 # Initializer Requirements
 ![init](init.png)
 */

protocol Figure {
    var name: String { get }
    init(n: String)
}

struct Rectangle: Figure {
    var name: String
    
    init(n: String) {
        name = n
    }
}

// class에서는 상속과의 관계때문에, required를 붙여주어야 함
class Circle: Figure {
    var name: String
    
    required init(n: String) {
        name = n
    }
}

// final class는 더이상 상속되지 않기 때문에, required가 필요 없다.
final class Triangle: Figure {
    var name: String
    
    init(n: String) {
        name = n
    }
}

//// 이미 Figure를 Circle로 받았기 때문에 에러.
//class Oval: Circle, Figure {
//    
//}

class Oval: Circle {
    var prop: Int
    
    init() {
        prop = 0
        super.init(n: "Oval")
    }
    
    required convenience init(n: String) {
        self.init()
    }
}


protocol Grayscale {
    init(white: Double)
    // failable로 선언
//    init?(white: Double)
}
// 요구사항을 충족시키지 못함
//struct Color: Grayscale {
//    init?(white: Double) {
//
//    }
//}
struct Color: Grayscale {
    init!(white: Double) {

    }
}
