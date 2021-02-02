import UIKit

/*:
 # Capturing Values
 */
var num = 0
let c = { print("check point #1: \(num)") }
c()

num += 1
print("check point #2: \(num)")

// 스위프트는 참조를 캡쳐함.
// 클로저 내부에서 값을 바꾸면 외부의 값도 변경됨.

// 정리 : 클로저 내부에서 외부의 값을 참조하여 값을 변경하면, 외부의 값이 변경됨























