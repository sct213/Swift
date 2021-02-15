import Foundation

/*:
 # Required Initializer
 ![required](required.png)
 */

class Figure {
   var name: String

   required init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
    
    init() {
        width = 0.0
        height = 0.0
        super.init(name: "unknown")
    }
    
    required init(name: String) {
        width = 0.0
        height = 0.0
        super.init(name: name)
    }
}

// required: 필수의
// 다시 동일한 init을 강제하기 위해 required를 사용
