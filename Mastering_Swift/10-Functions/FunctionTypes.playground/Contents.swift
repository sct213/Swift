import UIKit

/*:
 # Function Types
 ![ftype](ftype.png)
 */

func sayHello() {
    print("Hello")
}

// 함수가 변수에 저장
let f1 = sayHello
f1

f1()

func printHello(with name: String) {
    print("Hello, \(name)")
}

// 함수 표기법 및 타입 선언
let f2: (String) -> () = printHello(with:)

// 저장할때 ArgumentLabel은 전달되지 않음
let f3 = printHello(with:)

// 상수에 저장한 함수를 호출할 때는 argumentLabel을 쓰지 않음
f3("world")

func add(a: Int, b: Int) -> Int {
    return a + b
}

var f4: (Int, Int) -> Int = add(a:b:)

f4(1, 2)

func add(_ a: Int, with b: Int) -> Int {
    return a + b
}

f4 = add(_:with:)

func swapNumbers(_ a: inout Int, _ b: inout Int) {
    
}

let f5 = swapNumbers(_:_:)

func sum(of numbers: Int...) {
    
}

let f6 = sum(of:)


func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

typealias ArithmeticFunction = (Int, Int) -> Int

// 1번째 ->는 return
// 나머지는 형식에 포함된 ->
// 코드의 가독성을 위해 typealias.
func selectFunction(from op: String) -> ArithmeticFunction? {
    switch op {
    case "+":
        return add(_:_:)
    case "*":
        return multiply(_:_:)
    case "-":
        return subtract(_:_:)
    case "/":
        return divide(_:_:)
    default:
        return nil
    }
}

// add함수가 실행됨
let af = selectFunction(from: "+")
af?(1, 2)

selectFunction(from: "*")?(12, 34)













