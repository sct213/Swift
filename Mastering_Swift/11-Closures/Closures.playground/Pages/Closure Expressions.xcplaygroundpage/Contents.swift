import UIKit

/*:
 # Closures
 ![closure-expr](closure-expr.png)
 ![closure](closure.png)
 */
// 함수와 다른 점 Check
// glbal Scope에서 단독으로 사용 불가
//{ print("Hello, Swift") }
let c = { print("Hello, Swift") } // () -> ()
c() // Hello, Swift

// 클로저에서는 ArgumentLabel을 사용하지 않음
let c2 = { (str: String) -> String in
    return "Hello, \(str)"
}

// ArgumentLabel을 사용하지 않는다.
let result = c2("Closure")
print(result)


typealias SimpleStringClosure = (String) -> String

func perform(closure: SimpleStringClosure) {
    print(closure("ios"))
}

perform(closure: c2)

// 인자에 직접 작성한 클로저 ( 인라인 클로저 )
perform(closure: { (str: String) -> String in
    return "Hi, \(str)"
})









//: [Next](@next)
