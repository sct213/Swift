import UIKit

/*:
 # Upcasting & Download Casting
 */

class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("⬛️ \(width) x \(height)")
    }
}

class Square: Rectangle {
   
}

let f = Figure(name: "Unknown")
f.name

let r = Rectangle(name: "Rect")
r.width
r.height
r.draw()

// Upcasting
let s: Figure = Square(name: "Square")
//s.width
//s.height
s.name

// as = TypeCasting 연산자
let downcastedS = s as! Rectangle
downcastedS.name
downcastedS.width
downcastedS.height

// square보다 Rhombus가 아래이므로 오류.
class Rhombus: Square {
    var angle = 45.0
}
//let dr = s as! Rhombus

