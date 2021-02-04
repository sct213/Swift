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
 # Property Observer
 ![property-observer](property-observer.png)
 */
// 값을 변경하기 직전에 호출한다.
// willSet의 (name)이 지정되지 않으면 newValue로 파라미터를 사용
// didSet의 (name)이 지정되지 않으면 oldValue로 사용

// 기능: 바뀌는 값과 기존의 값을 출력하기 편리함
class Size {
   var width = 0.0
}


var name: String = "Default" {
    
    willSet {
        guard newValue != name  else {
            print("기존의 값과 일치합니다.")
            return
        }
        print(name, "=>", newValue)
    }
    didSet {
        guard oldValue != name  else {
            print("기존의 값과 일치합니다.")
            return
        }
        print(oldValue, "->", name)
    }
}

struct Point {
    var x: Int = 0
    var y: Int = 0
    
    var oppositePoint: Point {
        get {
            return Point(x: -x, y: -y)
        }
        set(value) {
            x = -value.x
            y = -value.y
        }
    }
}

var test: Point = Point(x: 1, y: 2)
print(test)

// 음수를 파라미터로 받았으나, set에 대입되어 양수로 출력됨
test.oppositePoint = Point(x: -3, y: -4)
print(test)

