import UIKit

/*:
 # Tuple Decomposition
 ![decomposition](decomposition.png)
 */
// 튜플을 괄호가 핵심
let data = ("<html>", 200, "OK", 12.34)

//// 번거로운 코딩
//let body = data.0
//let code = data.1
//let message = data.2
//let size = data.3

// Decomposition
// 단일 값으로 분해되어 순서대로 저장된다.
//let (body, code, message, size) = data

// UnderScore(_)문자로 받지 않을 값을 정할 수 있다.
let (body, code, message, _) = data
















