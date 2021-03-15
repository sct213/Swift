import UIKit

/*:
 # self
 ![self](self.png)
 */

struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value: Double) {
//        width = value
//        height = value
        // class에선 사용 불가함
        self = Size(width: value, height: value)
    }
//    // self 생략 가능
//    func calcArea() -> Double {
//        return self.width * self.height
//    }
//
//    var area: Double {
//        return  calcArea()
//    }
//
//    // self.를 사용하여 속성과 파라미터를 구별함
//    func update(width: Double, height: Double) {
//        self.width = width
//        self.height = height
//    }
//
//    // self를 생략할 수 없는 경우
//    func doSomething() {
//        let c = { self.width * self.height }
//    }
//
//    static let unit = ""
//
//    // 형식 메서드
//    static func doSomething() {
//        self.width
//        unit
//    }
}

// self는 현재 인스턴스에 접근하기 위해 사용
// 타입 멤버에서 사용하면 인스턴스가 아닌 형식 자체를 나타낸다.

















/*:
 # super
 ![super](super.png)
 */









