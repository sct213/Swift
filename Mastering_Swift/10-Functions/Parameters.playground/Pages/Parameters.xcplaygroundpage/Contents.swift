import UIKit

/*:
 # Parameters
 ![define](define.png)
 ![param](param.png)
 */
// 파라미터는 함수에서 사용가능한 임시 "상수"이다.
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

add(1, 2)
/*:
 ## Calling Functions
 ![call](call.png)
 */
func minus(a: Int, b: Int) -> Int {
    return a + b
}

minus(a: 10, b: 20)
/*:
 ## Default Value
 ![defval](defval.png)
 */
func sayHello(to: String = "Stranger") {
    print("Hello, \(to)")
}

sayHello(to: "Swift")
sayHello()



















