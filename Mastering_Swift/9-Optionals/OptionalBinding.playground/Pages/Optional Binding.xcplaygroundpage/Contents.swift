import Foundation

/*:
 # Optional Binding
 */
var num: Int? = nil
/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */
// 코드가 안전해진다.
// Crash를 대부분 피할 수 있음

// 이전 코드
if num != nil {
    print(num!)
} else {
    print("Empty")
}

// 바인딩 코드
// Optional 표현식이 반환하는 값을 n에 대입함
if let num = num {
    print(num)
} else {
    print("Empty")
}

var str: String? = "str"

guard let str = str else {
    fatalError()
}
str     // else 블럭 다음에서 사용 가능

// 변수로 바인딩
num = 123
if var num = num {
    num = 456
    print(num)
}
// 보통은 상수로 바인딩하나, 필요시 변수 가능

let a: Int? = 12
let b: String? = "str1241245"

// 둘 모두 성공해야 해당 코드가 실행됨
// ,로 분개시킴
// a, b의 바인딩이 성공하고, str의 길이가 5를 초과해야 이 구문이 실행됨
if let num = a, let str = b, str.count > 5 {
   print("a, b의 바인딩이 성공하고, str의 길이가 5를 초과해야 이 구문이 실행됨")
}

