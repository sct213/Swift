import UIKit

// String Interpolation(Swift5+)

struct Size {
    var width = 0.0
    var height = 0.0
}

let s = Size(width: 1.2, height: 3.4)
print("\(s)")

//extension Size: CustomStringConvertible {
//    var description: String {
//        return "\(width) x \(height)"
//    }
//}

// 새로 도입된 방법
// mutating
extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Size) {
        appendInterpolation("\(value.width) x \(value.height)")
    }
    
    mutating func appendInterpolation(_ value: Size, style: NumberFormatter.Style) {
        let formatter = NumberFormatter()
        formatter.numberStyle = style
        
        if let width =  formatter.string(for: value.width), let height = formatter.string(for: value.height) {
            appendInterpolation("\(width) x \(height)")
        } else {
            appendInterpolation("\(value.width) x \(value.height)")
        }
    }
}

print("\(s)")
print("\(s, style: .spellOut)")


/*:
 # String Indices
 */


















