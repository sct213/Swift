import UIKit

/*:
 # Nested Types
 ![nested-type](nested-type.png)
 */
// 형식 내부에 선언된 형식
class One {
    struct Two {
        enum Three {
            case a
            
            class Four {
                
            }
        }
    }
    // One 생략 가능
    var a = .Two()
}

// One에 Two가 속해 있으므로. 체인형식으로 작성
let two: One.Two = One.Two()














