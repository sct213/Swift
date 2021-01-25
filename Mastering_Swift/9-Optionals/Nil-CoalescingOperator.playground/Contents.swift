import UIKit

/*:
 # Nil-Coalescing Operator
 */
var msg = ""
var input: String? = "Swift"

if let inputName = input {
    msg = "Hello, " + inputName
} else {
    msg = "Hello, Stranger"
}

print(msg)

// 위 코드와 같음
var str = "Hello, " + (input != nil ? input! : "Stranger")
print(str)
/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/
// 1. input이 값을 return하는지 확인
// 2. 오른쪽을 평가하여 return

// 왼쪽 피연산자에 값이 있다면 오른쪽을 평가하지 않음
// 반대로 왼쪽 피연산자에 값이 없다면 오른쪽을 평가함
str = "Hello, " + (input ?? "Stranger")
print(str)
