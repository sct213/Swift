
//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */
var num: Int? = nil
print(num)

num = 123
print(num)

let n = 123
print(n)
/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */
// 강제로 Optional의 값을 출력하는 것
print(num)  // Wrapping

print(num!) // Unwrapping, 포장을 벗기고 값을 출력

num = nil
//print(num!) // Error가 발생함: Unexpectedly found nil while unwrapping an Optional value
// App에서 발생되면 Crash되고 그냥 종료됨

// Unwrapping할 값이 있다면 Print함으로써 에러를 방지함
if num != nil {
    print(num!)
}

num = 123
let before = num    // Optional 그대로 저장됨
let after = num!    // Optional 제거 후 저장됨

// 강제 추출은 잘 사용하지 않음
