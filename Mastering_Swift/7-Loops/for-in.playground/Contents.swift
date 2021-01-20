//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit
/*:
 # For-In Loops
 */

print("Hello")










/*:
 ## Syntax
 ![syntax](syntax-range.png)
 */
// loopConstant: 반복 상수
for _ in 1 ... 10 {
    print("hello")
}
// Wildcard Pattern : _ (UnderScore)문자는 생략을 의미함

let power = 10
var result = 1


// 코드의 가독성이 _ 로 인해 높아짐. (변수를 사용하지 않는다는 의미)
for _ in 1 ... power {
    // 복합 할당 연산자
    result *= 2
}
result

// stride함수(from: 시작, to: 종료, by: 증감식)
for num in stride(from: 0, to: 10, by: 2) {
    print(num)
}



/*:
 ## Syntax
 ![syntax](syntax-collection.png)
 */
// Collection도 반복 가능(Collection을 열거한다)
let list = ["Apple", "Banana", "Orange"]
type(of: list)
// list를 열거하면서 순서대로 fruit에 전달함(String)
for fruit in list {
    type(of: fruit)
    print(fruit)
}

// Swift 구구단
for i in 2 ... 9 {
    print(" \(i)단 출력")
    for j in 1 ... 9 {
       print("\(i) * \(j) = \(i * j)")
    }
}






