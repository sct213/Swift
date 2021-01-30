import UIKit

/*:
 # In-Out Parameters
 */
var num1 = 12
var num2 = 34

/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */
// inout 입출력 파라미터
// inout은 기본값 선언 불가 (ex: a: inout Int = 10) Error
func swapNumber(_ a: inout Int, with b: inout Int) {
    let tmp = a
    a = b
    b = tmp
    // 파라미터로 값을 전달(copy out)
}
num1
num2

// inout파라미터로 전달 시 &를 붙여야 함
// 인자의 값을 복사하여 전달 (copy in)
swapNumber(&num1, with: &num2)

// 동일한 변수 전달 불가
// swapNumber(&num1, with: &num1)

// 함수 내부에서 값을 변경할 수 있게 된다.

let a = 12
let b = 34

// 상수는 copy out이 불가함으로 오류
//swap(&a, with: &b)

// 리터럴은 전달 불가
//swap(&12, with: &34)

// inout은 가변 선언 불가
//func sum(of nums: inout Int...)
