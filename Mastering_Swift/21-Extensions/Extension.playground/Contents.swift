import UIKit
/*:
 # Extension
 ![syntax](extension.png)
 ![syntax2](extension-protocol.png)
 */
// extension에 프로토콜할 수 있음
struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size {
    var area: Double {
        return width * height
    }
}

let s = Size()
s.width
s.height
s.area

// Equatable 프로토콜을 차용
// Extension을 통해 프로토콜에 기능을 추가할 수 있다.
extension Size: Equatable {
    public static func == (lhs: Size, rhs: Size) -> Bool {
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
}
