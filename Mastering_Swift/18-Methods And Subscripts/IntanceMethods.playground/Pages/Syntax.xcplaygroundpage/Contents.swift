import UIKit
/*:
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */

class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
        // 형식을 붙여야 접근 가능
        Sample.sharedData
    }
    func call() {
        doSomething()
    }
}

let a = Sample()
a.data
a.doSomething()

class Size {
    var width = 0.0
    var height = 0.0
    
    func enlarge() {
        width += 1.0
        height += 1.0
    }
}

let s = Size()
s.enlarge()


struct Size1 {
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
}

// 값형식에서 속성을 변경할 때는 mutating을 붙여야 함

// 변수로 선언하였기에 값을 변경할 수 있지만, 
var s1 = Size1()

s1.enlarge()










