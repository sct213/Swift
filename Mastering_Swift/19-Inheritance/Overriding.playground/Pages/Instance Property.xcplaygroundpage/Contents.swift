import UIKit

/*:
 # Overriding
 */
// 상위 구현을 완전히 무시함.

class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

class Circle: Figure {
   var radius = 0.0
    
    var diameter: Double {
        return radius * 2
    }
    
    // override로 사용
    override func draw() {
        super.draw()
       print("Emoji")
    }
}

let c = Circle(name: "Circle")
c.draw()

// super키워드를 통해 사용가능

class Oval: Circle {
    
    // 읽기 전용 속성을 읽기 쓰기로 변경
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        }
    }
    // 속성은 override가 다르다.
    // 읽기와 쓰기가 모두 가능한 속성을 읽기만으로 만들 수 없음
    override var radius: Double {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
}
// 오버라이딩은 금지되었지만, 접근은 가능하다.
let o = Oval(name: "Oval")
o.radius
o.draw()
// 오버라이딩 구현 패턴
// 메소드 오버라이딩
// 속성 오버라이딩
// 멤버 오버라이딩 금지 문법









