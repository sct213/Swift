import UIKit
/*:
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */
class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    // static이 있는 프로퍼티는 타입의 이름을 꼭 명시해야 함
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    // static func는 static 프로퍼티에 직접 접근이 가능
    // static func는 오버라이딩 불가
    // class func는 오버라이딩 가능
    class func printPi() {
        print(pi)
    }
}

Circle.printPi()

class StrokeCircle: Circle {
    // static func는 오버라이드 불가
    override static func printPi() {
        print(pi)
    }
}
















