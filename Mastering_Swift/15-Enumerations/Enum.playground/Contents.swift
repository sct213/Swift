/*:
 # Enumerations
 ![enum](enum.png)
 */
// 독립적인 자료형이다.
// 사용 이유: 가독성, 안전성

let left = 0
let center = 1
let right = 2

var alignment = center
/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */
enum Alignment {
    case left
    case right
    case center
}
Alignment.center

// 열거형 case는 독립적인 값.
var textAlignment = Alignment.center

// 앞에서 열거형을 저장했기에, 열거형 이름 생략 가능
textAlignment = .left

// 열거형 비교
if textAlignment == .center {
    
}

switch textAlignment {
    case .left:
        print("left")
    case .right:
        print("right")
    case .center:
        print("center")
}















