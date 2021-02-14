import UIKit
/*:
 # Inheritance
 ![inheritance](inheritance.png)
 */
// 다중 상속은 지원하지 않음
// subClass는 superClass로 부터 멤버를 상속받는다.
class Figure {
    var name = "Unknown"

    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print(" draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0
}

let c = Circle(name: "Circle")
c.radius
c.name
c.draw()
/*:
 ## final class
 ![final class](final-class.png)
 */
// final는 상속이 금지된 Class
// 상속을 받을 순 있으나, 줄 수는 없다.
final class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
}

class Squre: Rectangle {
    
}





